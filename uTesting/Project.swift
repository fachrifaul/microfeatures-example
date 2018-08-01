import ProjectDescription

let project = Project(name: "uTesting",
                      targets: [
                        Target(name: "uTesting",
                               platform: .iOS,
                               product: .framework,
                               bundleId: "com.tuist.uTesting",
                               infoPlist: "Info.plist",
                               sources: "Sources/**",
                               dependencies: [
                                ]),
                        Target(name: "uTestingTests",
                               platform: .iOS,
                               product: .unitTests,
                               bundleId: "com.tuist.uTestingTests",
                               infoPlist: "Tests.plist",
                               sources: "Tests/**",
                               dependencies: [
                                    .target(name: "uTesting")
                               ]),
                      ])
