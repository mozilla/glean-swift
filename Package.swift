// swift-tools-version:5.4
import PackageDescription

let checksum = "5b998deecefa97b846764d112afcf8a361d7e5ecf2ec41a74522575ad138ae08"
let version = "53.2.0"
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
