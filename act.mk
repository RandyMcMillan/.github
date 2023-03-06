act-autogen-alpine:
	@export $(cat ~/GH_TOKEN.txt) && act -vbr -W .github/workflows/autogen_alpine.yml 