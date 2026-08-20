// swift-tools-version:5.5
import PackageDescription

let checksum = "49f784777510e4040827b3c67ccc47dd1747125e05d79d1a9b21a9ac589adc0e"
let version = "70.0.0"
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
