class Arena
   def initialize(name)
      @name = name
      @gladiators = []
   end

   def name
      @name
   end

   def gladiators
      @gladiators
   end

   def new_gladiator(name, weapon)
      if @gladiators.length < 20
         @gladiators.push({name: name, weapon: weapon})
      end
   end

   def find(name)
      @gladiators.each do |gladiator|
         if gladiator[:name] == name
            return true
         else
            return false
         end
      end
   end

end