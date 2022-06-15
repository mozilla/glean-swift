// swift-tools-version:5.4
import PackageDescription

let checksum = "757dbabd904f57e2ba9aceece493e79776af8ef3c61615e8ec7e3a3f24fa173c"
let version = "50.1.0"
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
