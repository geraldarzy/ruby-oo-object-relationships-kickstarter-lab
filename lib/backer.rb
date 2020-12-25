require 'pry'
class Backer

    attr_accessor :name
    attr_reader

    @@all = []

    def initialize(name)
        @name = name


        save
    end

    def self.all
        @@all
    end

    def save
        self.class.all << self
    end

    def back_project(project)
        ProjectBacker.new(project,self)

    end

    def owned
        ProjectBacker.all.select {|x|x.backer == self}
    end
   
    def backed_projects
        owned.map{|x|x.project}
    end

    

end