act-autogen-alpine:## 	run act in .github
	@export $(cat ~/GH_TOKEN.txt) && act -vb -W .github/workflows/autogen_alpine.yml