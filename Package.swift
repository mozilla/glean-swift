// swift-tools-version:5.4
import PackageDescription

let checksum = "b58bdf5e9f91d231c2acaa257a4a199dca91d58473a181fb8633294a61a3b233"
let version = "54.0.0"
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
