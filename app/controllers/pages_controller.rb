class PagesController < ApplicationController
  def home
    @event = Event.order(:event_datetime).first
  end

  def about
    @page_title = "About #{@mother_to_be.name}"
    @event = Event.order(:event_datetime).first
  end

  def help
    @page_title = "Help and FAQ"
  end

  def contact
    @page_title = "Contact"
  end
end
