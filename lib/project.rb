class Project
    @@all = []
    def self.all
        @@all
    end

    attr_accessor :title
    def initialize(title)
        @title = title
        self.class.all.push(self)
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        ProjectBacker.all.select {|project_backer| project_backer.project == self}.each_with_object([]) {|project, arr| arr.push(project.backer)}
    end
end