OS                                      :=$(shell uname -s)
export OS
OS_VERSION                              :=$(shell uname -r)
export OS_VERSION
ARCH                                    :=$(shell uname -m)
export ARCH
ifeq ($(ARCH),x86_64)
TRIPLET                                 :=x86_64-linux-gnu
export TRIPLET
endif
ifeq ($(ARCH),arm64)
TRIPLET                                 :=aarch64-linux-gnu
export TRIPLET
endif
ifeq ($(ARCH),arm64)
TRIPLET                                 :=aarch64-linux-gnu
export TRIPLET
endif

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
tag:
	@git tag $(OS)-$(OS_VERSION)-$(ARCH)-$(shell date +%s)
	@git push -f --tags
-include Makefile
-include act.mk