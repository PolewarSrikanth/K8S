echo "Installtion starts"

sudo apt-get update -y

sudo apt-get install apt-transport-https -y

curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add

echo "deb http://apt.kubernetes.io/ kubernetes-xenial main" > /etc/apt/sources.list.d/kubernetes.list

apt-get update

apt-get install -y docker.io

systemctl enable docker.service

apt-get install -y kubelet kubeadm kubectl

docker version

kubeadm version

kubectl version

echo "Installtion completed"
