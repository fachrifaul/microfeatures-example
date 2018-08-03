import ProjectDescription

let project = Project(name: "uDependencies",
                      targets: [
                        Target(name: "uDependencies",
                               platform: .iOS,
                               product: .framework,
                               bundleId: "com.tuist.uDependencies",
                               infoPlist: "Info.plist",
                               sources: "Sources/**",
                               dependencies: [
                                .project(target: "uUI", path: "../uUI"),
                                .project(target: "uCore", path: "../uCore")
                                ]),
                      ])
