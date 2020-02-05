class Creature
    attr_accessor :age, :name, :color
    @@all = []

    def initialize (name, color, age)
        @age = age
        @name = name
        @color = color
        @@all << self
    end

    def self.all
        @@all
    end

    def gestate 
        new_name = "#{@name} Jr."
        baby_class = self.class
        #   puts baby_class
        baby_class.new(new_name, @color, 0)
        
    end

    def sleep
        puts "zzzzzzz"
    end

end