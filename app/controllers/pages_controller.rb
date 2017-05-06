class PagesController < ApplicationController
  def home
  end

  def about
    @page_title = "About #{@mother_to_be.name}"
  end

  def help
    @page_title = "Help and FAQ"
  end

  def contact
    @page_title = "Contact"
  end
end
