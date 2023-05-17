alpine:## 	run act in .github
	$(MAKE) docker-start
	@export GH_ACT_TOKEN=$(cat ~/GH_TOKEN.txt) && act -v $(BIND) $(REUSE)  --secret $(GH_ACT_TOKEN)  --userns $(PROJECT_NAME)  -W .github/workflows/$@.yml
automate:## 	run act in .github
	$(MAKE) docker-start
	@export GH_ACT_TOKEN=$(cat ~/GH_TOKEN.txt) && act -v $(BIND) $(REUSE)  --secret $(GH_ACT_TOKEN)  --userns $(PROJECT_NAME)  -W .github/workflows/$@.yml