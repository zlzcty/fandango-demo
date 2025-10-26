# %%
# Fix path: Basically make identical to running `py -m <../../this script>`
# Allows us to import stuff the same way as if this was a module, and also run
# VSC code cells.
import sys
from pathlib import Path

sys.path.append(str(object=Path(__file__).resolve().parents[1]))

# %%

# Introduce Fandango Python API

from fandango import Fandango

from constants import NAMEDB_SPEC

with open(NAMEDB_SPEC, "r") as spec:
    fan = Fandango(spec)

# %%

# You can fuzz. Notice how it creates a parse tree in our grammar

result = fan.fuzz(desired_solutions=1)[0]

# %%
from fandango import DerivationTree

# We can parse inputs


def traverse_tree(node: DerivationTree, depth=0):
    # If the node has children, traverse them recursively
    indent = "  " * depth  # indentation for readability
    print(f"{indent} {node.symbol.format_as_spec()}")

    for child in node.children:
        traverse_tree(child, depth + 1)


sample = "Lp Myei,55204"

for tree in fan.parse(sample):
    traverse_tree(tree)

# %%

# As expected, bad inputs throw an exception
# ??? But it doesn't

bad_sample = "6"
fan.parse(bad_sample)

# %%
