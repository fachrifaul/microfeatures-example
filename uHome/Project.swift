import ProjectDescription

let project = Project(name: "uHome",
                      targets: [
                        Target(name: "uHome",
                               platform: .iOS,
                               product: .framework,
                               bundleId: "com.tuist.uHome",
                               infoPlist: "Info.plist",
                               sources: "Sources/**",
                               dependencies: [
                                .project(target: "uUI", path: "../uUI"),
                                .project(target: "uCore", path: "../uCore"),
                                .project(target: "uDependencies", path: "../uDependencies")
                                ]),
                        Target(name: "uHomeTests",
                               platform: .iOS,
                               product: .unitTests,
                               bundleId: "com.tuist.uHomeTests",
                               infoPlist: "Tests.plist",
                               sources: "Tests/**",
                               dependencies: [
                                    .target(name: "uHome"),
                                    .project(target: "uTesting", path: "../uTesting"),
                               ]),
                        Target(name: "uHomeExamples",
                               platform: .iOS,
                               product: .app,
                               bundleId: "com.tuist.uHomeExamples",
                               infoPlist: "Examples.plist",
                               sources: "Examples/Sources/**",
                               resources: "Examples/Resources/**",
                               dependencies: [
                                    .target(name: "uHome")
                               ])
                      ])