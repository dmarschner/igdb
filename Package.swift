// swift-tools-version:4.2
import PackageDescription

let package = Package(
    name: "IGDB",
    products: [
        // 🕹️ An IGDB API vapor service 
        .library(name: "IGDB", targets: ["IGDB"])
    ],
    dependencies: [
        // 📦 Vapor dependency injection / inversion of control framework.
        .package(url: "https://github.com/vapor/service.git", from: "1.0.0")
    ],
    targets: [
        .target(name: "IGDB", dependencies: ["Service"]),
        .testTarget(name: "IGDBTests", dependencies: ["IGDB"])
    ]
)
