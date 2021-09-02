// swift-tools-version:5.4
import PackageDescription

let checksum = "bb9174161db1101c5c3c504ae24d0f964300b2a982f69fefa116f49ae4f4282f"
let version = "40.1.1"
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
