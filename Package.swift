// swift-tools-version:5.4
import PackageDescription

let checksum = "005f849c8ce8ec6a6f7ba624ad514c781c937f55704a5cfb490efc8b11236cd6"
let version = "50.1.2"
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
