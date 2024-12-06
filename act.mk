alpine:## 	run act in .github
	$(MAKE) docker-start
	@export GITHUB_TOKEN=$(cat ~/GITHUB_TOKEN.txt) && act -v $(BIND) $(REUSE)  --userns $(PROJECT_NAME)  -W .github/workflows/$@.yml
automate:## 	run act in .github
	$(MAKE) docker-start
	@export GH_ACT_TOKEN=$(cat ~/GH_TOKEN.txt) && act -v $(BIND) $(REUSE)  --userns $(PROJECT_NAME)  -W .github/workflows/$@.yml
