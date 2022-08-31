class Cat < Pet
    attr_accessor :indoor, :drop_in_visit
    def initialize(attributes={})
        super(attributes)
        @indoor = attributes[:indoor]
        @drop_in_visit = nil
    end 
    
    def self.all
       @@all.filter{|p| p.class == self}
    end 

    def visit
        @drop_in_visit = Time.now
    end

    def print
        super
        puts "Last visit at: #{format_time(self.drop_in_visit)}" unless(self.drop_in_visit.nil?)
    end 

end 