// swift-tools-version:5.5
import PackageDescription

let checksum = "3fcfe451d1a73d102c8b9fc19e59fd7e015ca8db3fbdfa2d6d2fe43aa40b217f"
let version = "60.1.1"
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
