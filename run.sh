#!/usr/bin/env sh

set -eu

. clone.sh

. gen-mono.sh
. gen-exp.sh
# . gen-slab.sh Will add later (?)

. copy.sh
