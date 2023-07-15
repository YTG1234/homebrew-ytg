cask "readarr" do
  arch arm: "arm64", intel: "x64"

  version "0.2.2.1943"
  sha256 arm:   "5c9d6c47fedfb7815af2d601b0fe9cec4db697d98f7757f86ef0cf24ad4a695e",
         intel: "9252d86be213758cc193de4f40fead639be8c8873522386ee859e47e3b5c875b"

  url "https://github.com/Readarr/Readarr/releases/download/v#{version}/Readarr.develop.#{version}.osx-app-core-#{arch}.zip",
      verified: "github.com/Readarr/Readarr"
  name "readarr"
  desc "Ebook collection manager for Usenet and BitTorrent users."
  homepage "https://readarr.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Readarr.app"

  zap trash: "~/.config/Readarr"
end
