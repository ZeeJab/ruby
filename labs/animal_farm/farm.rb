class Farm
	attr_accessor :name, :people, :animal

	def initialize(name)
		@name = name
		@animal = []
		@people = []
	end

	def to_s
		"#{name}"
	end
end