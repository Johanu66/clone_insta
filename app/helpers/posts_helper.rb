module PostsHelper
    def text_submit
        if action_name == 'create' || action_name == 'new' || action_name == 'confirm'
            "Créer un compte"
        elsif action_name == 'edit'
            "Enregister les modifications"
        end
    end
    def url_form
        if action_name == 'create' || action_name == 'new' || action_name == 'confirm'
            confirm_post_path
        elsif action_name == 'edit'
            post_path
        end
    end
end