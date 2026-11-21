cask "zalki" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.0-rc.8"
  sha256 arm:   "9155ce8e76a15dc9858065a225024af2c985498de577a15c4f0231e7f7e40bf4",
         intel: "4bd663a82bc22d1e04ea56874d9962dc916a02536d5914d5c9f2dff2d34553ad"

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
    Upgrade the binary and refresh integrations together with zalki upgrade.
    Run zalki uninstall --apply before brew uninstall zalki.
    Keep the same native config-directory environment when installing or upgrading integrations.
  EOS
end
