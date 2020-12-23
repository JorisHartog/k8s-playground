PKG_MAN = brew
KUBECTL = vagrant ssh k8s-master -- kubectl

deps:
	$(PKG_MAN) install vagrant virtualbox ansible kubectl

cluster: clean
	vagrant up

deploy:
	$(KUBECTL) apply -f /vagrant/manifests/mongo-secret.yaml
	$(KUBECTL) apply -f /vagrant/manifests/mongodb.yaml

.PHONY: clean
clean:
	find . -type f -name join-command -delete
	vagrant destroy --force || true
