cask "zalki" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.0-rc.7"
  sha256 arm:   "accbf7bd63d315c31e4b231019ea2c4569b552ee82eac0a0bf93dfe422c9952a",
         intel: "568234fade9883429cdfa1053bce8948602c212210b410d82c374e7991dd792f"

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
