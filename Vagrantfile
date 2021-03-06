# -*- mode: ruby -*-
# vi: set ft=ruby :

IMAGE_NAME = "centos/8"
NUM_WORKERS = 2
ANSIBLE_VERSION = "2.0"

Vagrant.configure("2") do |config|
    config.ssh.insert_key = false

    config.vm.define "k8s-master" do |master|
        master.vm.box = IMAGE_NAME
        master.vm.network "private_network", ip: "10.13.37.10",
            virtualbox__intnet: true
        master.vm.hostname = "k8s-master"
        master.vm.provision "ansible" do |ansible|
            ansible.compatibility_mode = ANSIBLE_VERSION
            ansible.playbook = "playbooks/master-playbook.yml"
            ansible.extra_vars = {
                node_ip: "10.13.37.10",
            }
        end
        master.vm.provider "virtualbox" do |v|
            v.memory = 2048
            v.cpus = 2
        end
    end

    (1..NUM_WORKERS).each do |i|
        config.vm.define "k8s-worker-#{i}" do |worker|
            worker.vm.box = IMAGE_NAME
            worker.vm.network "private_network", ip: "10.13.37.#{i + 99}",
                virtualbox__intnet: true
            worker.vm.hostname = "k8s-worker-#{i}"
            worker.vm.provision "ansible" do |ansible|
                ansible.compatibility_mode = ANSIBLE_VERSION
                ansible.playbook = "playbooks/worker-playbook.yml"
                ansible.extra_vars = {
                    node_ip: "10.13.37.#{i + 10}",
                }
            end
            worker.vm.provider "virtualbox" do |v|
                v.memory = 1024
                v.cpus = 2
            end
        end
    end
end
