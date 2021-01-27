class ProjectBacker
    @@all = []
    def self.all
        @@all
    end

    attr_accessor :project, :backer
    def initialize(project, backer)
        @project = project
        @backer = backer
        self.class.all.push(self)
    end
end