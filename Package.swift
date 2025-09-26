// swift-tools-version:5.5
import PackageDescription

let checksum = "9ee2b79ae74d35e04ebe613229ad2df38b70e029cc863f7838adc9fc0ddfb3bf"
let version = "65.2.1"
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
