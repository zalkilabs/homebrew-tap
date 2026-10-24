# Zalki Homebrew tap

Signed, notarized macOS binaries for [Zalki](https://github.com/zalkilabs/zalki).
The current prerelease is `0.1.0-rc.3`.

```sh
brew install zalkilabs/tap/zalki
```

The cask installs the binary and shell completions without Go or compiler tools.
See Zalki's README for client configuration and development builds.

For updates, copy the release's verified `zalki.rb` asset to `Casks/zalki.rb`.
CI checks style, both architecture definitions, anonymous installation, and uninstall.

[Apache-2.0](LICENSE).
