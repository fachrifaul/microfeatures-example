import ProjectDescription

let project = Project(name: "uUI",
                      targets: [
                        Target(name: "uUI",
                               platform: .iOS,
                               product: .framework,
                               bundleId: "com.tuist.uUI",
                               infoPlist: "Info.plist",
                               sources: "Sources/**",
                               dependencies: [
                                ]),
                        Target(name: "uUITests",
                               platform: .iOS,
                               product: .unitTests,
                               bundleId: "com.tuist.uUITests",
                               infoPlist: "Tests.plist",
                               sources: "Tests/**",
                               dependencies: [
                                    .target(name: "uUI")
                               ]),
                        Target(name: "uUIExamples",
                               platform: .iOS,
                               product: .app,
                               bundleId: "com.tuist.uUIExamples",
                               infoPlist: "Examples.plist",
                               sources: "Examples/Sources/**",
                               resources: "Examples/Resources/**",
                               dependencies: [
                                    .target(name: "uUI")
                               ])
                      ])
