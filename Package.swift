// swift-tools-version:5.4
import PackageDescription

let checksum = "0a71ba11b3281428b64d179a612fe4813bab56012fb2f4b03a4047bf23cd454c"
let version = "44.1.0"
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
