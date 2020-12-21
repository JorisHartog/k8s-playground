PKG_MAN = brew

deps:
	$(PKG_MAN) install vagrant virtualbox ansible kubectl

cluster:
	rm playbooks/join-command || true
	vagrant destroy --force
	vagrant up

provision:
	vagrant provision

.PHONY: clean
clean:
	rm playbooks/join-command
