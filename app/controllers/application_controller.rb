class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  def initialize()
    super
    @info = Contact.first
    
    content
  end

private
  def content
    Content.all.each do |c|
      @max_blocks_on_index = c if c.url == 'max_blocks_on_index'
      @max_blocks_on_project = c if c.url == 'max_blocks_on_project'
    end
  end
end
