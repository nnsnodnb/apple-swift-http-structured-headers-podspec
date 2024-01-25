.PHONY: xcframework
xcframework:
	@mint run scipio prepare \
		--cache-policy project \
		--support-simulators \
		--enable-library-evolution \
		--embed-debug-symbols \
		--output Frameworks
	@$(MAKE) privacy_manifest
	@$(MAKE) codesign

.PHONY: privacy_manifest
privacy_manifest:
	@echo "Copy PrivacyInfo.xcprivacy"
	@cp Sources/PrivacyInfo.xcprivacy Frameworks/RawStructuredFieldValues.xcframework/ios-arm64/RawStructuredFieldValues.framework
	@cp Sources/PrivacyInfo.xcprivacy Frameworks/RawStructuredFieldValues.xcframework/ios-arm64_x86_64-simulator/RawStructuredFieldValues.framework
	@cp Sources/PrivacyInfo.xcprivacy Frameworks/StructuredFieldValues.xcframework/ios-arm64/StructuredFieldValues.framework
	@cp Sources/PrivacyInfo.xcprivacy Frameworks/StructuredFieldValues.xcframework/ios-arm64_x86_64-simulator/StructuredFieldValues.framework

.PHONY: codesign
codesign:
	@codesign --timestamp -v --sign "Apple Distribution: Yuya Oka (99649YXF6E)" Frameworks/RawStructuredFieldValues.xcframework
	@codesign --timestamp -v --sign "Apple Distribution: Yuya Oka (99649YXF6E)" Frameworks/StructuredFieldValues.xcframework
