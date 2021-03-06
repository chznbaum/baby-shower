module ApplicationHelper
    def login_helper style = ''
        if current_user.is_a?(GuestUser)
            (link_to "Register", new_user_registration_path, class: style) + " " + (link_to "Login", new_user_session_path, class: style)
        else
            (link_to "Profile", user_path(current_user), class: style) + " " + (link_to "Settings", edit_registration_path(current_user), class: style) + " " + (link_to "Logout", destroy_user_session_path, method: :delete, class: style)
        end
    end

    def copyright_generator
        @copyright = ChznbaumViewTool::Renderer.copyright @mother_to_be.name, 'All rights reserved'
    end
end