// swift-tools-version:5.5
import PackageDescription

let checksum = "88dedcf29c2dad8d89cdc6763819ea88c0f823241fbeb1d90f1b8f8753cdfa83"
let version = "65.1.0"
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
