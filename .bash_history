sudo apt update
sudo apt install open-vm-tools -y
sudo swapoff --all
sudo sed -ri '/\sswap\s/s/^#?/#/'/etc/fstab
sudo vi /etc/fstab
cat /etc/fstab
sudo apt update
cat /etc/netplan/00-installer-config.yaml 
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) \
  stable"
sudo apt install -y docker-ce docker-ce-cli containerd.io
sudo usermod -aG docker $USER
sudo shutdown -r now
sudo systemctl enable docker
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
cat <<EOF | sudo tee /etc/apt/sources.list.d/kubernetes.list
 deb https://apt.kubernetes.io/ kubernetes-xenial main
EOF

sudo apt install -y kubelet kubeadm kubectl
sudo apt-mark hold kubelet kubeadm kubectl
sudo kubeadm init
sudo halt
sudo kubeadm init
kubectl get pods
kubectl get pods -A
watch kubectl get pods -A
sudo  export KUBECONFIG=/etc/kubernetes/admin.conf
sudo -i
watch kubectl get pods -A
sudo curl https://docs.projectcalico.org/manifests/calico.yaml -O
ls
watch kubectl get pods -A
sudo reboot
kubectl get pods -A
kubectl get nodes
watch kubectl get nodes
kubectl get pods -A
watch kubectl get pods -A
kubectl get pods -A -o wide
sudo reboot
watch kubectl get pods -A
watch kubectl get pods -A -o wide
kubectl get svc
kubectl get svc -A
sudo cat /etc/iscsi/initiatorname.iscsi
sudo vi /etc/iscsi/initiatorname.iscsi
sudo cat /etc/iscsi/initiatorname.iscsi
systemctl restart iscsid.service
sudo systemctl restart iscsid.service
sudo cat /etc/iscsi/initiatorname.iscsi
kubeectl get nodes
kubeectl get node
kubectl get node
kubectl get pods -A
kubectl get nodes
kubectl get npods -A
kubectl get nodes -A
ls
vi pure.json
cat pure.json 
vi read.me
cat read.me 
kubectl get nodes -A
clear
kubectl get pods
kubectl get nodes
wget px.yaml 'https://install.portworx.com/2.8?mc=false&kbver=1.21.3&b=true&kd=size%3D32&s=%22size%3D150%22&pureSanType=ISCSI&c=px-cluster-be7de68a-f8d7-4269-a58f-65f75d062e9a&stork=true&csi=true&mon=true&st=k8s'
ls -la
mv '2.8?mc=false&kbver=1.21.3&b=true&kd=size=32&s="size=150"&pureSanType=ISCSI&c=px-cluster-be7de68a-f8d7-4269-a58f-65f75d062e9a&stork=true&csi=true&mon=true&st=k8s'
mv '2.8?mc=false&kbver=1.21.3&b=true&kd=size=32&s="size=150"&pureSanType=ISCSI&c=px-cluster-be7de68a-f8d7-4269-a58f-65f75d062e9a&stork=true&csi=true&mon=true&st=k8s' px-spec.yaml
ls -la
cat px-spec.yaml 
ls -la
mv px-spec.yaml px-spec-2.8.yaml
ls -la
exit
ls -la
pwd
kubectl get nodes -o wide
