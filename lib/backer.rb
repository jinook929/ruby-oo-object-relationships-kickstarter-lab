class Backer
    @@all = []
    def self.all
        @@all
    end

    attr_accessor :name
    def initialize(name)
        @name = name
        self.class.all.push(self)
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def projects
        ProjectBacker.all.select {|project_backer| project_backer.backer == self}
    end

    def backed_projects
        self.projects.each_with_object([]) {|backing, arr| arr.push(backing.project)}
    end
end