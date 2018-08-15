import ProjectDescription

let project = Project(name: "uCore",
                      targets: [
                        Target(name: "uCore",
                               platform: .iOS,
                               product: .framework,
                               bundleId: "com.tuist.uCore",
                               infoPlist: "Info.plist",
                               sources: "Sources/**",
                               dependencies: [
                                  .framework(path: "../Carthage/Build/iOS/RxSwift.framework")
                                ]),
                        Target(name: "uCoreTests",
                               platform: .iOS,
                               product: .unitTests,
                               bundleId: "com.tuist.uCoreTests",
                               infoPlist: "Tests.plist",
                               sources: "Tests/**",
                               dependencies: [
                                    .target(name: "uCore")
                               ]),
                        Target(name: "uCoreExamples",
                               platform: .iOS,
                               product: .app,
                               bundleId: "com.tuist.uCoreExamples",
                               infoPlist: "Examples.plist",
                               sources: "Examples/Sources/**",
                               resources: "Examples/Resources/**",
                               dependencies: [
                                    .target(name: "uCore")
                               ])
                      ])
