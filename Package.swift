// swift-tools-version:5.4
import PackageDescription

let checksum = "841c2542403b93e31841ebc54ce57bd6f7f91ae77d94fce304e293c787744ce2"
let version = "51.8.2"
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
