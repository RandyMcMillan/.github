default:act-help
act-help:### 	act-help
	@sed -n 's/^###//p' ${MAKEFILE_LIST} | sed -e 's/://'
	@echo ""
	@echo "act-autogen-alpine           act-autogen-alpine"
	@echo "act-autogen-alpine-reuse     act-autogen-alpine-reuse"

act-automate:###
	@export $(cat ~/GH_TOKEN.txt) && act -vb -W .github/workflows/automate.yml
act-autogen-alpine:###
	@export $(cat ~/GH_TOKEN.txt) && act -vb -W .github/workflows/autogen_alpine.yml
act-autogen-alpine-reuse:###
	@export $(cat ~/GH_TOKEN.txt) && act -vbr -W .github/workflows/autogen_alpine.yml