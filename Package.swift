// swift-tools-version:5.4
import PackageDescription

let checksum = "8c498bd509745887cc9fb429bac40afd37a298affc6d4c803cde735896063232"
let version = "39.1.0"
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
