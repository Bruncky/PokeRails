module ApplicationHelper
    def user_avatar(user)
        if user.avatar.attached?
            user.avatar
        else
            "avatar.png"
        end
    end
end
