# ansible all -m ping --private-key=/home/misaki/Ansible/myboomi.cer
# sudo chmod 777 cp
# ansible-inventory aws_ec2.yaml --list
# ansible aws_region_eu_west_1 -m ping --private-key=/home/misaki/Ansible/myboomi.cer
# sudo ansible-playbook docker_conf.yaml
# https://3.253.80.56

sudo ansible-playbook create_ec2.yaml 
echo "[localhost]" >> /etc/ansible/hosts
echo "local" >> /etc/ansible/hosts


sudo sed -i "11i inventory      = /home/misaki/Ansible/playbooks/aws_ec2.yaml" /etc/ansible/ansible.cfg
sudo sed -i "12i remote_user    = ubuntu" /etc/ansible/ansible.cfg
sudo sed -i "331i enable_plugins = aws_ec2" /etc/ansible/ansible.cfg
sudo chmod 777 /home/misaki/.ansible/cp

sudo ansible-playbook docker_conf.yaml