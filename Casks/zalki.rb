cask "zalki" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.0-rc.3"
  sha256 arm:   "6b95c0ee3c41159dde0fbe50bfbdf213d99b20e5ed3a55c2ca09d9e39fd5c2b9",
         intel: "3754ac43be9936ffc4047721b2e705287232c87ba81098b0554bb2c0c29ea7cd"

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
