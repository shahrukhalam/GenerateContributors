// swift-tools-version: 5.7

import PackageDescription

let package = Package(
    name: "GenerateContributors",
    products: [
        .plugin(
            name: "GenerateContributors",
            targets: ["GenerateContributors"]
        )
    ],
    targets: [
        .plugin(
            name: "GenerateContributors",
            capability: .command(
                intent: .custom(
                    verb: "regenerate-contributors-list",
                    description: "Generates the CONTRIBUTORS.txt file based on Git logs"
                ),
                permissions: [
                    .writeToPackageDirectory(reason: "Writes CONTRIBUTORS.txt to the source root.")
                ]
            )
        )
    ]
)
