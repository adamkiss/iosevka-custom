# Iosevka Custom

🛑 This has been superseded by adamkiss/iosevka-custom - automated build using Github Actions. Use that, if you want.

Script for generation of custom style of [Iosevka][iosevka-repo] Font. Because `brew cask install font-iosevka` works well, but the font has so many options—it's just too hard to not want customised version.

It will do a shallow clone of [Official Iosevka Repository][iosevka-repo], generate font files with [my preferred options](#font-options), and copy generated files to `~/Library/fonts/iosevka-ak`. Clone and copy steps can be commented out though, which I found particularly useful when trying out options :)

---

## Usage

```
./run.sh
```

## Font options

Read [official documentation of custom styles][custom-styles].

- Based on [stylistic set ss09][ss09]
- sharpened (zshaped/cross) letters: <kbd>i</kbd>, <kbd>l</kbd>, <kbd>t</kbd>
- softened <kbd>y</kbd>
- top symbols <kbd>~</kbd>, <kbd>^</kbd>, <kbd>*</kbd> in the middle
- more interesting versions of various alternatives

[iosevka-repo]: https://github.com/be5invis/Iosevka
[ss09]: https://github.com/be5invis/Iosevka#weights-variants-and-opentype-features
[custom-styles]: https://github.com/be5invis/Iosevka#build-your-own-style
