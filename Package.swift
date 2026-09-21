// swift-tools-version:5.5
import PackageDescription

let checksum = "8adb36df1acc2b83b61446be063c016756cb98931a4457e9f10e632a2f682fab"
let version = "70.2.0"
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
