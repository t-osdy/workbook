def hanoi(n, from, work, to)
  if n == 0
    []
  else
    hanoi(n-1, from, to, work) +
    [[n, from, to]] +
    hanoi(n-1, work, from, to)
  end
end

hanoi(3,"A","B","C").each{|x| print x[0],": ",x[1]," -> ",x[2];puts}
