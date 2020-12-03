// swift-tools-version:4.2
import PackageDescription

let package = Package(
    name: "Material-nayla",
    // platforms: [.iOS("8.0")],
    products: [
        .library(name: "Material-nayla", targets: ["Material-nayla"])
    ],
    dependencies: [
        .package(url: "https://github.com/ozkanbolukbas/Material.git", .upToNextMajor(from: "3.2.1")),
    ],
    targets: [
        .target(
            name: "Material-nayla",
            dependencies: ["Motion"],
            path: "Sources",
            exclude: ["Frameworks"]
        )
    ]
)
