class StaticPagesController < ApplicationController

	def home
		@list = List.new
		@lists = List.all.order('created_at DESC').paginate(page: params[:page],per_page: 4)
	end

end