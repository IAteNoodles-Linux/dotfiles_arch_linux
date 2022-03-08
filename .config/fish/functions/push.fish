function push
set rep_path (pwd)
if string match -q "/home/nuub/Project/IAteNoodles/School/Banking_API" $rep_path
eval ssh-agent >> ssh_agent-tmp.sh
echo "ssh-add ~/.ssh/IAteNoodles" >> ssh_agent-tmp.sh
echo "git push" >> ssh_agent-tmp.sh
sh ssh_agent-tmp.sh
end
rm -f ssh_agent-tmp.sh
end
