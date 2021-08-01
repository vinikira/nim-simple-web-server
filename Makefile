.PHONY: build
build:
	nim -d:musl -d:release --opt:size --threads:on c app
	strip -s ./app
	upx --best ./app
