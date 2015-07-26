#!ruby

class MegaGreeter
    attr_accessor :names

    #construct
    def initialize(names = "World")
        @names = names
    end

    #say hi to everyone
    def say_hi
        if @names.nil?
            puts "..."
        elsif @names.respond_to?("each")
            #@names is iterable, iterate
            @names.each do |name| 
                puts "Hello #{name}!"
            end
        else 
            puts "Hello #{@names}!"
        end
    end

    #say bye to everyone
    def say_bye
        if @names.nil?
            puts "..."
        elsif @names.respond_to?("join")
            puts "Goodbye #{@names.join(", ")}. Come back soon!"
        else
            puts "Goodbye #{@names}. "
        end
    end

end

if __FILE__ == $0
    mg = MegaGreeter.new
    mg.say_hi
    mg.say_bye

    mg.names = "Zeke"
    mg.say_hi
    mg.say_bye

    mg.names = ["Angelus", "Drusilla", "Darla", "Spike"]
    mg.say_hi
    mg.say_bye

    mg.names = nil
    mg.say_hi
    mg.say_bye

end


