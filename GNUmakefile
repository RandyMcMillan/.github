ifeq ($(project),)
PROJECT_NAME                            := $(notdir $(PWD))
else
PROJECT_NAME                            := $(project)
endif
export PROJECT_NAME

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

ifeq ($(reuse),true)
REUSE                                   :=-r
else
REUSE                                   :=	
endif
export REUSE
ifeq ($(bind),true)
BIND                                   :=-b
else
BIND                                   :=      
endif
export BIND

ifeq ($(token),)
GH_ACT_TOKEN                            :=$(shell cat ~/GH_ACT_TOKEN.txt)
else
GH_ACT_TOKEN                            :=$(shell echo $(token))
endif
export GH_ACT_TOKEN

export $(cat ~/GH_ACT_TOKEN) && make act

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

PYTHON_VENV                             := $(shell python -c "import sys; sys.stdout.write('1') if hasattr(sys, 'base_prefix') else sys.stdout.write('0')")
PYTHON3_VENV                            := $(shell python3 -c "import sys; sys.stdout.write('1') if hasattr(sys, 'real_prefix') else sys.stdout.write('0')")

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


default:help
help:## 	print verbose help
	@sed -n 's/^##//p' ${MAKEFILE_LIST} | sed -e 's/://'
	@echo ""
	@echo "autoreconf		autoreconf"
	@echo "autogen-sh		run autogen.sh"
	@echo "config    		run configure"
	@echo "act       		act"

report:## 	print env variables
	@echo 'GH_ACT_TOKEN=${GH_ACT_TOKEN}'
autoreconf:## 	autoreconf
	@type -P autoconf || type -P brew && brew install autoconf
	@type -P autoreconf && autoreconf || echo "install autoconf..." && echo "Try: 'brew install autoconf' on macOS - for example."
autogen-sh:## 	autogen-sh
	./autogen.sh
	#./autogen.sh configure
config:## 	config
	@./autogen.sh configure
	@./configure
act:##	act
	@$(MAKE) -f act.mk
submodules:## 	git submodule update --init --recursive
	type -P git && git submodule update --init --recursive || echo "install git..."
tag:
	@git tag $(OS)-$(OS_VERSION)-$(ARCH)-$(shell date +%s)
	@git push -f --tags
.ONESHELL:
docker-start:## 	start docker
	test -d .venv || $(PYTHON3) -m virtualenv .venv
	( \
	   source .venv/bin/activate; pip install -q -r requirements.txt; \
	   python3 -m pip install -q omegaconf \
	   pip install -q --upgrade pip; \
	);
	( \
	    while ! docker system info > /dev/null 2>&1; do\
	    echo 'Waiting for docker to start...';\
	    if [[ '$(OS)' == 'Linux' ]]; then\
	     systemctl restart docker.service;\
	    fi;\
	    if [[ '$(OS)' == 'Darwin' ]]; then\
	     open --background -a /./Applications/Docker.app/Contents/MacOS/Docker;\
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

	#@[[ '$(shell uname -s)' != 'Darwin' ]] && echo "not Darwin" || echo "is Darwin";
	#@[[ '$(shell uname -m)' != 'x86_64' ]] && echo "not x86_64" || echo "is x86_64";
	#@[[ '$(shell uname -p)' != 'i386' ]]   && echo "not i386" || echo "is i386";

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

.PHONY: venv
venv:## 	create python3 virtualenv .venv
	test -d .venv || $(PYTHON3) -m virtualenv .venv
	( \
	   source .venv/bin/activate; pip install -q -r requirements.txt; \
	   python3 -m pip install -q omegaconf \
	   pip install -q --upgrade pip; \
	);
	@echo "To activate (venv)"
	@echo "try:"
	@echo ". .venv/bin/activate"
	@echo "or:"
	@echo "make test-venv"
test-venv:## 	test virutalenv .venv
	# insert test commands here
	test -d .venv || $(PYTHON3) -m virtualenv .venv
	( \
	   source .venv/bin/activate; pip install -q -r requirements.txt; \
	   python3 -m pip install -q omegaconf \
	   pip install -q --upgrade pip; \
	);


-include Makefile
-include act.mk