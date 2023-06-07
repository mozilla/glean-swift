// swift-tools-version:5.4
import PackageDescription

let checksum = "72694a2e6e49288107a61438a48084c98f4d046895486272b0bef24973752a56"
let version = "53.0.0"
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
