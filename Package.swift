// swift-tools-version:5.4
import PackageDescription

let checksum = "ed24a6a85cfe9acb4c97f8bb26aceedc4ddb80f04bf62f0f929152c1eeafd663"
let version = "50.0.0"
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
