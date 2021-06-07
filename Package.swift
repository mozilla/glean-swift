// swift-tools-version:5.4
import PackageDescription

let checksum = "4ca24fb1414a198e41226db2e81621e1797f40031ce344ad74478a752a5a874e"
let version = "39.0.2"
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
