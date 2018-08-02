def get_name(person)
  return person[:name]
end


def get_favourite_tv_show(person)
  return person[:favourites][:tv_show]
end


def get_favourite_food(person)
return person[:favourites][:snacks][0]
end

def add_new_friend(person)
  return person[:friends].insert(1,"Scrappy-Doo").length
end

def remove_friend(person)
return person[:friends].drop(1).length
end


def total_amount_of_money(people)
  total = 0
  for person in people
    total += person[:monies].to_i
  end
  return total
end

def total_money(people)
  total_money = 0
  for person in people
    total_money += person[:monies]
  end
  return total_money
end

def lend_money(lender, lendee, amount)
  lender[:monies] -= amount
  lendee[:monies] += amount
end

def all_favourite_foods(people)
  favourite_foods = []
  for person in people
    for snack in person[:favourites][:snacks]
      favourite_foods.push(snack)
    
    end
  end
  return favourite_foods
end

def find_no_friends(people)
  no_mates = []
  for person in people
    if person[:friends].length == 0
      no_mates.push(person)
    end
  end
  return no_mates
end
