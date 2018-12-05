.PHONY = kubestart kubestop

kubestart:
	@kubectl create -f jenkins
	@kubectl create -f nginx

kubestop:
	@kubtctl delete -f jenkins
	@kubtctl delete -f nginx
