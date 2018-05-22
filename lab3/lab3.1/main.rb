ARGV[0] = "ex1.txt"
ARGV[1] = "ex2.txt"
sum = c = 0



while ARGV[c] != nil
  File.read(ARGV[c]).split(" ").each do |num|
        (num.to_i%2)==0 ? sum += 1 : nil
    end
  c += 1
end
print sum