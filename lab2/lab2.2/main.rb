
File.open("../example.txt", "r") do |f|
  f.each_line do |line|
    if line =~ /[A-Z][a-z]/
      print "Class: "
      puts line
    end
    if line =~ /[a-z]/
      print "Method: "
      puts line
    end
    # if line =~ /[A-Z][a-z]/
  end
end



