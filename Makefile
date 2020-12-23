PKG_MAN = brew

deps:
	$(PKG_MAN) install vagrant virtualbox ansible kubectl

cluster:
	find . -type f -name join-command -delete
	vagrant destroy --force || true
	vagrant up

provision:
	vagrant provision

.PHONY: clean
clean:
	find . -type f -name join-command -delete
