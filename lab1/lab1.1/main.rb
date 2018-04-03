def sum(a,b)
  unless a.is_a? Numeric or b.is_a? Numeric
    a + b
  end
  warn "\e[4m#{__FILE__}:#{__LINE__}\e[0m: \e[31m<tekst_ostrzeżenia>\e[0m"
end

print sum(2 , 2), "\n"



# https://stackoverflow.com/questions/4244611/pass-variables-to-ruby-script-via-command-line