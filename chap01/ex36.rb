#start in bedroom need to study for upcoming exam
def start
  puts "You've just been reminded that there's an exam tomorrow."
  puts "You had completely forgotten and done NO WORK."
  puts "Your favourite TV show is about to start"
  puts "Do you want to watch TV or study for the exam?"
  puts "> "
  choice = $stdin.gets.chomp

#if watch tv - nice!
#tv show was great. do you want to study now or go to sleep?
#nested if go to sleep. bliss. but you fail.
#nested if study - nice try but you didnt do enough and failed.
#if neither then "you didn't answer my question!"
  if choice == "watch TV"
      puts "Yeah that's right, kick back and relax"
      puts "That TV show was great! Do you want to watch another episode or study?"
      puts "> "
      choice2 = $stdin.gets.chomp
        if choice2 == "another episode"
          puts "NAUGHTY! You watched TV all night and failed your exam"
        elsif choice2 == "study"
          puts "Well done. But you left it too late. You failed"
        else puts "You didn't answer my question."
        end

#if study - congrats. do you want to go to sleep or keep studying?
#nested if keep studying, congrats youve passed
#nested if go to sleep. bliss. but you fail.
#if neither then "you didn't answer my question!"
  elsif choice == "study"
  puts "Congratulations, you've made a good choice! Let's cram"
  puts "Corr you've put a good few hours in. Time to sleep? Or keep studying?"
      choice3 = $stdin.gets.chomp
        if choice3 == "sleep"
          puts "You bailed and therefore failed"
        elsif choice3 == "study"
          puts "CONGRATULATIONS. YOU WORKED HARD AND PASSED YOUR EXAM!!!!!!!"
        else puts "You didn't answer my question"
        end

  else puts "You didn't answer my question!"
  end
end

start 
