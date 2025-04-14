#!/usr/bin/env python

import os
import re
import shutil
import fire
import yaml
from pathlib import Path

def update_env_paths(compose_path, original_base):
    """Modifie les chemins env_file vers .env"""
    try:
        with open(compose_path, 'r') as f:
            compose_data = yaml.safe_load(f) or {}
    except Exception as e:
        print(f"Erreur lecture YAML: {compose_path} - {str(e)}")
        return

    modified = False
    
    if 'services' in compose_data:
        for srv_name, srv_config in compose_data['services'].items():
            if 'env_file' in srv_config:
                new_env_files = []
                env_files = srv_config['env_file']
                env_files = [env_files] if isinstance(env_files, str) else env_files

                for ef in env_files:
                    file_name = os.path.basename(ef)
                    
                    if file_name.startswith(original_base):
                        new_path = ".env"
                        if file_name.endswith(".template.env"):
                            new_path = ".env.template"
                        
                        print(f"Modification: {ef} → {new_path}")
                        new_env_files.append(new_path)
                        modified = True
                    else:
                        new_env_files.append(ef)

                srv_config['env_file'] = new_env_files[0] if len(new_env_files) == 1 else new_env_files

    if modified:
        try:
            with open(compose_path, 'w') as f:
                yaml.dump(compose_data, f, sort_keys=False, default_flow_style=False)
            print(f"✓ Fichier mis à jour avec chemin relatif propre\n")
        except Exception as e:
            print(f"Erreur écriture YAML: {compose_path} - {str(e)}")

def process_compose_files(source, output_dir):
    """Convertit les fichiers Docker Compose avec mise à jour des chemins"""
    for filename in os.listdir(source):
        if filename.lower().endswith(('.yml', '.yaml')):
            src_path = os.path.join(source, filename)
            base_name = os.path.splitext(filename)[0]
            service_name = re.sub(r'\d+$', '', base_name)
            
            target_dir = os.path.join(output_dir, service_name)
            # os.makedirs(target_dir, exist_ok=True)
            
        dst_path = os.path.join(output_dir, filename, 'compose.yml')
        # shutil.copy2(src_path, dst_path)
            
        print(f"\n🔧 Traitement de {filename}:")
        update_env_paths(dst_path, filename)

def process_env_files(source, output_dir):
    """Convertit les fichiers d'environnement"""
    for filename in os.listdir(source):
        src_path = os.path.join(source, filename)
        target_file = None
        
        if filename.lower().endswith('.template.env'):
            base_name = filename[:-len('.template.env')]
            target_file = '.env.template'
        elif filename.lower().endswith('.env'):
            base_name = filename[:-len('.env')]
            target_file = '.env'
        else:
            continue
        
        service_name = re.sub(r'\d+$', '', base_name)
        target_dir = os.path.join(output_dir, service_name)
        os.makedirs(target_dir, exist_ok=True)
        
        dst_path = os.path.join(target_dir, target_file)
        shutil.copy2(src_path, dst_path)
        print(f"Conversion env: {filename} → {dst_path}")

def main(compose_source, env_source=None, output_dir=None):
    """
    Args:
        compose_source: Dossier source des compose files
        env_source: Dossier source des fichiers d'environnement (défaut: compose_source)
        output_dir: Dossier de sortie (défaut: compose_source)
    """
    output_dir = output_dir or compose_source
    Path(output_dir).mkdir(parents=True, exist_ok=True)
    
    print("⏳ Traitement des fichiers docker-compose...")
    process_compose_files(compose_source, output_dir)
    
    env_source = env_source or compose_source
    print("\n⏳ Traitement des fichiers d'environnement...")
    process_env_files(env_source, output_dir)

if __name__ == "__main__":
    fire.Fire(main)
