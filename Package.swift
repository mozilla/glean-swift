// swift-tools-version:5.4
import PackageDescription

let checksum = "9bdae6b1f3a09b267956b7a63d326be0635031c75b178f820210d31d28a22e64"
let version = "44.1.2"
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
