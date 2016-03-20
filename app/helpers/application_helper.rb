module ApplicationHelper

def resource_name
	:list
end

def resource_class
	List
end

def resource
	@resource ||= List.new
end

end
