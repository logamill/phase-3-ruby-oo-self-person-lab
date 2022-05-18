require 'pry'
class Person
    attr_accessor :name, :bank_account, :happiness, :hygiene
    # attr_reader :name 
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8

    end

    def happiness=(num)
        @happiness = 
        if num < 0 
             0
        elsif num > 10 
             10    
        else 
             num 
        end
    end

    def hygiene=(num)
        @hygiene = 
        if num < 0
            0
        elsif num > 10
            10
        else
            num
        end
    end


    def happy? 
        self.happiness > 7
    end


    def clean?
        self.hygiene > 7
    end


    def get_paid(amt)
        @bank_account = bank_account + amt
        return "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        return '♪ Rub-a-dub just relaxing in the tub ♫'
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        return "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end


    def start_conversation(friend, topic)
        if topic == 'politics'
            self.happiness -= 2
            friend.happiness -= 2
            return "blah blah partisan blah lobbyist"
        elsif topic == 'weather'
            self.happiness += 1
            friend.happiness += 1
            return "blah blah sun blah rain"
        else
            return "blah blah blah blah blah"
        end
    end



end
