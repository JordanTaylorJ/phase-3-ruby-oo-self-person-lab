# your code goes here
class Person
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account

    def initialize (name, bank_account=25, happiness=8, hygiene=8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end

    def happiness=(new_value)
        @happiness = if (new_value > 10)
            10
        elsif (new_value < 0)
            0
        else new_value
        end
    end

    def hygiene=(new_value)
        @hygiene = if (new_value > 10)
            10
        elsif (new_value < 0)
            0
        else new_value
        end
    end

    def clean?
        self.hygiene > 7 ? true : false
    end

    def happy?
        happiness > 7 ? true : false
    end 

    def get_paid(amount)
        self.bank_account = bank_account + amount 
        "all about the benjamins"
    end

    def take_bath
        self.hygiene = hygiene + 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness = happiness + 2
        self.hygiene = hygiene - 3
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        friend.happiness += 3 
        self.happiness += 3 
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        if topic == "politics"
            friend.happiness = happiness - 2
            self.happiness = happiness - 2
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            friend.happiness = happiness + 1
            self.happiness = happiness + 1
            "blah blah sun blah rain"
        else 
            "blah blah blah blah blah"
        end
    end

end