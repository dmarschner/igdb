// swift-tools-version:4.2
import PackageDescription

let package = Package(
    name: "IGDB",
    products: [
        .library(name: "IGDB", targets: ["IGDB"])
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-syntax.git", .exact("0.40200.0"))
    ],
    targets: [
        .target(name: "IGDB", dependencies: []),
        .target(name: "Rewriter", dependencies: ["IGDB", "SwiftSyntax"]),
        .testTarget(name: "IGDBTests", dependencies: ["IGDB"])
    ]
)
