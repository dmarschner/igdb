// swift-tools-version:4.2
import PackageDescription

let package = Package(
    name: "IGDB",
    products: [
        .library(name: "IGDB", targets: ["IGDB"])
    ],
    dependencies: [
        .package(url: "https://github.com/markuswntr/apicalypse.git", from: "1.0.0"),
        .package(url: "https://github.com/vapor/service.git", from: "1.0.0")
    ],
    targets: [
        .target(name: "IGDB", dependencies: ["Service", "Apicalypse"]),
        .testTarget(name: "IGDBTests", dependencies: ["IGDB"])
    ]
)
