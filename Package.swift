// swift-tools-version:5.4
import PackageDescription

let checksum = "842fd341abafc5f2e2a691a9f85ab8a040fcd1b00c8ab11273b64779a99bbb5d"
let version = "52.6.0"
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
