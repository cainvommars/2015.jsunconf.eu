deploy:
	@rm -rf ./build
	@wintersmith build
	@cd ./build && git init . && git add . && git commit -nm \"Deployment\" && \
	git push "git@github.com:BarcampErfurt/BarcampErfurt.github.io.git" master:gh-pages --force && rm -rf .git
	@rm -rf ./build
