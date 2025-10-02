// swift-tools-version:5.5
import PackageDescription

let checksum = "0555db6d1a5aa8d5d01c950edb995a735ea7865ff615ac9291b3b9538c514af6"
let version = "65.2.2"
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
