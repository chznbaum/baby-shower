module ApplicationHelper
    def copyright_generator
        @copyright = ChznbaumViewTool::Renderer.copyright @mother_to_be, 'All rights reserved'
    end
end