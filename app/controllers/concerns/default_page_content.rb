module DefaultPageContent
    extend ActiveSupport::Concern

    included do
        before_filter :set_page_defaults
    end

    def set_page_defaults
        @mother_to_be = "Jane Doe"
        @page_title = "#{@mother_to_be}'s Baby Shower Website"
        @seo_keywords = "baby shower pregnancy event family"
    end
end