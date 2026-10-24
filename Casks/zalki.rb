cask "zalki" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.0-rc.4"
  sha256 arm:   "2bfa6768810d5b18e2ee65b1270426a81acafbd43ca108b1c3fbd02ae03dd9ca",
         intel: "94416347cf368fb806aea1245dfc244a243dea848d256a6ee5354d5b5339881c"

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
