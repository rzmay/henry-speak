def fauxRand(str, ind, min, max)
  num1 = str.length
  num2 = str.split(" ").length
  num3 = str.split(" ")[ind].length
  ret = (num1**num3) / (num2+num3)
  if num2 > 1
    ret = ((ret**num2)/(num1*num3))
  else
    ret = ((ret**9)/(num1*num3))
  end
  digs = max.to_s.length
  goodNum = ret.to_s[(ret.to_s.length)/2..((ret.to_s.length)/2)+digs-1].to_i
  ind1 = (ret.to_s.length)/2
  ind2 = ((ret.to_s.length)/2)+digs-1
  while goodNum < min || goodNum > max
    if ind2 >= ret.to_s.length
      ret = (ret/num1)**2
    end
    ind1+=1
    ind2+=1
    goodNum = ret.to_s[ind1..ind2].to_i
  end
  return goodNum
end

def isSignif(str, ind)
  vowels = ['a','e','i','o','u','y',' ','.',',',';',':','"','\'','!','?','r']
  if vowels.include?(str[ind])
    return true
  elsif str[ind] == 'l' || str[ind] == 'r'
    return true
  elsif str[ind-1] == str[ind] || str[ind+1] == str[ind]
    return true
  elsif str[ind] == 'w' && vowels.include?(str[ind-1])
    return true
  elsif vowels.include?(str[ind+1]) == false || vowels.include?(str[ind+1]) == false
    return true
  elsif str[ind] =='h' && vowels.include?(str[ind-1]) == false
    return true
  else
    return false
  end
end

def stringMode(str)
  vowels = ['a','e','i','o','u','y',' ','.',',',';',':','"','\'','!','?','r']
  cons = []
  str = str.split('')
  str.each do |l|
    inList = false
    cons.each do |elem|
      if elem[0] == l
        inList = true
      end
    end
    if inList == false && vowels.include?(l) == false
      cons.push([l, 1])
    elsif vowels.include?(l) == false
      cons.each do |rec|
        if rec[0] == l
          rec[1] += 1
        end
      end
    end
  end
  mode = 'none'
  modenum = 0
  cons.each do |rec|
    if rec[1] > modenum
      mode = rec[0]
      modenum = rec[1]
    elsif rec[1] == modenum
      mode = 'none'
    end
  end
  if modenum > 2
    return mode
  else
    return 'none'
  end
end

def makeB(str)
  string = ""
  ind = 0
  if stringMode(str) == 'none'
    str.split('').each do |l|
      if isSignif(str, ind) == false
        string += 'b'
      else
        string += l
      end
      ind += 1
    end
  else
    str.split('').each do |l|
      if l == stringMode(str)
        string += 'b'
      else
        string += l
      end
    end
  end
  return string
end

