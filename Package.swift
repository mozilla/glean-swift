// swift-tools-version:5.4
import PackageDescription

let checksum = "b5923b2e1b6c14176d08c61334ea2825c8f3cf913bf5ae7622476d7882d2738e"
let version = "51.7.0"
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
