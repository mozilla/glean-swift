// swift-tools-version:5.4
import PackageDescription

let checksum = "caf55694e92372e3a6e2fd601570367bc522aea0b2644edb18cf95ff80514693"
let version = "56.0.0"
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
