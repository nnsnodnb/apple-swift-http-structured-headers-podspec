.PHONY: xcframework
xcframework:
	@mint run scipio prepare \
		--cache-policy project \
		--support-simulators \
		--enable-library-evolution \
		--output Frameworks
