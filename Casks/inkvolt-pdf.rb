cask "inkvolt-pdf" do
  version "1.7.0"
  sha256 "df78e9bf0d6e4fb59b129f169bbc509124025601d4671f1caa3b0ae225d1d07a"

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
