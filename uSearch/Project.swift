import ProjectDescription

let project = Project(name: "uSearch",
                      targets: [
                        Target(name: "uSearch",
                               platform: .iOS,
                               product: .framework,
                               bundleId: "com.tuist.uSearch",
                               infoPlist: "Info.plist",
                               sources: "Sources/**",
                               dependencies: [
                                .project(target: "uUI", path: "../uUI"),
                                .project(target: "uCore", path: "../uCore"),
                                .project(target: "uDependencies", path: "../uDependencies")
                                ]),
                        Target(name: "uSearchTests",
                               platform: .iOS,
                               product: .unitTests,
                               bundleId: "com.tuist.uSearchTests",
                               infoPlist: "Tests.plist",
                               sources: "Tests/**",
                               dependencies: [
                                    .target(name: "uSearch"),
                                    .project(target: "uTesting", path: "../uTesting"),
                               ]),
                        Target(name: "uSearchExamples",
                               platform: .iOS,
                               product: .app,
                               bundleId: "com.tuist.uSearchExamples",
                               infoPlist: "Examples.plist",
                               sources: "Examples/Sources/**",
                               resources: "Examples/Resources/**",
                               dependencies: [
                                    .target(name: "uSearch")
                               ])
                      ])