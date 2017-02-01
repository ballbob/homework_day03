### A. Given the following data structure:

lines = ['Gyle Centre', 'Edinburgh Park', 'Murrayfield Stadium', 'Haymarket', 'Princes Street']

# 1. Work out how many stops there are in the array
def lines_length(array)
  return array.length
end
puts lines_length(lines)
#or
def lines_length2(array)
    return array.count
end
puts lines_length2(lines)

# 2. Return 'Edinburgh Park' from the array
def find_item(array,searched)
  for item in array
    if item = searched
      puts "#{item} found."
    end
      return "Not found."
  end
end
find_item(lines,'Edinburgh Park')

# 3. How many ways can we return 'Princes Street' from the array?
puts lines.last
puts lines[4]
puts lines.at(4)
puts lines.drop(4)

# 4. Work out the index position of 'Haymarket'
puts lines.index('Haymarket')

# 5. Add 'Airport' to the start of the array
lines.unshift('Airport')
print lines

# 6. Add 'York Place' to the end of the array
lines << 'York Place'
puts lines

# 7. Remove 'Edinburgh Park' from the array using it's name
lines.delete('Edinburgh Park')
print lines

# 8. Delete 'Edinburgh Park' from the array by index

#lines.delete_at(3) 
#puts lines
#Commented out as this has already been deleted and a new item is at that index point.

# 9. Reverse the positions of the stops in the array
lines.reverse!
puts lines 
### B. Given the following data structure:

my_hash = {"0" => "Zero", 1 => "One", :two => "Two", "two" => 2}

# 1. How would you return the string `"One"`?
puts my_hash[1]

# 2. How would you return the string `"Two"`?
puts my_hash[:two]
#assuming question case-sensitive

# 3. How would you return the number `2`?
puts my_hash["two"]

# 4. How would you add `{3 => "Three"}` to the hash?
my_hash[3] = "Three"
puts my_hash

# 5. How would you add `{:four => 4}` to the hash?
my_hash[:four] = 4
puts my_hash

### C. Given the following data structure:

users = {
  "Jonathan" => {
    :twitter => "jonnyt",
    :favourite_numbers => [12, 42, 75, 12, 5],
    :home_town => "Stirling",
    :pets => {
      "fluffy" => :cat,
      "fido" => :dog,
      "spike" => :dog
    }
  },
  "Erik" => {
    :twitter => "eriksf",
    :favourite_numbers => [8, 12, 24],
    :home_town => "Linithgow",
    :pets => {
      "nemo" => :fish,
      "kevin" => :fish,
      "spike" => :dog,
      "rupert" => :parrot
    }
  },
  "Avril" => {
    :twitter => "bridgpally",
    :favourite_numbers => [12, 14, 85, 88],
    :home_town => "Dunbar",
    :pets => {
      "colin" => :snake
    },
    },
  "Bob" => {
    :twitter => "nonnayabidniz",
    :favourite_numbers => [0, 8, 8, 10, 10, 90],
    :home_town => "Wick",
    :pets => "N/A"
    }
  }

# 1. Return Jonathan's Twitter handle (i.e. the string `"jonnyt"`)
puts users["Jonathan"][:twitter]

# 2. Return Erik's hometown
puts users["Erik"][:home_town]

# 3. Return the array of Erik's favorite numbers
puts users["Erik"][:favourite_numbers]

# 4. Return the type of Avril's pet Colin
puts users["Avril"][:pets]["colin"]
#I love Colin already

# 5. Return the smallest of Erik's favorite numbers
puts users["Erik"][:favourite_numbers].first

# 6. Add the number `7` to Erik's favorite numbers
users["Erik"][:favourite_numbers].unshift(7)
puts users["Erik"][:favourite_numbers]

# 7. Change Erik's hometown to Edinburgh
users["Erik"][:home_town] = "Edinburgh"
puts users["Erik"][:home_town]

# 8. Add a pet dog to Erik called "Fluffy"
users["Erik"][:pets]["Fluffy"] = :dog
puts users["Erik"][:pets]

# 9. Add yourself to the users hash
puts users["Bob"]