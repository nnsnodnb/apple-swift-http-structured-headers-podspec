.PHONY: xcframework
xcframework:
	@mint run scipio prepare \
		--cache-policy project \
		--support-simulators \
		--enable-library-evolution \
		--embed-debug-symbols \
		--output Frameworks
