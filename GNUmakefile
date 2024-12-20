# PATH=/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin

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

#build nodegit with node-gyp
#Consider adding '-I m4' to ACLOCAL_AMFLAGS in Makefile.am.
ACLOCAL_AMFLAGS=-Im4
SUBDIRS = po
bin_PROGRAMS = nodegit
NODE_GYP=$(PWD)/node_modules/.bin/node-gyp
NODE_MODULE_DIR=$(PWD)/node_modules/nodegit

SHELL                                   := /bin/bash
POWERSHELL                              := $(shell which pwsh)
PWD                                     ?= pwd_unknown
CMAKE                                   :=$(shell which cmake)
export CMAKE
GLIBTOOL                                :=$(shell which glibtool)
args = $(foreach a,$($(subst -,_,$1)_args),$(if $(value $a),$a="$($a)"))
export args

#check_args = files
#docs_serve_args = host port
#release_args = version
#test_args = match
#
#TASKS = \
#    install \
#    run

SHELL									:= /bin/bash
POWERSHELL								:= $(shell which pwsh)
PWD										?= pwd_unknown
GLIBTOOL								:=$(shell which glibtool)
export GLIBTOOL
GLIBTOOLIZE                             :=$(shell which glibtoolize)
export GLIBTOOLIZE
#AUTOCONF                                :=$(shell which autoconf)
#export AUTOCONF
DOTFILES_PATH=$(dir $(abspath $(firstword $(MAKEFILE_LIST))))
export DOTFILES_PATH
THIS_FILE                               := $(lastword $(MAKEFILE_LIST))
export THIS_FILE
TIME                                    := $(shell date +%s)
export TIME

OS                                      :=$(shell uname -s)
export OS
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

NODE_VERSION                            := v16.19.1
export NODE_VERSION
NODE_ALIAS                              := v16.19.0
export NODE_ALIAS
PACKAGE_MANAGER                         :=yarn
export PACKAGE_MANAGER
PACKAGE_INSTALL                         :=add
export PACKAGE_INSTALL

ifeq ($(docker),)
DOCKER                                  := $(shell which docker)
else
DOCKER                                  := $(docker)
endif
export DOCKER

ifeq ($(compose),)
DOCKER_COMPOSE                          := $(shell which docker-compose)
else
DOCKER_COMPOSE                          := $(compose)
endif
export DOCKER_COMPOSE
ifeq ($(reset),true)
RESET:=true
else
RESET:=false
endif
export RESET

PYTHON                                  := $(shell which python)
export PYTHON
PYTHON2                                 := $(shell which python2)
export PYTHON2
PYTHON3                                 := $(shell which python3)
export PYTHON3

PIP                                     := $(shell which pip)
export PIP
PIP2                                    := $(shell which pip2)
export PIP2
PIP3                                    := $(shell which pip3)
export PIP3

python_version_full := $(wordlist 2,4,$(subst ., ,$(shell python3 --version 2>&1)))
python_version_major := $(word 1,${python_version_full})
python_version_minor := $(word 2,${python_version_full})
python_version_patch := $(word 3,${python_version_full})

my_cmd.python.3 := $(PYTHON3) some_script.py3
my_cmd := ${my_cmd.python.${python_version_major}}

PYTHON_VERSION                         := ${python_version_major}.${python_version_minor}.${python_version_patch}
PYTHON_VERSION_MAJOR                   := ${python_version_major}
PYTHON_VERSION_MINOR                   := ${python_version_minor}

export python_version_major
export python_version_minor
export python_version_patch
export PYTHON_VERSION

#PROJECT_NAME defaults to name of the current directory.
ifeq ($(project),)
PROJECT_NAME                            := $(notdir $(PWD))
else
PROJECT_NAME                            := $(project)
endif
export PROJECT_NAME

NODE_VERSION							:=v16.19.1
export NODE_VERSION
NODE_ALIAS								:=v16.0.0
export NODE_ALIAS
PACKAGE_MANAGER							:=yarn
export PACKAGE_MANAGER
PACKAGE_INSTALL							:=add
export PACKAGE_INSTALL


