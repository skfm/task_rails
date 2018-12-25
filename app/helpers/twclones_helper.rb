module TwclonesHelper
  def choose_new_or_edit
    if action_name == 'new' || action_name == 'confirm'
      confirm_twclones_path
    elsif action_name == 'edit'
      twclone_path
    end
  end
end
