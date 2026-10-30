cask "inkvolt-pdf" do
  version "1.2.0"
  sha256 "0e24998c9817ba6d01e2743f4ec344fac77d2ac81612a91c3d13982b52041afa"

  url "https://github.com/gabandres/inkvolt/releases/download/pdf-mac-v#{version}/Inkvolt-PDF-#{version}.dmg"
  name "Inkvolt PDF"
  desc "Free, private PDF reader and editor: fill and sign, edit, redact, OCR, export"
  homepage "https://bermudezsystems.com/products/inkvolt/"

  livecheck do
    url "https://raw.githubusercontent.com/gabandres/inkvolt/appcast/pdf-mac/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Inkvolt PDF.app"

  zap trash: [
    "~/Library/Application Support/com.bermudezsystems.InkvoltPdf",
    "~/Library/Caches/com.bermudezsystems.InkvoltPdf",
    "~/Library/HTTPStorages/com.bermudezsystems.InkvoltPdf",
    "~/Library/Preferences/com.bermudezsystems.InkvoltPdf.plist",
    "~/Library/Saved Application State/com.bermudezsystems.InkvoltPdf.savedState",
  ]
end
