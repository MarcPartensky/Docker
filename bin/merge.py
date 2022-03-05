#!/usr/bin/env python

import sys
import yaml
import collections.abc


def update(d, u):
    for k, v in u.items():
        if isinstance(v, collections.abc.Mapping):
            d[k] = update(d.get(k, {}), v)
        else:
            d[k] = v
    return d


d = {}
for file in sys.argv[1:]:
    with open(file, "r") as stream:
        di = yaml.safe_load(stream)
        print(di)
        d = update(d, di)

print(yaml.safe_dump(d))
