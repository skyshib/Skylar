class Building
    attr_accessor :num_windows, :num_walls, :num_stories, :building_materials, :color, :has_aircon
    def initialize(num_windows, num_walls, num_stories, building_materials, color, has_aircon)
        @num_windows = num_windows
        @num_walls = num_walls
        @num_stories = num_stories
        @building_materials = building_materials
        @colors = color
        @has_aircon = has_aircon
    end
end