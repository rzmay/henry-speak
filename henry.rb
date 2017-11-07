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
        string += 'B'
      else
        string += l
      end
      ind += 1
    end
  else
    str.split('').each do |l|
      if l == stringMode(str)
        string += 'B'
      else
        string += l
      end
    end
  end
  return string
end

def translateWord(str)
  vowels = ['a','e','i','o','u','y',' ','.',',',';',':','"','\'','!','?','r']
  names = "Noah Liam Mason Jacob William Ethan James Alexander Michael Benjamin Elijah Daniel Aiden Logan Matthew Lucas Jackson David Oliver Jayden Joseph Gabriel Samuel Carter Anthony John Dylan Luke Henry Andrew Isaac Christopher Joshua Wyatt Sebastian Owen Caleb Nathan Ryan Jack Hunter Levi Christian Jaxon Julian Landon Grayson Jonathan Isaiah Charles Thomas Aaron Eli Connor Jeremiah Cameron Josiah Adrian Colton Jordan Brayden Nicholas Robert Angel Hudson Lincoln Evan Dominic Austin Gavin Nolan Parker Adam Chase Jace Ian Cooper Easton Kevin Jose Tyler Brandon Asher Jaxson Mateo Jason Ayden Zachary Carson Xavier Leo Ezra Bentley Sawyer Kayden Blake Nathaniel Robert Avi Ben Oscar Lucas".downcase.split(" ")
  if str == "rick"
    return "Pickle Jeoff"
  elsif names.include?(str)
    numb = Random.rand(1...6)
    joest = Random.rand(1...10)
    if numb == 3
      numb2 = Random.rand(0...7)
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
      else
        tempret = "Nama Jeff"
      end
      if joest == 5
        tempret += " Joestar"
      end
    elsif numb == 4
      tempret = "Beter"
      if joest == 5
        tempret += " Boestar"
      end
    else
      tempret = str
    end
    return tempret
  elsif str == 'gay' || str == 'homosexual' || str == 'homo'
    whichGay = Random.rand(1..3)
    puts "...", "YEET", "..."
    case whichGay
    when 1
      return "gæ"
    when 2
      return "gau"
    when 3
      return "hømößęxûåł"
    end
  elsif str == 'nigger' || str == 'nigga'
    return "bibbo"
  elsif str == 'who' || str == 'whom'
    whichWho = Random.rand(1..6)
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
  elsif str.length < 4
    return str
  elsif str.length <= 5 && vowels.include?(str[0]) == false
    str[0] = 'B'
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
    string = "To be fair, you have to have a very high IQ to understand Rick and Morty. The humour is extremely subtle, and without a solid grasp of theoretical physics most of the jokes will go over a typical viewer’s head. There’s also Rick’s nihilistic outlook, which is deftly woven into his characterisation, his personal philosophy draws heavily from Narodnaya Volya literature, for instance. The fans understand this stuff. they have the intellectual capacity to truly appreciate the depthsof these jokes, to realise that they’re not just funny, they say something deep about LIFE. As a consequence people who dislike Rick & Morty truly ARE idiots, of course they wouldn’t appreciate, for instance, the humour in Rick’s existential catchphrase “Wubba Lubba Dub Dub,” which itself is a cryptic reference to Turgenev’s Russian epic Fathers and Sons. I’m smirking right now just imagining one of those addlepated simpletons scratching their heads in confusion as Dan Harmon’s genius witunfolds itself on their television screens. What fools.. how I pity them."
  end
  return string
end

def main()
  full = ""
  other = chances()
  if other == "none"
    ARGV[0].downcase.split(" ").each do |str|
      full += translateWord(str)
      full += " "
    end
    puts "\n" + full + "\n"
    system("say #{full}")
  else
    puts "\n" + other + "\n"
    system("say #{other}")
  end
end

main()
