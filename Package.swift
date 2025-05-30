// swift-tools-version:5.5
import PackageDescription

let checksum = "5af1fe1ec4e951f7805cc1458d2c7a128f85ce2f16036031b92fa170b77959ce"
let version = "64.4.0"
let url = "https://github.com/mozilla/glean/releases/download/v\(version)/Glean.xcframework.zip"

let package = Package(
    name: "Glean",
    platforms: [.iOS(.v15)],
    products: [
        .library(name: "Glean", targets: ["Glean"]),
    ],
    targets: [
        .binaryTarget(name: "Glean", url: url, checksum: checksum),
    ]
)