ifeq ($(force),true)
FORCE									:= --force
endif
export FORCE

#GIT CONFIG
GIT_USER_NAME                           := $(shell git config user.name || echo)
export GIT_USER_NAME
GIT_USER_EMAIL                          := $(shell git config user.email || echo)
export GIT_USER_EMAIL
GIT_SERVER                              := https://github.com
export GIT_SERVER
GIT_PROFILE                             := $(shell git config user.name || echo)
export GIT_PROFILE
GIT_BRANCH                              := $(shell git rev-parse --abbrev-ref HEAD || echo)
export GIT_BRANCH
GIT_HASH                                := $(shell git rev-parse --short HEAD || echo)
export GIT_HASH
GIT_PREVIOUS_HASH                       := $(shell git rev-parse --short HEAD^1 || echo)
export GIT_PREVIOUS_HASH
GIT_REPO_ORIGIN                         := $(shell git remote get-url origin || echo)
export GIT_REPO_ORIGIN
GIT_REPO_NAME                           := $(PROJECT_NAME)
export GIT_REPO_NAME
GIT_REPO_PATH                           := $(HOME)/$(GIT_REPO_NAME)
export GIT_REPO_PATH

ifeq ($(nocache),true)
NOCACHE                                 := --no-cache
#Force parallel build when --no-cache to speed up build
PARALLEL                                := --parallel
else
NOCACHE                                 :=
PARALLEL                                :=
endif
ifeq ($(parallel),true)
PARALLEL                                := --parallel
endif
ifeq ($(para),true)
PARALLEL                                := --parallel
endif
export NOCACHE
export PARALLEL

ifeq ($(verbose),true)
VERBOSE                                 := --verbose
else
VERBOSE                                 :=
endif
export VERBOSE

BREW                                    := $(shell which brew || echo)
export BREW
BREW_PREFIX                             := $(shell brew --prefix || echo)
export BREW_PREFIX
BREW_CELLAR                             := $(shell brew --cellar || echo)
export BREW_CELLAR
HOMEBREW_NO_ENV_HINTS                   := false
export HOMEBREW_NO_ENV_HINTS

#PORTER_VERSION                         :=v1.0.1
PORTER_VERSION                          :=latest
export PORTER_VERSION

.ONESHELL:
#.PHONY:-
.SILENT:

#.PHONY: $(TASKS)
#$(TASKS):
#	@yarn $@ $(call args,$@)

##make	:	command			description
##	:
-:## - default - try 'make submodules'
-:
	./autogen.sh configure
	./configure
	bash -c "cat $(PWD)/GNUmakefile.in > $(PWD)/GNUmakefile"
	eval "$(/opt/homebrew/bin/brew shellenv)" #&
	#NOTE: 2 hashes are detected as 1st column output with color
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?##/ {printf "\033[36m%-15s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)

autoconf:## ./autogen.sh && ./configure
	./autogen.sh configure

##	:	-
##	:	help
##	:	report			environment args
##	:
##	:	all			execute installer scripts
##	:	init
##	:	brew
##	:	keymap

##	:
##	:	whatami			report system info
##	:
##	:	adduser-git		add a user named git

brew: -## install or update/upgrade brew
	export HOMEBREW_INSTALL_FROM_API=1
	type -P brew && echo -e "try\nbrew update --casks --greedy"|| ./install-brew.sh
	@eval "$(${HOMEBREW_PREFIX}/bin/brew shellenv)" && brew upgrade  --casks && brew update

.PHONY: help
help:## print verbose help
	@echo 'make [COMMAND] [EXTRA_ARGUMENTS]	'
	@echo ''
	@sed -n 's/^##ARGS//p' ${MAKEFILE_LIST} | column -t -s ':' |  sed -e 's/^/ /'
	# @sed -n 's/^.PHONY//p' ${MAKEFILE_LIST} | column -t -s ':' |  sed -e 's/^/ /'
	@sed -n 's/^##//p' ${MAKEFILE_LIST} | column -t -s ':' |  sed -e 's/^/ /'
	@echo ""

