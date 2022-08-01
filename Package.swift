// swift-tools-version:5.4
import PackageDescription

let checksum = "fcd97e3f9f7c6d118657cacbf4b7f92335c206687199e4ed0ea514347087ba54"
let version = "50.1.4"
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
