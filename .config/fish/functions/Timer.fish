function Timer
termdown $argv[1] && notify-send $argv[2] && espeak $argv[2]
end