report:
	@echo ''
	@echo ' CMAKE=${CMAKE}	'
	@echo ' GLIBTOOL=${GLIBTOOL}	'
	@echo ' GLIBTOOLIZE=${GLIBTOOLIZE}	'
	@echo ' AUTOCONF=${AUTOCONF}	'
	@echo '	[DEV ENVIRONMENT]:	'
	@echo ''
	@echo ' TIME=${TIME}	'
	@echo ' SHELL=${SHELL}	'
	@echo ' POWERSHELL=${POWERSHELL}	'
	@echo ' DOTFILES_PATH=${DOTFILES_PATH}	'
	@echo ' PROJECT_NAME=${PROJECT_NAME}	'
	@echo ''
	@echo ' NODE_VERSION=${NODE_VERSION}	'
	@echo ' NODE_ALIAS=${NODE_ALIAS}	'
	@echo ''
	@echo ' GIT_USER_NAME=${GIT_USER_NAME}	'
	@echo ' GIT_USER_EMAIL=${GIT_USER_EMAIL}	'
	@echo ' GIT_SERVER=${GIT_SERVER}	'
	@echo ' GIT_PROFILE=${GIT_PROFILE}	'
	@echo ' GIT_BRANCH=${GIT_BRANCH}	'
	@echo ' GIT_HASH=${GIT_HASH}	'
	@echo ' GIT_PREVIOUS_HASH=${GIT_PREVIOUS_HASH}	'
	@echo ' GIT_REPO_ORIGIN=${GIT_REPO_ORIGIN}	'
	@echo ' GIT_REPO_NAME=${GIT_REPO_NAME}	'
	@echo ' GIT_REPO_PATH=${GIT_REPO_PATH}	'
	@echo ''
	@echo ' BREW=${BREW}	'
	@echo ' HOMEBREW_BREW_GIT_REMOTE=${HOMEBREW_BREW_GIT_REMOTE}	'
	@echo ' HOMEBREW_CORE_REMOTE=${HOMEBREW_CORE_GIT_REMOTE}	'
	@echo ' HOMEBREW_INSTALL_FROM_API=${HOMEBREW_INSTALL_FROM_API}	'
	@echo ' BREW_PREFIX=${BREW_PREFIX}	'
	@echo ' BREW_CELLAR=${BREW_CELLAR}	'
	@echo ' HOMEBREW_NO_ENV_HINTS=${HOMEBREW_NO_ENV_HINTS}	'
	@echo ''
	@echo ' PORT_VERSION=${PORTER_VERSION}	'

.PHONY:
phony:
	@sed -n 's/^.PHONY//p' ${MAKEFILE_LIST} | column -t -s ':' |  sed -e 's/^/ /'

.PHONY: executable
executable:
	chmod +x *.sh

#######################
.ONESHELL:
docker-start:## 	start docker
	test -d .venv || pipx install virtualenv && virtualenv .venv
	( \
	   source .venv/bin/activate; pip install -q -r requirements.txt; \
	   pip install -q --upgrade pip; \
	);
	( \
	    while ! docker system info > /dev/null 2>&1; do\
	    echo 'Waiting for docker to start...';\
	    if [[ '$(OS)' == 'Linux' ]]; then\
	     systemctl restart docker.service;\
	    fi;\
	    if [[ '$(OS)' == 'Darwin' ]]; then\
	     open --background -a /./Applications/Docker.app/Contents/MacOS/Docker\ Desktop.app/Contents/MacOS/Docker\ Desktop;\
	    fi;\
	sleep 1;\
	done\
	)

