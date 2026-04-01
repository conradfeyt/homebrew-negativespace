cask "negativ_" do
  version "0.1.0-alpha"
  sha256 "84a7554b0d864fe39b58ac48a7e8188c9b206376de40582b84fbfcb60dbe1647"

  url "https://github.com/conradfeyt/negative_space/releases/download/v#{version}/Negativ__0.1.0_aarch64.dmg"
  name "Negativ_"
  desc "macOS disk space visualiser — Voronoi, sunburst & galaxy views"
  homepage "https://github.com/conradfeyt/negative_space"

  app "Negativ_.app"

  postflight do
    system_command "/usr/bin/open", args: ["#{appdir}/Negativ_.app"]
  end

  zap trash: [
    "~/Documents/MyNegativeSpaceVault",
    "~/Library/Application Support/NegativeSpace",
  ]
end
