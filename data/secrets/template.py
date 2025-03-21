#!/usr/bin/env python

import os
import glob

url = "protocol://user:password@host:port/path"
ip = "0.0.0.0"
mail = "user.name@gmail.com"
user = "username"
password = "Passw0rd"
id = "myhiddenid"
key = "myhiddenkey"
token = "myhiddentoken"
secret = "myhiddensecret"

secret_keywords = {
    "password": password,
    "pass": password,
    "pwd": password,
    "pw": password,
    "id": id,
    "key": key,
    "token": token,
    "client": secret,
    "secret": secret,
    "url": url,
    "uri": url,
    "nc_db": url,
    "ip": ip,
    "vpn": ip,
    "mail": mail,
    "user": user,
}

def create_template_from_env_file(
    file_path,
):
    """
    Crée un fichier template à partir d'un fichier .env.
    Pour chaque variable, si la clé ne contient pas de mot sensible, la valeur est affichée en commentaire.
    Sinon, seule la clé est indiquée avec une valeur vide.
    """
    with open(file_path, 'r', encoding='utf-8') as f:
        lines = f.readlines()

    template_lines = []
    for line in lines:
        sensitive = False
        stripped = line.strip()

        # Conserver les lignes vides
        if not stripped:
            template_lines.append(line)
            continue

        # If it is a comment 
        if stripped.startswith("#"):

            # that doesn't contain sensitive information
            for keyword in secret_keywords.keys():
                if keyword in stripped.lower():
                    sensitive = True
                    break

            # then add it
            if not sensitive:
                template_lines.append(stripped)
            continue

        # If not a comment and doesnt contain "=" it is an error dont add the line but print it
        if "=" not in stripped:
            print("Error:", file_path, stripped)
            continue

        # Traiter les lignes de variables
        key, value = line.split("=", 1)
        key_part = key.strip()
        value_part = value.split('#')[0].strip()  # Ignorer les commentaires en fin de ligne
        
        # Vérifier si la clé contient un mot sensible
        for keyword in secret_keywords.keys():
            if keyword in key_part.lower():
                sensitive = True
                break

        if sensitive: 
            template_lines.append(f"{key_part}= # Example: {secret_keywords[keyword]}\n")
            continue

        # Si la clé ne contient pas de mot sensible
        if value_part:
            template_lines.append(f"{key_part}= # Example: {value_part}\n")
        else:
            template_lines.append(f"{key_part}=\n")

    # Générer le nom du fichier template
    base_name = os.path.basename(file_path)
    file_name = base_name.split('.')[0]
    template_file = f"{file_name}.template.env"
    
    with open(template_file, 'w', encoding='utf-8') as f:
        f.writelines(template_lines)
    
    print(f"{template_file}")

def main():
    # Rechercher tous les fichiers .env sauf les templates existants
    env_files = glob.glob("*.env")
    for file in env_files:
        if not file.endswith(".template.env"):
            create_template_from_env_file(file)

if __name__ == "__main__":
    main()
