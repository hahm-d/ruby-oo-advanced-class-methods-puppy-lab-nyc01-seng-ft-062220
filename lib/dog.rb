#https://learn.co/tracks/module-1-web-development-immersive-3-0/ruby/topics-in-oo-advanced-class-methods-in-ruby/puppy-lab

class Dog
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        #@@all << self    the push was moved to save def. 
        #call def save 
        save
    end

    def self.all
        @@all
    end

    def self.clear_all
        @@all = []
    end

    def self.print_all
       self.all.each { |pet| puts pet.name} #puts output to names without " " vs p which is better for debugging
    end
 
    def save #adds dog instance to @@all here and not at initialize
        self.class.all << self  
    end



end