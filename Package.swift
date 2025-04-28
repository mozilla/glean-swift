// swift-tools-version:5.5
import PackageDescription

let checksum = "58e2afd679c729c94b7bd33e5eab9294537b2c3acedbd957f0e1e4bc1bd9dcde"
let version = "64.2.0"
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
