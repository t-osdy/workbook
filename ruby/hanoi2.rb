def hanoi(n,src,tmp,dst)
  if n == 1
    puts("move #{n}-desc from #{src} to #{dst}")
  else
    hanoi(n-1,src,dst,tmp)
    puts("move #{n}-disc from #{src} to #{dst}")
    hanoi(n-1,tmp,src,dst)
  end
end


cnt = ARGV[0].to_i
hanoi(cnt,"Left","Center","Right")
