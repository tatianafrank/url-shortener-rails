class LinksController < ApplicationController
  def home
  	@link = Link.new
  end

  def create
  	variable= params[:link][:id]
  	@link= Link.create(url: params[:link][:url])
  	render 'link_page'
  end

  def show 
	  @link= Link.find params[:id]
	  redirect_to @link.url
  end

  # private

  # def link_par

end
