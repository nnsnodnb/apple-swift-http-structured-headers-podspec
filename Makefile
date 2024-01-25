.PHONY: xcframework
xcframework:
	@mint run scipio prepare \
		--cache-policy project \
		--support-simulators \
		--enable-library-evolution \
		--embed-debug-symbols \
		--output Frameworks
	@$(MAKE) codesign

.PHONY: codesign
codesign:
	@codesign --timestamp -v --sign "Apple Distribution: Yuya Oka (99649YXF6E)" Frameworks/RawStructuredFieldValues.xcframework
	@codesign --timestamp -v --sign "Apple Distribution: Yuya Oka (99649YXF6E)" Frameworks/StructuredFieldValues.xcframework
