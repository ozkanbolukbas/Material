// swift-tools-version:4.2
import PackageDescription

let package = Package(
    name: "Material",
    // platforms: [.iOS("8.0")],
    products: [
        .library(name: "Material", targets: ["Material"])
    ],
    dependencies: [
        .package(url: "https://github.com/ozkanbolukbas/Material.git", .upToNextMajor(from: "3.2.5")),
    ],
    targets: [
        .target(
            name: "Material",
            dependencies: ["Motion"],
            path: "Sources",
            exclude: ["Frameworks"]
        )
    ]
)
