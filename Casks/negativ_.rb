cask "negativ_" do
  version "0.1.0-alpha"
  sha256 "6a1ca9e09e52fab197b283f5a218bfd62f51dbdd0fc3a8e8acad106d1cdd27bc"

  url "https://github.com/conradfeyt/negative_space/releases/download/v#{version}/Negativ__0.1.0_aarch64.dmg"
  name "Negativ_"
  desc "macOS disk space visualiser — Voronoi, sunburst & galaxy views"
  homepage "https://github.com/conradfeyt/negative_space"

  app "Negativ_.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "#{appdir}/Negativ_.app"]
    system_command "/usr/bin/open", args: ["#{appdir}/Negativ_.app"]
  end

  zap trash: [
    "~/Documents/MyNegativeSpaceVault",
    "~/Library/Application Support/NegativeSpace",
  ]
end
