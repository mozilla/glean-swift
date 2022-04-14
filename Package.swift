// swift-tools-version:5.4
import PackageDescription

let checksum = "4c6a7f45db869d3d2da52a7f999045ba9c7935e59a4736bef7f8324c83a5191a"
let version = "44.1.1"
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
