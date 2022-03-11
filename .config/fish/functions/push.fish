function push
set rep_path (pwd)
set identity $argv
if string match -q "" $identity
set identity "IAteNoodles"
end
eval ssh-agent >> ssh_agent-tmp.sh
echo ssh-add ~/.ssh/$identity >> ssh_agent-tmp.sh
echo git push >> ssh_agent-tmp.sh
sh ssh_agent-tmp.sh
rm ssh_agent-tmp.sh
end
