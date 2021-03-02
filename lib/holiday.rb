require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
  holiday_hash[:summer][:fourth_of_july][1]
  
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays

  holiday_supplies[:winter][:christmas] << supply
  holiday_supplies[:winter][:new_years] << supply
  
  #another way to do this
  #holiday.hash[:winter].each do |supply, decor|
    #decor << supply 
  #this calls the holiday_hash and the :winter key hash. within winter look at supply and decor
  #once you go through supply and decor, you are going to add the supply to the decor
  #you want to push the supply to the end of the decor, you dont want to add a new one, you want to add it to the end
  
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array

  holiday_hash[:spring][:memorial_day] << supply

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)

    holiday_hash[season][holiday_name] = supply_array

    holiday_hash

  # code here
  # remember to return the updated hash

end
# given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }

  # array = ['red', 'blue', 'green']
  # array.map do |color|
  #   color = "red"
  # end

  # hash = { name: 'Brandon', color: 'Blue' }
  # hash.map do |key, value|
  #   key = "name" 
  #   value = "Brandon"
  # end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].collect do | holiday, supplies |
    supplies
  end.flatten
end

 # winter_supplies.flatten #flatten takes a nested array and 'un-nests' the array

  # easier way to write this would be holiday_hash[:winter].values.flatten
  #^ this calls the holiday hash 
   
  # return an array of all of the supplies that are used in the winter season
  

def all_supplies_in_holidays(holiday_hash)
    holiday_hash.each do |season, holidays|
      #season = 'winter', holiday = Hash with christmas and new years and their decorations
      # #capitalize will turn winter into Winter
      # #upcase will turn winter into WINTER
      # #titleize will turn hello what is your name? into Hello what is your name?
      puts "#{season.capitalize}:"
      holidays.each do |each_holiday, supplies|
        #holiday = :christmas, decorations = lights, wreath, 2nd iteration, holiday = :new_years, decorations = party hats
        puts "  #{each_holiday.to_s.split('_').map { |holiday| holiday.capitalize }.join(' ')}: #{supplies.join(", ")}"
      end 
    end
end

# array = [1,2,3]
# array.map do |number|
#   number + 1
# end
# array.map { |number| number + 1 } = [2, 3, 4]
# colors = ['blue', 'green']
# array.map { |color| color + '!' } = ['blue!', 'green!']
# array.map { |color| color.capitalize}

# holiday_supplies = {
#   :winter => {
#     :christmas => ["Lights", "Wreath"],
#     :new_years => ["Party Hats"]
#   },
#   :summer => {
#     :fourth_of_july => ["Fireworks", "BBQ"]
#   },
#   :fall => {
#     :thanksgiving => ["Turkey"]
#   },
#   :spring => {
#     :memorial_day => ["BBQ"]
#   }
# }

# iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.


#   holiday_hash.each do | season, holidays |
#     puts "#{season.capitalize}:"
#       holidays.each do | each_holiday, supplies |
#         puts "   #{each_holiday.to_s.split(, ).map { |holiday| holiday.capitalize }.join(' ') }: #{supplies.join(", ")}" 
#       end 

#   end




    
    
  



def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols/ as keys) where supply lists
  # include the string "BBQ"
  holiday_names = []
  holiday_hash.each do |season, holiday| #we can only start with going through each season and then holiday before we can look at holiday and supply
    holiday.each do |holiday, supply| # now that we went through season and holiday, we can look at season and holiday
      if supply.include?("BBQ") #does the supply found in the iteration include bbq? 
        holiday_names << holiday #if it does, we need to push bbq into the new array
      end
    end
  end   
  holiday_names #we always need to call the new variable
end







