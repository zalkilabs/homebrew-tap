cask "zalki" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.0-rc.5"
  sha256 arm:   "20fdcb599fbbefab2e046d8c5137de29e7edb7f327863fd9a715941adb633c5b",
         intel: "e478667307c5346eaed27418b675bebfed8a83fafcf2da2c26ba4fdc9be4732e"

  url "https://github.com/zalkilabs/zalki/releases/download/v#{version}/zalki_#{version}_darwin_#{arch}.tar.gz"
  name "Zalki"
  desc "Local messaging between AI coding sessions"
  homepage "https://github.com/zalkilabs/zalki"

  depends_on macos: :monterey

  binary "zalki"
  bash_completion "completions/zalki.bash"
  zsh_completion "completions/_zalki"
  fish_completion "completions/zalki.fish"

  caveats <<~EOS
    Configure integrations explicitly with zalki install --apply.
    Run zalki uninstall --apply before brew uninstall zalki.
    Keep the same native config-directory environment when installing or upgrading integrations.
  EOS
end
