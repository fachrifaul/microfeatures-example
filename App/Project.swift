import ProjectDescription

let project = Project(name: "uFeatures",
                      targets: [
                        Target(name: "App",
                               platform: .iOS,
                               product: .app,
                               bundleId: "com.tuist.App",
                               infoPlist: "Info.plist",
                               sources: "Sources/**",
                               dependencies: [
                                .project(target: "uSearch", path: "../uSearch"),
                                .project(target: "uHome", path: "../uHome"),
                                .project(target: "uDependencies", path: "../uDependencies"),
                                .project(target: "uCore", path: "../uCore"),
                                .project(target: "uUI", path: "../uUI")
                                ]),
                        Target(name: "AppTests",
                               platform: .iOS,
                               product: .unitTests,
                               bundleId: "com.tuist.AppTests",
                               infoPlist: "Tests.plist",
                               sources: "Tests/**",
                               dependencies: [
                                    .target(name: "App"),
                                    .project(target: "uTesting", path: "../uTesting"),
                               ]),
                        Target(name: "AppUITests",
                               platform: .iOS,
                               product: .unitTests,
                               bundleId: "com.tuist.AppUITests",
                               infoPlist: "UITests.plist",
                               sources: "UITests/**",
                               dependencies: [
                                    .target(name: "App"),
                                    .project(target: "uTesting", path: "../uTesting"),
                               ]),

                      ])