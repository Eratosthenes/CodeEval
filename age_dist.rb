def age_dist(n)
  case
  when n.between?(0, 2)  
    "Still in Mama's arms" 
  when n.between?(3, 4) 
    "Preschool Maniac" 
  when n.between?(5, 11)  
    "Elementary school" 
  when n.between?(12, 14) 
    "Middle school" 
  when n.between?(15, 18) 
    "High school" 
  when n.between?(19, 22) 
    "College"
  when n.between?(23, 65) 
    "Working for the man" 
  when n.between?(66, 100) 
    "The Golden Years" 
  else 
    "This program is for humans"
  end
end

puts age_dist(0)
puts age_dist(19)
