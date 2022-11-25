// swift-tools-version:5.4
import PackageDescription

let checksum = "06a1f660d8bfbc14cbcc057279c066a1bb5d46979a3d33660d2ca06baa517298"
let version = "51.8.3"
let url = "https://github.com/mozilla/glean/releases/download/v\(version)/Glean.xcframework.zip"

let package = Package(
    name: "Glean",
    platforms: [.iOS(.v11)],
    products: [
        .library(name: "Glean", targets: ["Glean"]),
    ],
    targets: [
        .binaryTarget(name: "Glean", url: url, checksum: checksum),
    ]
)
