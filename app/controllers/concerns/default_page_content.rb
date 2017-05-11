module DefaultPageContent
    extend ActiveSupport::Concern

    included do
        before_filter :set_page_defaults
    end

    def set_page_defaults
        @mother_to_be = User.where(roles: "mom").order("created_at DESC").first
        @site_title = "#{@mother_to_be.name}'s Baby Shower"
        @page_title = "#{@mother_to_be.name}'s Baby Shower Website"
        @seo_keywords = "#{@mother_to_be.name} baby shower pregnancy event family"
    end
end