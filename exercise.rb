require 'pry'

beyonceHash = {
    hits: [
      { title: 'bootylicious', group: true, group_name: 'destinysChild', hair: ['straight', 'blonde', 'pink tips'], signature_look: 'fedora with yellow feather', video_theme: 'dressing room dance', best_line: 'Move your body up and down, make your booty touch the ground', fierceness: 7, formation: false, dancers: 20
      },
      { title: 'singleLadies', group: false, group_name: 'none', hair: ['honey brown', 'half up, half down'], signature_look: 'black bodysuit and legs for days', video_theme: 'single ladies dance', best_line: 'if you like it then you should\'ve put a ring on it', fierceness: 10, formation: true, dancers: 2 
      },
      { title: 'letMeUpgradeYou', group: false, group_name: 'none', hair: ['beaded bun', 'wet hair', 'honey brown', 'waves'], signature_look: 'flapper dress and bodysuit', video_theme: 'decadence, water, gold beads and pearls', best_line: 'I could do for you what Martin did for the people', fierceness: 10, formation: true, dancers: 5 
      },
      { title: 'sorry', group: false, group_name: 'none', hair: ['braids', 'bun', 'blonde', 'waves', 'bob'], signature_look: 'braided crown with gold bikini top', video_theme: 'party bus and Serena Williams in bodysuit', best_line: 'Boi bye', fierceness: 10, formation: false, dancers: 1 
      },
      { title: 'sayMyName', group: true, group_name: 'destinysChild', hair: ['blonde', 'curly', 'braid', 'pony tail'], signature_look: 'none', video_theme: 'color blocked scenes with group', best_line: 'say my name, say my name', fierceness: 7, formation: true, dancers: 6 
      },
      { title: 'feelingMyself', group: true, group_name: 'Nicki Minaj featuring Beyonce', hair: ['blonde', 'waves'], signature_look: 'sporty bodysuit', video_theme: 'Coachella music festival', best_line: 'Im felling myself', fierceness: 9, formation: false, dancers: 0 
      }
    ],
    movies: [
      { title: 'Austin Power\'s Goldmember', year: 2002, rating: 5},
      { title: 'Dreamgirls', year: 2006, rating: 7},
      { title: 'Obsessed', year: 2009, rating: 6},
      { title: 'Cadillac Records', year: 2008, rating: 8},
      { title: 'Life is But a Dream', year: 2013, rating: 6},
      { title: 'The Pink Panther', year: 2006, rating: 4},
      { title: 'Epic', year: 2013, rating: 7},
      { title: 'The Fighting Temptations', year: 2003, rating: 5}
    ]
  };

# 1. puts all the songs

def all_songs hash
  hash[:hits].each { |song|
    puts song
  }
end

# all_songs beyonceHash

# 2. puts all the movies

def all_movies hash
  hash[:movies].each { |movie|
    puts movie
  }
end

# all_movies beyonceHash

# 3. create an array with a list of all of Beyonce's hit song titles

# def song_titles hash
#   hash[:hits].map { |song|
#     song[:title]
#   }
# end

def song_titles hash
  hash[:hits].reduce([]) { |arr, el|
    arr << el[:title]
  }
end

pp song_titles beyonceHash

# 4. create an array with a list of all of Beyonce's fierceness ratings

def fierceness_ratings hash
  hash[:hits].map { |song|
    song[:fierceness]
  }
end

# pp fierceness_ratings beyonceHash

# 5. give me all the songs where Beyonce is wearing a bodysuit or a bodysuit is part of the video theme

def bodysuits hash
  hash[:hits].filter { |song|
    song[:signature_look]["bodysuit"] || song[:video_theme]["bodysuit"]
  }
end

# pp bodysuits beyonceHash

# 6. create an array with all of the songs where Beyonce's fierceness is greater than or equal to 8
# 7. create an array with all of the movies Beyonce made in 2006 and after
# 8. find all the hit songs where beyonce was in a group
# 9. find a hit song where Beyonce's hair is blonde
# 10. find the hit song sorry
# 11. find all hit songs where Beyonce's fierceness rating is 10
# 12. sum up Beyonces fierceness value for all of her hit songs

def sum_of_fierce hash
  hash[:hits].reduce(0) { |sum, el|
    sum + el[:fierceness]
  }
end

# pp sum_of_fierce beyonceHash

# 13. get the average fierceness value for all of her hit songs

def avg_of_fierce hash
  hash[:hits].reduce(0) { |sum, el|
    sum + el[:fierceness]
  }.to_f / hash.length
end

# pp avg_of_fierce beyonceHash

# 14. sum up Beyonces rating value for all of her movies

def sum_of_fierce hash
  hash[:movies].reduce(0) { |sum, el|
    sum + el[:rating]
  }
end

# pp sum_of_fierce beyonceHash

# 15. get the average rating value for all of her movies

def avg_of_movies hash
  hash[:movies].reduce(0) { |sum, el|
    sum + el[:rating]
  }.to_f / hash.length
end

# pp avg_of_movies beyonceHash

# 16. sum up the total number of dancers in all of the hit song videos
# 17. create an array of beyonces hairstyles without repeats
# 18. create an object where the properties are song names and the value is an object which contains that fierceness and average fierceness
# 19. create an object where the properties are movie names and the value is an object which contains that rating and average rating
# 20. create a hash with beyonces hairstyles with a tally of each hairstyle ie { 'blonde': 3, ect.}  

# def beyonces_hairstyles hash

# end

# binding.pry
# 0