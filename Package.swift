// swift-tools-version:5.4
import PackageDescription

let checksum = "b46cc53ca927f9de76ff6da9a9e444ac163b4b0abd4fc8dfd5ac0e612ca19254"
let version = "41.1.1"
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
