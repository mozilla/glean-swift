// swift-tools-version:5.4
import PackageDescription

let checksum = "8c72687281cf19d31aa03c834ce1fc83f6ad45954e4e9687f4ea2fc94e7a536f"
let version = "52.3.1"
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
