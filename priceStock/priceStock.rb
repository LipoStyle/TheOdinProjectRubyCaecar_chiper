# declaring and initializing our test aray
test = [17,3,6,9,15,8,6,1,10]

#declaring our method  
def stock_picker(pinakas)
#declaring and initializing to 0 our max income from buys and sales, same as the array of their pairs
megisto_kerdos = 0
pinakasKerdous = []

  # looping the array for first time and setting  the buying day
pinakas.each {|agora|
 mera_agoras = agora
  # setting the parameter of the second loop to sell after the buy day and not some other day and starting a second loop from the buyiing time 
 pwlhsh =  pinakas.index(agora)
  for x in (pwlhsh .. pinakas.length - 1) do
    # setting the sell day
    mera_polhshs = pinakas[x]
  # finding the the income of every sale transaction 
    prosorino_kerdos = mera_polhshs - mera_agoras
    # if the max income is lower than the day trnasacion we make it max income and then putting the pairs of that transaction to our array 
    if megisto_kerdos < prosorino_kerdos
      megisto_kerdos = prosorino_kerdos
      pinakasKerdous = [pinakas.index(agora), x]
    end
  end
}
  # and in the end we retrourn the array of the pairs
return pinakasKerdous
end
p stock_picker(test)