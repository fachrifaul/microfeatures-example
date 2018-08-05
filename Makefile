DESTINATION = "platform=iOS Simulator,name=iPhone 6,OS=11.4"

bootstrap:
	bundle install
	bundle exec pod install
	eval "$(curl -sL https://bit.ly/2JWMfx8)"
	carthage update --platform iOS;
fetch-dependencies:
	carthage update --platform iOS;
generate-projects:
	tuist generate;
build-core:
	xcodebuild -workspace uFeatures.xcworkspace -scheme uCore -config Debug clean build
build-ui:
	xcodebuild -workspace uFeatures.xcworkspace -scheme uUI -config Debug clean build
build-testing:
	xcodebuild -workspace uFeatures.xcworkspace -scheme uTesting -config Debug clean build
build-dependencies:
	xcodebuild -workspace uFeatures.xcworkspace -scheme uDependencies -config Debug clean build
build-search:
	xcodebuild -workspace uFeatures.xcworkspace -scheme uSearch -config Debug clean build
build-home:
	xcodebuild -workspace uFeatures.xcworkspace -scheme uHome -config Debug clean build
build-app:
	xcodebuild -workspace uFeatures.xcworkspace -scheme App -config Debug clean build CODE_SIGN_IDENTITY="" CODE_SIGNING_REQUIRED=NO
test-core:
	xcodebuild -workspace uFeatures.xcworkspace -scheme uCore -config Debug clean test -destination $(DESTINATION)
test-ui:
	xcodebuild -workspace uFeatures.xcworkspace -scheme uUI -config Debug clean test -destination $(DESTINATION)
test-testing:
	xcodebuild -workspace uFeatures.xcworkspace -scheme uTesting -config Debug clean test -destination $(DESTINATION)
test-search:
	xcodebuild -workspace uFeatures.xcworkspace -scheme uSearch -config Debug clean test -destination $(DESTINATION)
test-home:
	xcodebuild -workspace uFeatures.xcworkspace -scheme uHome -config Debug clean test -destination $(DESTINATION)
test-app:
	xcodebuild -workspace uFeatures.xcworkspace -scheme App -config Debug clean test -destination $(DESTINATION)