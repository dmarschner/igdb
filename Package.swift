// swift-tools-version:4.2
import PackageDescription

let package = Package(
    name: "IGDB",
    products: [
        .library(name: "IGDB", targets: ["IGDB"])
    ],
    dependencies: [],
    targets: [
        .target(name: "IGDB", dependencies: []),
        .testTarget(name: "IGDBTests", dependencies: ["IGDB"])
    ]
)
