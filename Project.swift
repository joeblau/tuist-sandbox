import ProjectDescription

let project = Project(name: "TuistSandbox",
                      packages: [
                        .package(url: "git@github.com:pointfreeco/swift-composable-architecture.git", .upToNextMajor(from: "0.9.0")),
                      ],
                      targets: [
                        Target(name: "TuistSandbox",
                               platform: .iOS,
                               product: .app,
                               bundleId: "com.joeblau.TuistSandbox",
                               infoPlist: "Apps/TuistSandbox/SupportingFiles/Info.plist",
                               sources: [
                                "Apps/TuistSandbox/Sources/**",
                               ],
                               resources: [
                                "Apps/TuistSandbox/Resources/**",
                               ],
                               dependencies: [
                                .target(name: "Shared_iOS"),
                                .target(name: "TuistSandboxWatchKitApp"),
                                .package(product: "ComposableArchitecture"),
                               ]
                        ),
                        Target(name: "TuistSandboxWatchKitApp",
                               platform: .watchOS,
                               product: .watch2App,
                               bundleId: "com.joeblau.TuistSandbox.watchkitapp",
                               infoPlist: "Apps/TuistSandboxWatchKitApp/SupportingFiles/Info.plist",
                               resources: [
                                "Apps/TuistSandboxWatchKitApp/Resources/**"
                               ],
                               dependencies: [
                                .target(name: "TuistSandboxWatchKitExtension"),
                               ]
                        ),
                        Target(name: "TuistSandboxWatchKitExtension",
                               platform: .watchOS,
                               product: .watch2Extension,
                               bundleId: "com.joeblau.TuistSandbox.watchkitapp.extension",
                               infoPlist: "Apps/TuistSandboxWatchKitExtension/SupportingFiles/Info.plist",
                               sources: [
                                "Apps/TuistSandboxWatchKitExtension/Sources/**",
                               ],
                               resources: [
                                "Apps/TuistSandboxWatchKitExtension/Resources/**",
                               ],
                               dependencies: [
                                .target(name: "Shared_watchOS"),
                                .package(product: "ComposableArchitecture"),
                               ]
                        ),
                        Target(name: "Shared_iOS",
                               platform: .iOS,
                               product: .framework,
                               bundleId: "com.joeblau.Shared",
                               infoPlist: "Libraries/Shared/SupportingFiles/Info.plist",
                               sources: ["Libraries/Shared/Sources/**"],
                               resources: ["Libraries/Shared/Resources/**"]
                        ),
                        Target(name: "Shared_watchOS",
                               platform: .watchOS,
                               product: .framework,
                               bundleId: "com.joeblau.Shared",
                               infoPlist: "Libraries/Shared/SupportingFiles/Info.plist",
                               sources: ["Libraries/Shared/Sources/**"],
                               resources: ["Libraries/Shared/Resources/**"]
                        ),
                      ]
)

