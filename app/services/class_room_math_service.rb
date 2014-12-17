class ClassRoomMathService

	attr_reader :message
	attr_reader :success

	def initialize(class_room)
		@class_room = class_room
		@message = ""
		@success = false
	end

	def perform
		@class_room.students = @class_room.boys + @class_room.girls
    	@class_room.total = @class_room.students + @class_room.teachers
    	@message = "This class has  #{@class_room.total} people"
 		@success = (0..100).include?(@class_room.total)
	end

	def success?
		@success
	end

end
