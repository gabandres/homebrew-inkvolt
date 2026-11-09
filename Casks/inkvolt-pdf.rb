cask "inkvolt-pdf" do
  version "1.10.0"
  sha256 "04d4130a389be134674287e3076e811d6da877c614ad3d0c3a50786db34f6326"

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
