docker
apt install docker.io
apt install docker
snap install docker
kubectl
kubeadm
snap install kubeadm
cat <<EOF | sudo tee /etc/sysctl.d/k8s.conf
net.bridge.bridge-nf-call-ip6tables = 1
net.bridge.bridge-nf-call-iptables = 1
EOF

sudo sysctl --system
sudo apt-get update && sudo apt-get install -y apt-transport-https curl
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
cat <<EOF | sudo tee /etc/apt/sources.list.d/kubernetes.list
deb https://apt.kubernetes.io/ kubernetes-xenial main
EOF

sudo apt-get update
sudo apt-get install -y kubelet kubeadm kubectl
sudo apt-mark hold kubelet kubeadm kubectl
systemctl daemon-reload
systemctl restart kubelet
exit
kubeadm init 
kubeadm init --ignore-preflight-errors=all
sudo chmod 666 /var/run/docker.sock
exit
systemctl daemon-reload && systemctl restart kubelet
kubeadm init --ignore-preflight-errors=all
exit
systemctl enable docker.service
systemctl start docker.service
systemctl start docker
service docker status
systemctl status docker
kubeadm init --ignore-preflight-errors=all
systemctl enable docker.service
exit
history
cat >> kube_install
