def fruit(reels, spins)

  points = {
    "Wild" => 10,
    "Star" => 9,
    "Bell" => 8,
    "Shell" => 7,
    "Seven" => 6,
    "Cherry" => 5,
    "Bar" => 4,
    "King" => 3,
    "Queen" => 2,
    "Jack" => 1
  }

  result = []
  i = 0
  reels.each do |array|
    result << array[spins[i]]
    i += 1
  end

  freq = {}
  result.each{ |x| freq.key?(x) ? freq[x] += 1 : freq[x] = 1 }


  if freq.invert.key?(3)
    puts points[freq.invert[3]] * 10
  elsif freq.invert.key?(2) && freq.key?("Wild") && freq.invert[2] != "Wild"
    puts points[freq.invert[2]] * 2
  elsif freq.invert.key?(2)
    puts points[freq.invert[2]]
  else
    puts 0
  end

end





reel = ["Wild","Star","Bell","Shell","Seven","Cherry","Bar","King","Queen","Jack"]
spin = [0,0,0]
fruit([reel,reel,reel],spin)       #, 100, "Should return: '100'")


reel1 = ["Wild", "Star", "Bell", "Shell", "Seven", "Cherry", "Bar", "King", "Queen", "Jack"]
reel2 = ["Bar", "Wild", "Queen", "Bell", "King", "Seven", "Cherry", "Jack", "Star", "Shell"]
reel3 = ["Bell", "King", "Wild", "Bar", "Seven", "Jack", "Shell", "Cherry", "Queen", "Star"]
spin = [5,4,3]
fruit([reel1,reel2,reel3],spin)     #, 0, "Should return: '0'")



reel1 = ["King", "Cherry", "Bar", "Jack", "Seven", "Queen", "Star", "Shell", "Bell", "Wild"]
reel2 = ["Bell", "Seven", "Jack", "Queen", "Bar", "Star", "Shell", "Wild", "Cherry", "King"]
reel3 = ["Wild", "King", "Queen", "Seven", "Star", "Bar", "Shell", "Cherry", "Jack", "Bell"]
spin = [0,0,1]
fruit([reel1,reel2,reel3],spin) #, 3, "Should return: '3'")

reel1 = ["King", "Jack", "Wild", "Bell", "Star", "Seven", "Queen", "Cherry", "Shell", "Bar"]
reel2 = ["Star", "Bar", "Jack", "Seven", "Queen", "Wild", "King", "Bell", "Cherry", "Shell"]
reel3 = ["King", "Bell", "Jack", "Shell", "Star", "Cherry", "Queen", "Bar", "Wild", "Seven"]
spin = [0,5,0]
fruit([reel1,reel2,reel3],spin)      #, 6, "Should return: '6'")




reel1 = ["Star", "Jack", "Queen", "Shell", "Bell", "Cherry", "Bar", "Seven", "King", "Wild"]
reel2 = ["Star", "Seven", "Queen", "Bar", "Cherry", "Wild", "King", "Shell", "Jack", "Bell"]
reel3 = ["King", "Shell", "Bar", "Wild", "Jack", "Bell", "Seven", "Star", "Queen", "Cherry"]
spin = [9, 3, 3]
fruit([reel1,reel2,reel3],spin)
