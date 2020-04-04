// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Swiftline",
    platforms: [
        .macOS(.v10_14)
    ],
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "Swiftline",
            targets: ["Swiftline"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "https://github.com/Quick/Quick.git", from: "2.2.0"),
        .package(url: "https://github.com/Quick/Nimble.git", from: "8.0.7"),
        .package(url: "https://github.com/realm/SwiftLint", from: "0.39.2"),
        .package(url: "https://github.com/shibapm/Komondor", from: "1.0.4"),
        .package(url: "https://github.com/apple/swift-format", from: "0.50200.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "Swiftline",
            dependencies: []),
        .target(
                name: "AgreeExample",
                dependencies: ["Swiftline"],
                path: "Examples/Agree",
                sources: ["main.swift"]
        ),
        .target(
                name: "AskExample",
                dependencies: ["Swiftline"],
                path: "Examples/Ask",
                sources: ["main.swift"]
        ),
        .target(
                name: "ChooseExample",
                dependencies: ["Swiftline"],
                path: "Examples/Choose",
                sources: ["main.swift"]
        ),
        .target(
                name: "ColorizeExample",
                dependencies: ["Swiftline"],
                path: "Examples/Colorize",
                sources: ["main.swift"]
        ),
        .target(
                name: "EnvAndArgsExample",
                dependencies: ["Swiftline"],
                path: "./Examples/EnvAndArgs",
                sources: ["main.swift"]
        ),
        .testTarget(
            name: "SwiftlineTests",
            dependencies: ["Swiftline","Quick","Nimble"]),
    ]
)

// The settings for the git hooks for our repo
#if canImport(PackageConfig)
import PackageConfig

let config = PackageConfig([
    "komondor": [
        // When someone has run `git commit`, first run
        // SwiftFormat and the auto-correcter for SwiftLint
        "pre-commit": [
            "swift run swiftformat Swiftline",
            "swift run swiftlint autocorrect --path Swiftline/",
//            "git add .",
        ],
    ]
])
#endif
