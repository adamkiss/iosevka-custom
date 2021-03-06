#!/usr/bin/env sh

set -eux

family_name='Iosevka AK Slab'
weights='book' #testing onluy one weight
# weights=''
design='stress-fw slab ligset-coq'
upright="ss09 \
v-i-zshaped v-l-zshaped v-m-shortleg v-q-straight v-t-cross v-y-curly \
v-zero-slashed v-three-flattop \
v-tilde-low v-asterisk-low v-paragraph-low v-caret-low v-underscore-hight \
v-brace-straight v-dollar-through v-numbersign-slanted \
v-at-long v-eszet-traditional"
italic="ss09 \
v-a-doublestorey v-f-tailed v-g-doublestorey \
v-i-zshaped v-l-zshaped v-m-shortleg v-t-cross v-y-curly \
v-zero-slashed v-three-flattop \
v-tilde-low v-asterisk-low v-paragraph-low v-caret-low v-underscore-hight \
v-brace-straight v-dollar-through v-numbersign-slanted \
v-at-long v-eszet-traditional"

cd iosevka-repo
make custom-config set='ak-slab' family="$family_name" weights="$weights" \
	design="$design" upright="$upright" italic="$italic"
make custom set='ak-slab'
