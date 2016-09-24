def DNA_strand(dna)

  count = 0

  while count < dna.length
    case(dna[count])
      when "A" then dna[count] = "T"
      when "T" then dna[count] = "A"
      when "G" then dna[count] = "C"
      when "C" then dna[count] = "G"
    end
    count += 1
  end

  puts dna
end

DNA_strand("AAAA")
DNA_strand("ATTGC")
DNA_strand("GTAT")
DNA_strand("CCTAGTCTATTTCCAGGCATTTC")
