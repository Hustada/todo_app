class StaticPagesController < ApplicationController

	def home
		@list = List.all
	end

end