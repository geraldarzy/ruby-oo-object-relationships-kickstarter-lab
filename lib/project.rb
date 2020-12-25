require 'pry'
class Project

    attr_accessor :title
    attr_reader 

    @@all = []

    def initialize(title)
        @title = title


        save
    end

    def self.all
        @@all
    end

    def save
        self.class.all << self
    end

    def add_backer(backer)
        ProjectBacker.new(self,backer)

    end

    def owned
        ProjectBacker.all.select {|x|x.project == self}
    end

    def backers
        owned.map {|x| x.backer}
    end
end