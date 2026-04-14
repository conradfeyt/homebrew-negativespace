cask "negativ_" do
  version "0.1.0-alpha"
  sha256 "0f06de157e70e148858de704198dcf4c865a8d28c9d5d4a49041f3602da24c22"

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
