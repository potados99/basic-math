// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "BasicMathWrapper",
    platforms: [
        .iOS(.v16)
    ],
    products: [
        .library(
            name: "BasicMathWrapper",
            targets: ["BasicMathWrapper"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/Airthings/RxBluetoothKit", from: "6.3.2"),
    ],
    targets: [
        .binaryTarget(
            name: "BasicMathFramework",
            path: "./BasicMath.xcframework"
        ),
        .target(
            name: "BasicMathWrapper",
            dependencies: [
                "BasicMathFramework",
                .product(name: "RxBluetoothKit_Airthings", package: "RxBluetoothKit"),
            ],
            path: ".",
            sources: ["Dummy.swift"]
        )
    ]
)
