// swift-tools-version:5.4
import PackageDescription

let checksum = "a5bae0d25169ceda6488071cdd41e6ddc952163e419cd54ab869b15c9c3cda69"
let version = "51.4.0"
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
