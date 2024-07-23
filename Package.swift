// swift-tools-version:5.5
import PackageDescription

let checksum = "35191dfc6d6e68f090ec6aa3034ce2d2ead74ddc49eaede1b98103c4a1426fb9"
let version = "60.4.0"
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
