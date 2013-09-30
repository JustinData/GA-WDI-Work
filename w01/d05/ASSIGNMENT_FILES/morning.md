#Morning Exercise

###Array and Hash access

**A. Given the following data structure:**

`a = ["Peter", "PJ", "Jeff"]`

1. How would you return the string "Peter"? 
irb(main) > a[0] 
=> "Peter"
2. How would you add your name to the array?
a << Erica or a.push("Erica")
3. How would you remove "PJ" from the array
a.delete("PJ")
**B. Given the following data structure:**

`h = {0 => "Zero", 1 => "One", :two => "Two", "two" => 2}`

1. How would you return the string "One"?
h[1]
2. How would you return the string "Two"?
h[:two] or 
3. How would you return the number 2?
h["two"]
4. How would you add {3 => "Three"} to the hash?
h[3] = "Three"
5. How would you add {:four => 4} to the hash?
h.[:four] = 4
6. How would you remove {1 => "One"} from the hash?
h.delete(1)

### Wizard
- Create a file called wizard.rb
- In it define a wizard class. Here's the spec:
- A wizard has:
  - a name
  - an array of spells (which will be strings)
- We should be able to read and write for each attribute (attr_accessor)
- We should be able to create a new wizard object, and when we create it it should have no spells at first 
- We should be able to convert the wizard object to a string in a way that tells us the name and all the spells they know.

- After you've defined the class:
- Create a new wizard named "Harry Potter" and store it in a variable called harry
- Add "Lumos" to the spells Harry knows
- Add "Accio" to the spells Harry knows
- Add "Expecto Patronum" to the spells Harry knows
- Print harry to the screen to check your to_s method