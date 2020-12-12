echo -e "\033[0;33m";
echo "The script you are about to run will do the following:"
echo ""
echo "  Install or upgrade the following packages depending on the OS"
echo "  [ ] Python3-pip"
echo "  [ ] Python3-venv"
echo "  [ ] epel-release, libselinux-python dnf (RHEL7/CentOS7)"
echo "  [ ] Python3-pip, git"
echo "  [ ] libselinux-python3 (RHEL7/CentOS7)"
echo "  [ ] Upgrade pip3 to version 20.x or later"
echo "  [ ] create a Python3 virtual environment at /etc/corelight-env/"
echo "  [ ] Install Ansible in the /etc/corelight-env/ virtual environment"
echo "  "
read -p "Press any key to continue or CTRL-C to cancel ..."
echo -e "\033[0m"

echo -e "\033[1;32m"
clear
echo "                               ";
echo "    ((((                       ";
echo "  ((                           ";
echo " ((       |                    ";
echo " ((       |    ))              ";
echo " ((            ))              ";
echo "  (((        )))               ";
echo "     (((())))                  ";
echo ""
echo " Step 1 Complete"
read -p "Press any key to continue ..."
clear
echo "                               ";
echo "    ((((                       ";
echo "  ((     _                     ";
echo " ((      _|                    ";
echo " ((     |_     ))              ";
echo " ((            ))              ";
echo "  (((        )))               ";
echo "     (((())))                  ";
echo ""
echo " Step 2 is manual"
echo -e "\033[0;33m"
echo ""
echo " The following steps must be completed:"
echo " [ ] copy or create a secrets.yml file"
echo " [ ] copy or create one or more variable files"
echo "      - variable files (including secrets files will automatically be loaded from"
echo "        /etc/corelight-env/Corelight-Ansible-Roles/common/"
echo " [ ] copy or create one or more yaml inventory files"
echo "      - inventory files will automatically be loaded from"
echo "        /etc/corelight-env/Corelight-Ansible-Roles/common/inventory/"
echo " [ ] If you are using ansible-vault to encrypt your secrets file, copy or create a"
echo "       vault password file.  Edit /etc/ansible/ansible.cfg and edit the following line:"
echo "    #  vault_password_file = /path/to/vault_password_file"
echo ""
echo ""
echo " The following steps are optional:"
echo " [ ] generate ssh keys with the following command: 'ssh-keygen'"
echo " [ ] copy the ssh public key to all the remote hosts in the inventory with the following playbook:"
echo -e "\033[1;32m     source /etc/corelight-env/bin/activate"
echo -e "\033[1;32m     cd /etc/corelight-env/Corelight-Ansible-Roles/scripts-initial-setup/"
echo -e "\033[1;32m     ansible-playbook -i ../common/inventory/ ./ssh-copy-id-to-all.yml  --extra-vars '@../common/secrets.yml'"
echo ""
read -p "Press any key to continue ..."
clear
echo "                               ";
echo "    ((((                       ";
echo "  ((     _                     ";
echo " ((      _|                    ";
echo " ((      _|    ))              ";
echo " ((            ))              ";
echo "  (((        )))               ";
echo "     (((())))                  ";
echo ""

echo -e "\033[0;32m Step 3"
echo " Install, Configure or Run something"
echo ""
echo -e "\033[0;33m    NOTE: Make sure you activate the python environment first:"
echo -e "\033[1;32m      source /etc/corelight-env/bin/activate"
echo ""
echo -e "\033[0;33m    From the /etc/corelight-env/Corelight-Ansible-Roles/scripts directory"
echo ""
echo -e "\033[0m [ ]  Install and configure Suricata-update on the main host with:"
echo -e "\033[1;32m        ./example-ansible-install-config-all-host.sh"
echo -e "\033[0m         or"
echo -e "\033[1;32m        ansible-playbook -i ../common/inventory/ ../install-config-all-main-host.yml  --extra-vars '@../common/secrets.yml'"
echo ""
echo -e "\033[0m [ ]  Reconfigure Suricata-update on the main host with:"
echo -e "\033[1;32m        ./example-ansible-suricata-update-reconfig-host.sh"
echo -e "\033[0m         or"
echo -e "\033[1;32m        ansible-playbook -i ../common/inventory/ ../install-config-all-main-host.yml  --extra-vars '@../common/secrets.yml'"
echo ""
echo -e "\033[0m [ ]  Run Suricata-update on the main host with:"
echo -e "\033[1;32m        ./example-ansible-suricata-update-run-host.sh"
echo -e "\033[0m         or"
echo -e "\033[1;32m        ansible-playbook -i ../common/inventory/ ../suricata-update-run-host.yml  --extra-vars '@../common/secrets.yml'"
echo ""
echo -e "\033[0m [ ]  Install and configure ALL Software Sensors in inventory with:"
echo -e "\033[1;32m        ./example-ansible-sw-sensor-install-all.sh"
echo -e "\033[0m         or"
echo -e "\033[1;32m        ansible-playbook -i ../common/inventory/ ../install-config-all-software-sensor.yml  --extra-vars '@../common/secrets.yml'"
echo "";
echo -e "\033[0m";



# Note: If you need a password for sudo, add 'ansible_become_pass: '{{centos7_sudo}}' to the inventory file.
# In this example,  add a variable called 'centos7_sudo' to your secrets.yml with the real password.
# If you need if for localhost, make sure you also add it to the 'default-localhost.yml' inventory file or create an entry for localhost in your inventory file.
