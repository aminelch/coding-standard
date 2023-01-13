.DEFAULT_GOAL := fsf
install: composer.json
	echo ${UNAME}
update: composer.lock
	$(shell composer update -v)
clean: vendor composer.lock
	$(shell rm -rf ./vendor/)
fsf:
	@echo "💻 software should be free \n\e[1mhttps://www.gnu.org/philosophy/shouldbefree.html\e[0m"
