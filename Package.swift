// swift-tools-version:5.4
import PackageDescription

let checksum = "866b9c2927d416be9f23eff2dec0d9b13417c1548be4d950a5bb4f1fd9dae524"
let version = "42.2.0"
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
