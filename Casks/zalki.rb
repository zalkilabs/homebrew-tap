cask "zalki" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.0-rc.6"
  sha256 arm:   "b50be810e01f93393265d24615d8cdef3206c18b860f58345b92e64bbc5f8ec7",
         intel: "4636648cf13259a9a7cd58cf9cb983a9787c99da25cc3c235308ab588c4ade60"

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
