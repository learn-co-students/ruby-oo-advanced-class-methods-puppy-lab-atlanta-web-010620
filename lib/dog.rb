class Dog 
    attr_reader :name 
    # class variables 
    @@all = []
    
    # class methods 
    def self.all 
        @@all
    end

    def self.clear_all
        @@all.clear
    end

    def self.print_all 
        @@all.each {|index| puts index.name}
    end
    
    def initialize(name) 
        @name = name 
        save 
    end
    
    # instance methods 
    def save 
        @@all << self 
    end
end 