// swift-tools-version:5.5
import PackageDescription

let checksum = "28b05bfa7e13f623c1f690a608f25baa9b38b73443d97a3f70813f7f221aaa9e"
let version = "59.0.0"
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
