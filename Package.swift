// swift-tools-version:5.4
import PackageDescription

let checksum = "46c0066dc81526451e8fc1d3cba032c54377e2f3ebd2cd1ab3cd9e5ac2b91442"
let version = "52.4.0"
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
