default:help
help:## 	print verbose help
	@echo '[COMMAND]		[DESCRIPTION]	'
	@sed -n 's/^##//p' ${MAKEFILE_LIST} | sed -e 's/://'
	@echo ""
	@echo "autoreconf		autoreconf"
	@echo "autogen-sh		run autogen.sh"
	@echo "config    		run configure"
	@echo "act       		act"
autoreconf:## 	autoreconf
	@type -P autoconf || type -P brew && brew install autoconf
	@type -P autoreconf && autoreconf || echo "install autoconf..." && echo "Try: 'brew install autoconf' on macOS - for example."
autogen-sh:## 	autogen-sh
	./autogen.sh
	#./autogen.sh configure
config:## 	config
	@./autogen.sh configure
	#@./configure
act:##	act
	@$(MAKE) -f act.mk
submodules:## 	git submodule update --init --recursive
	type -P git && git submodule update --init --recursive || echo "install git..."
-include Makefile
-include act.mk