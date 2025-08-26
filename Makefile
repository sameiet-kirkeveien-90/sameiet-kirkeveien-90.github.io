# Just check out https://makefile.site

# otherwise Make assumes that all install targets are files & folders
.PHONY: install deploy livereload build help list-targets

help: 
	@make print S="These are the possible make targets you can invoke"
	@make list-targets

install: 
	bundle install
	@make install-precommit
	@# this is just to get the output as the final line
	#@make check-dependencies

deploy: 
	git push

livereload:
	bundle exec jekyll serve --trace --livereload --host localhost

pre-commit: fetch-latest-porttelefon check-links

install-precommit:
	echo 'make pre-commit' > .git/hooks/pre-commit
	chmod +x .git/hooks/pre-commit

check-links:
	bundle exec htmlproofer --assume-extension='.html' \
		 --no-check-external-hash      \
		--ignore-urls=/github.com\/.*edit/ \
		--ignore-status-codes="403,400" \
		--no-enforce-https ./_site 

# only for checking out the final build
# # only for checking out the final build
build:
	bundle exec jekyll build

fetch-latest-porttelefon:
	curl -s https://raw.githubusercontent.com/sameiet-kirkeveien-90/skript/refs/heads/main/porttelefon-navnegenerator-web/index.html > porttelefon.html

### UTILS ###

#https://stackoverflow.com/a/26339924/200987
list-targets: 
	@LC_ALL=C $(MAKE) -pRrq -f $(firstword $(MAKEFILE_LIST)) : 2>/dev/null | awk -v RS= -F: '/(^|\n)# Files(\n|$$)/,/(^|\n)# Finished Make data base/ {if ($$1 !~ "^[#.]") {print $$1}}' | sort | grep -E -v -e '^[^[:alnum:]]' -e '^$@$$' | grep -v print

print:
	@printf "\033[01;35m%s\033[00m\n" "$(S)"

