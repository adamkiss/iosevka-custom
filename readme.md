# Iosevka Custom

Custom generator script for [Iosevka][iosevka-repo]. Because `brew cask install font-iosevka` works well, but the font has so many options—it's hard to not have customised version.

It will do a shallow clone of [Official Iosevka Repository][iosevka-repo], generate font files with [my preferred options](#font-options), and copy generated files to `~/Library/fonts/iosevka-ak`. Clone and copy steps can be skipped though, which I found particularly useful when trying out options :)

---

## Usage

```
# bash/zsh
./clone.sh && ./gen.sh && ./copy.sh

# fish
./clone.sh; and ./gen.sh; and ./copy.sh
```

## Font options

- Based on ss09
- sharpened (zshaped/cross) letters: <kbd>i</kbd>, <kbd>l</kbd>, <kbd>t</kbd>
- softened <kbd>y</kbd>
- top symbols <kbd>~</kbd>, <kbd>^</kbd>, <kbd>*</kbd> in the middle
- more interesting version of various alternatives

[iosevka-repo]: https://github.com/be5invis/Iosevka
