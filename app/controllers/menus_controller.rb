class MenusController < ApplicationController
	def index
		@menus = Menu.all
	end

	def show
	end

	def new
		@menu = Menu.new
	end

	def create
		@menu = Menu.new(name: params[:menu][:name], restaurant_id: params[:menu][:restaurant_id], quantity: params[:menu][:quantity], price: params[:menu][:price])
		@menu.save
		redirect_to root_path
	end

	private

	def set_menu
		@menu = Menu.find(params[:id])
	end

	def menu_params
		params.fetch(:menu).permit(:name, :quantity, :price)
	end

end
