// swift-tools-version:5.5
import PackageDescription

let checksum = "b8da73ad515208e49f1425197b468b176a8e73769ef60e8402a0265244c2f617"
let version = "65.0.0"
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
