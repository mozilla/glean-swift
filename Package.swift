// swift-tools-version:5.4
import PackageDescription

let checksum = "2f640af3713290e957de13fd5edace465f52b0ddeef6b938790a5b4a2ffcfede"
let version = "52.4.3"
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
