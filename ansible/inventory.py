#!/usr/bin/env python

import argparse
import json
import sys

argparser = argparse.ArgumentParser()
argparser.add_argument('--list', action='store_true', dest='list')

_inventory = {
    '_meta': {
        'hostvars': {
            'appserver': {
                'ansible_host': '35.205.137.47'
            },
            'dbserver': {
                'ansible_host': '35.240.122.220'
            }
        }
    },
    'app': {
        'hosts': ['appserver']
    },
    'db': {
        'hosts': ['dbserver']
    },
}

if __name__ == '__main__':
    args = argparser.parse_args()
    if args.list:
        json.dump(_inventory, fp=sys.stdout)
