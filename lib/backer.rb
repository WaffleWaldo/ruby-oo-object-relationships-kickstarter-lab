class Backer
    attr_reader :name


    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        array = []
        ProjectBacker.all.each do |project|
            if project.backer == self
                array << project.project
            end
        end
        array
    end
end