def translateWord(str, fustr, ind)
  vowels = ['a','e','i','o','u','y',' ','.',',',';',':','"','\'','!','?','r','l']
  names = "Noah Liam Mason Jacob William Ethan James Alexander Michael Benjamin Elijah Daniel Aiden Logan Matthew Lucas Jackson David Oliver Jayden Joseph Gabriel Samuel Carter Anthony John Dylan Luke Henry Andrew Isaac Christopher Joshua Wyatt Sebastian Owen Caleb Nathan Ryan Jack Hunter Levi Christian Jaxon Julian Landon Grayson Jonathan Isaiah Charles Thomas Aaron Eli Connor Jeremiah Cameron Josiah Adrian Colton Jordan Brayden Nicholas Robert Angel Hudson Lincoln Evan Dominic Austin Gavin Nolan Parker Adam Chase Jace Ian Cooper Easton Kevin Jose Tyler Brandon Asher Jaxson Mateo Jason Ayden Zachary Carson Xavier Leo Ezra Bentley Sawyer Kayden Blake Nathaniel Gerald Robert Avi Ben Oscar Lucas Sequoyah Jude".downcase.split(" ")
  beverages = "beer tea brandy cocoa cocktail coffee coke juice lemonade liquor milk milkshake punch soda water whiskey wine".downcase.split(" ")
  if str == "rick"
    return "Pickle Jeoff"
  elsif (str == "are" || str == "am") && fustr.split(" ")[ind+1] != 'a' && fustr.split(" ")[ind+1] != 'the' && fustr.split(" ")[ind+1] != 'an'
    return 'have'
  elsif (str == "was" || str == "were") && fustr.split(" ")[ind+1] != 'a' && fustr.split(" ")[ind+1] != 'the' && fustr.split(" ")[ind+1] != 'an'
    return 'had'
  elsif str == "is" && fustr.split(" ")[ind+1] != 'a' && fustr.split(" ")[ind+1] != 'the' && fustr.split(" ")[ind+1] != 'an'
    return 'has'
  elsif str == 'a'
    return 'an'
  elsif str == 'like'
    return 'perhaps enjoy'
  elsif names.include?(str)
    numb = fauxRand(fustr, ind, 1, 6)
    joest = fauxRand(fustr, ind, 1, 10)
    if numb == 3
      numb2 = fauxRand(fustr, ind, 0, 8)
      case numb2
      when 1
        tempret = "Geoff"
      when 2
        tempret = "Geff"
      when 3
        tempret = "Jeff"
      when 4
        tempret = "Jeoff"
      when 5
        tempret = "Jeoffery"
      when 6
        tempret = "Geoffery"
      when 7
        tempret = "Polnajeff"
      when 8
        tempret = "The bool-Aid Man"
      else
        tempret = "Nama Jeff"
      end
      if joest == 5
        tempret += " Joestar"
      end
    elsif numb == 4
      tempret = "beter"
      if joest == 5
        tempret += " boestar"
      end
    else
      tempret = str
    end
    return tempret
  elsif str == 'gay' || str == 'homosexual' || str == 'homo' || str == 'fag' || str == 'faggot'
    whichGay = fauxRand(fustr, ind, 1, 3)
    case whichGay
    when 1
      return "gæ"
    when 2
      return "gau"
    when 3
      return "hømößęxûåł"
    end
  elsif str == 'stupid' || str == 'dumb' || str == 'foolish'
    whichRetard = fauxRand(fustr, ind, 1, 3)
    case whichRetard
    when 1
      return 'retarded'
    when 2
      return 'autistic'
    when 3
      return str + ' and also ' + translateWord('gay', fustr, ind)
    end
  elsif str == 'nigger' || str == 'nigga'
    return "bibbo"
  elsif str == 'who' || str == 'whom'
    whichWho = fauxRand(fustr, ind, 1, 6)
    case whichWho
    when 1
      return 'whomst'
    when 2
      return 'whomst\'d'
    when 3
      return 'whomst\'d\'ve'
    when 4
      return 'whomst\'d\'ve\'ly\'yaint\'nt\'ed\'ies\'s\'y\'es'
    when 5
      return 'whomst\'th'
    when 6
      return 'whomst\'d\'ve\'lu\'yaint\'nt\'ed\'ies\'s\'y\'es\'nt\'t\'re\'ing\'able\'tic\'ive\'al\'nt\'ne\'m\'ll\'ble\'al\'ny'
    end
  elsif str == 'want'
    return 'require'
  elsif str == 'wanted'
    return 'required'
  elsif str == 'wants'
    return 'requires'
  elsif str == 'cool' || str == 'awesome' || str == 'good' || str == 'great'
    swagBucks = fauxRand(fustr, ind, 0, 19)
    case swagBucks
    when 0
      return 'swagbucks'
    when 1
      return 'big swagbucks'
    when 2
      return 'mega swagbucks'
    when 3
      return 'enormous swagbucks'
    when 4
      return 'large swagbucks'
    when 5
      return 'omnidirectional swagbucks'
    when 6
      return 'truncated swagbucks'
    when 7
      return 'flat swagbucks'
    when 8
      return 'round swagbucks'
    when 9
      return 'elongated swagbucks'
    when 10
      return 'spherical swagbucks'
    when 11
      return 'lanky swagbucks'
    when 12
      return 'greato daze'
    when 13
      return 'mad swagbucks'
    when 14
      return 'very niceu, Caesarino'
    when 15
      return 'swagbuck'
    when 16
      return 'singular swagbuck'
    when 17
      return 'swagbux'
    when 18
      return 'robux'
    when 19
      return 'robuck'
    end
  elsif str == 'very' || str == 'exceedingly' || str == 'really'
    bigWord = fauxRand(fustr, ind, 0, 5)
    case bigWord
    when 0
      return 'big'
    when 1
      return 'large'
    when 2
      return 'long'
    when 3
      return 'pickle'
    when 4
      return 'mad'
    when 5
      return 'mega'
    end
  elsif beverages.include?(str)
    whichBev = fauxRand(fustr, ind, 1, 3)
    includeSwag = fauxRand(fustr, ind, 1, 3)
    if includeSwag == 2
      case whichBev
      when 1
        return "bepis, the beverage for children with swagger,"
      when 2
        return "bobabola, the beverage for children with swagger,"
      when 3
        return "bool-aid, the beverage for children with swagger,"
      end
    else
      case whichBev
      when 1
        return "bepis"
      when 2
        return "bobabola"
      when 3
        return "bool-aid"
      end
    end
  elsif str.length < 4
    return str
  elsif str.length <= 5 && vowels.include?(str[0]) == false
    str[0] = 'b'
    return str
  else
    return makeB(str)
  end
end

def chances()
  random = Random.rand(1..30)
  string = "none"
  if random == 1
    string = "don't come to school tomorrow."
  elsif random == 2
    string = "Hey Beter!"
  elsif random == 3
    string = "To be fair, you have to have a very high IQ to understand Rick and Morty. The humour is extremely subtle, and without a solid grasp of theoretical physics most of the jokes will go over a typical viewer’s head. There’s also Rick’s nihilistic outlook, which is deftly woven into his characterisation, his personal philosophy draws heavily from Narodnaya Volya literature, for instance. The fans understand this stuff. they have the intellectual capacity to truly appreciate the depthsof these jokes, to realise that they’re not just funny, they say something deep about LIFE. As a consequence people who dislike Rick and Morty truly ARE idiots, of course they wouldn’t appreciate, for instance, the humour in Rick’s existential catchphrase “Wubba Lubba Dub Dub,” which itself is a cryptic reference to Turgenev’s Russian epic Fathers and Sons. I’m smirking right now just imagining one of those addlepated simpletons scratching their heads in confusion as Dan Harmon’s genius witunfolds itself on their television screens. What fools.. how I pity them."
  end
  return string
end


def main()
  full = ""
  other = chances()
  if other == "none"
    ind = 0
    ARGV[0].downcase.split(" ").each do |str|
      full += translateWord(str, ARGV[0], ind)
      full += " "
      ind+=1
    end
    puts "\n" + full + "\n"
    system("say \"#{full}\"")
    return full
  else
    puts "\n" + other + "\n"
    system("say \"#{other}\"")
    return other
  end
end

main()
