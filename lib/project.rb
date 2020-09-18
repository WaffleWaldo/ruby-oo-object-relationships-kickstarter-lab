class Project
    attr_reader :title
    attr_accessor :backers
    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        array = []
        ProjectBacker.all.each do |project|
            if project.project == self
                array << project.backer
            end
        end
        array
    end
end