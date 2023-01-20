#!/usr/bin/python3

# gen.py: generate some code for our switch statement

types = [
"TYPE_BOOL",
"TYPE_UNSIGNED_CHAR", "TYPE_UNSIGNED_SHORT",
"TYPE_UNSIGNED_INT", "TYPE_UNSIGNED_LONG",
"TYPE_UNSIGNED_LONG_LONG",

"TYPE_CHAR", "TYPE_SHORT", "TYPE_INT",
"TYPE_LONG", "TYPE_LONG_LONG", "TYPE_FLOAT",

"TYPE_DOUBLE", "TYPE_LONG_DOUBLE",
"TYPE_FLOAT_COMPLEX", "TYPE_DOUBLE_COMPLEX",
"TYPE_LONG_DOUBLE_COMPLEX"
]


def get_useful_parts(types):
    """Return a list of useful parts.
    Basically strip the TYPE prefix and remove underscores.
    """
    parts = [t.lower().split('_') for t in types]
    useful_parts = [p[1:len(p)] for p in parts]
    return useful_parts


def print_case_statement(type, part):
    """Print a case statement."""
    print(f"\tcase {type}:")
    s = ' '.join(map(str, part))
    print(f'\t\tprintf("\t{s}: %ld bytes\\n", sizeof({s}));')
    print("\t\tbreak;")

def print_switch_statement(types, parts):
    """Roll through the types parts,
    Print a switch statement made with the contents.
    """
    assert len(types) == len(parts), "Error, should be equal"
    tp = zip(types, parts)
    print("switch (t) {")
    for t, p in tp:
          print_case_statement(t, p)
    print('\tdefault: printf("unknown\\n");')
    print('}')

if __name__ == '__main__':
          uparts = get_useful_parts(types)
          print_switch_statement(types, uparts)
    
          



    