docker-install:## 	Download Docker.amd64.93002.dmg for MacOS Intel Compatibility

	@[[ '$(shell uname -s)' == 'Darwin' ]] && echo "is Darwin" || echo "not Darwin";
	@[[ '$(shell uname -m)' == 'x86_64' ]] && echo "is x86_64" || echo "not x86_64";
	@[[ '$(shell uname -p)' == 'i386' ]]   && echo "is i386" || echo "not i386";
	@[[ '$(shell uname -s)' == 'Darwin' ]] && [[ '$(shell uname -m)' == 'x86_64' ]]   && echo "is Darwin AND x86_64"     || echo "not Darwin AND x86_64";
	@[[ '$(shell uname -s)' == 'Darwin' ]] && [[ ! '$(shell uname -m)' == 'x86_64' ]] && echo "is Darwin AND NOT x86_64" || echo "is NOT (Darwin AND NOT x86_64)";

	@[[ '$(shell uname -s)' != 'Darwin' ]] && echo "not Darwin" || echo "is Darwin";
	@[[ '$(shell uname -m)' != 'x86_64' ]] && echo "not x86_64" || echo "is x86_64";
	@[[ '$(shell uname -p)' != 'i386' ]]   && echo "not i386" || echo "is i386";

	@[[ '$(shell uname -s)' == 'Darwin'* ]] && sudo -S chown -R $(shell whoami):admin /Users/$(shell whoami)/.docker/buildx/current || echo
	@[[ '$(shell uname -s)' == 'Darwin'* ]] && echo "Install Docker.amd64.93002.dmg if MacOS Catalina - known compatible version!"
	@[[ '$(shell uname -s)' == 'Darwin'* ]] && curl -o Docker.amd64.93002.dmg -C - https://desktop.docker.com/mac/main/amd64/93002/Docker.dmg
	@[[ '$(shell uname -s)' == 'Darwin'* ]] && echo "Using: $(shell type -P openssl)"
	@[[ '$(shell uname -s)' == 'Darwin'* ]] && openssl dgst -sha256 -r Docker.amd64.93002.dmg | sed 's/*Docker.amd64.93002.dmg//'
	@[[ '$(shell uname -s)' == 'Darwin'* ]] && echo "Using: $(shell type -P sha256sum)"
	@[[ '$(shell uname -s)' == 'Darwin'* ]] && sha256sum               Docker.amd64.93002.dmg | sed 's/Docker.amd64.93002.dmg//'
	@[[ '$(shell uname -s)' == 'Darwin'* ]] && echo "Expected hash:"
	@[[ '$(shell uname -s)' == 'Darwin'* ]] && echo "bee41d646916e579b16b7fae014e2fb5e5e7b5dbaf7c1949821fd311d3ce430b"
	@[[ '$(shell uname -s)' == 'Darwin'* ]] && type -P open 2>/dev/null && open Docker.amd64.93002.dmg

.PHONY:depends
depends-download:
	$(MAKE) download -C depends
depends: depends-download
	$(MAKE) -C depends
.PHONY: push
.ONESHELL:
push: touch-time
	bash -c "git add -f *.sh *.md sources .gitignore .bash* .vimrc .github index.html TIME *makefile && \
		git commit -m 'update from $(GIT_USER_NAME) on $(TIME)'"
	git push -f origin	+master:master

tag:
	@git tag $(OS)-$(OS_VERSION)-$(ARCH)-$(shell date +%s)
	@git push -f --tags

.PHONY: docs readme index
index: docs
readme: docs
docs: docker-start## 	docs
	@echo 'docs'
	bash -c 'if pgrep MacDown; then pkill MacDown; fi'
	@if hash pandoc 2>/dev/null; then \
		bash -c 'pandoc -s README.md -o index.html'; \
		fi || if hash docker 2>/dev/null; then \
		docker run --rm --volume "`pwd`:/data" --user `id -u`:`id -g` pandoc/latex:2.6 README.md; \
		fi
	bash -c "if pgrep MacDown; then pkill MacDown; fi"
	git add --ignore-errors *.md
	git add --ignore-errors *.html
	#git ls-files -co --exclude-standard | grep '\.md/$\' | xargs git

docs-docker:## 	docs-docker
	@docker run --rm --volume "`pwd`:/data" --user `id -u`:`id -g` pandoc/latex:2.6 README.md;

.PHONY: touch-time
.ONESHELL:
touch-time:
	#rm -f 1618*
	#$(shell git rm -f 1618*)
	touch TIME
	echo $(TIME) $(shell git rev-parse HEAD) >> TIME

clean-nvm: ## clean-nvm
	@rm -rf ~/.nvm

-include Makefile

# vim: set noexpandtab:
# vim: set setfiletype make
