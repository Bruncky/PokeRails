module ApplicationHelper
    def user_avatar(user)
        if user.avatar.attached?
            user.avatar.key
        else
            "avatar.png"
        end
    end

    def resource_name
        :user
    end

    def resource
        @resource ||= User.new
    end

    def devise_mapping
        @devise_mapping ||= Devise.mappings[:user]
    end
end
