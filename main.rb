def fibs(n, arr = [0, 1])
  return arr if n <= 2
  (n - 1).times do
    arr << arr[-1] + arr[-2]
  end
  return arr
end

def fibs_rec(n, arr = [0, 1])
  return arr if n <= 2
  arr << arr[-1] + arr[-2]
  fibs_rec(n - 1, arr)
end
