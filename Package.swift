// swift-tools-version:5.5
import PackageDescription

let checksum = "fac0784a01849bce65bc75863781d14674f0175f87a7eb009e5ea555b8609345"
let version = "70.3.0"
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
