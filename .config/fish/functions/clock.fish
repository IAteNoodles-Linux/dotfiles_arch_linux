function clock --wraps='tty-clock -sxbturDB -c -C 1' --wraps='tty-clock -sxbtrDB -c -C 1' --description 'alias clock=tty-clock -sxbtrDB -c -C 1'
  tty-clock -sxbtrDB -c -C 1 $argv; 
end
