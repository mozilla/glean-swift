// swift-tools-version:5.4
import PackageDescription

let checksum = "cc837c812d5220da2f15ba64de1f6d9e2322156f5059abe7fadc8dd91d792b36"
let version = "52.4.1"
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
