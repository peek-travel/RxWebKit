// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "RxWebKit",
    platforms: [.macOS(.v10_11)],
    products: [
        .library(name: "RxWebKit", type: .dynamic, targets: ["RxWebKit"])
    ],
    dependencies: [
        .package(url: "https://github.com/ReactiveX/RxSwift", .upToNextMajor(from: "5.0.0")),
    ],
    targets: [
        .target(
            name: "RxWebKit",
            dependencies: [
                .product(name: "RxCocoa", package: "RxSwift"),
                .product(name: "RxSwift", package: "RxSwift")
            ],
            path: "RxWebKit"
        ),
        .testTarget(name: "RxWebKitTests", dependencies: ["RxWebKit"], path: "RxWebKitTests")
    ]
)
