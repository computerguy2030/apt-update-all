Hosts=$(grep -oP '(?<=Host ).*' ~/.ssh/config | grep -ve "#exclude here")
echo ""
echo $Hosts
echo ""
echo "---------------------------------------------------"
for i in $Hosts; do
	echo $i;
	pass=$(grep -oP '(?<='$i' ).*' ~/.ssh/passwords);
	echo $pass;
	ssh -t $i "echo $pass | sudo -S apt-get update && sudo apt-get upgrade -y"
	echo ""
	echo "---------------------------------------------------"
done

