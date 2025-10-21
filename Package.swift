// swift-tools-version:5.5
import PackageDescription

let checksum = "aeb08e510f9bf3f51e1fbae0c768ba031d0fd44bd55a98f1a185af958f43cdc5"
let version = "66.0.0"
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
