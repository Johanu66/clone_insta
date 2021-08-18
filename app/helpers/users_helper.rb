module UsersHelper
    def submit_text
        if action_name == 'new' || action_name == 'create'
            "Créer un compte"
        else
            "Enregistrer les modifications"
        end
    end
end