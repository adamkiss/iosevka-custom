#!/usr/bin/env sh

set -eux

rm -fr ./iosevka-repo/dist/iosevka-custom

family_name='iosevka-ak'
#weights='book' #testing onluy one weight
weights=''
design='sans ligset-coq'
upright="ss09 \
v-i-zshaped v-l-zshaped v-m-shortleg v-q-straight v-t-cross v-y-curly \
v-zero-slashed v-three-flattop \
v-tilde-low v-asterisk-low v-paragraph-low v-caret-low v-underscore-hight \
v-brace-straight v-dollar-through v-numbersign-slanted \
v-at-long v-eszet-traditional"
italic="ss09 \
v-i-hooky v-l-hooky v-t-standard v-y-curly \
v-zero-slashed v-three-flattop \
v-tilde-low v-asterisk-low v-paragraph-low v-caret-low v-underscore-hight \
v-brace-straight v-dollar-through v-numbersign-slanted \
v-at-long v-eszet-traditional"

cd iosevka-repo
make custom-config set='ak' family="$family_name" \
	design="$design" upright="$upright" italic="$italic"
make custom set='ak'

cd .. && ln -fs ./iosevka-repo/dist/ dist
