require 'pry'
class ProjectBacker

    attr_accessor :backer, :project
    attr_reader

    @@all = []

    def initialize(project,backer)
        @project = project
        @backer = backer
        save
        
    end

    def self.all
        @@all
    end

    def save
        self.class.all << self
    end

end