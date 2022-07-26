// swift-tools-version:5.4
import PackageDescription

let checksum = "c7fb91ac315c8a657472b9b5861b907fccba13561989015cc46ffacbf0b65504"
let version = "51.0.1"
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
