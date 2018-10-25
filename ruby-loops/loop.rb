loop do
    print "Quer continuar? (s/n)? "
    resp = gets.chomp.downcase
    if resp == "n"
        break
    end
end