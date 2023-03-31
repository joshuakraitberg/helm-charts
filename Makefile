.PHONY: update
update:
	ansible-playbook playbooks/update-charts.yaml -e @watchlist.yaml

.PHONY: index
index:
	helm repo index docs --url https://joshuakraitberg.github.io/helm-charts
