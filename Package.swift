// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "FlipFlopLiteSDK",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "FlipFlopLiteSDK",
            targets: ["FlipFlopLiteSDK", "FFLSDK"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/devicekit/DeviceKit.git", from: "5.1.0"),
        .package(url: "https://github.com/shogo4405/Logboard", from: "2.4.1"),
        .package(url: "https://github.com/LaunchDarkly/swift-eventsource.git", .upToNextMajor(from: "3.1.1")),
        .package(url: "https://github.com/kingslay/KSPlayer.git", from: "2.1.2"),
        .package(url: "https://github.com/kingslay/FFmpegKit.git", from: "6.0.1")
    ],
    targets: [
        .binaryTarget(
            name: "FlipFlopLiteSDK",
            path: "FlipFlopLiteSDK.xcframework"
        ),
        .target(
            name: "FFLSDK",
            dependencies: [
                "DeviceKit", "Logboard", "KSPlayer", "FFmpegKit"
            ],
            path: "Sources"
        ),
    ]
)

