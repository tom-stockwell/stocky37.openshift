from __future__ import (absolute_import, division, print_function)
__metaclass__ = type


def add_resource_defaults(files, orig):
    for file in files:
        resource = {
            'src': file
        }
        for key in orig.keys():
            if key not in resource:
                resource[key] = orig[key]
        yield resource


class FilterModule(object):
    @staticmethod
    def filters():
        return {
            'add_resource_defaults': add_resource_defaults
        }
