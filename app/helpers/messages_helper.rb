module MessagesHelper
  def recipients_options(chosen_recipient = nil)
    s = ''
    User.all.each do |user|
       if user.admin != true && user != current_user
        s << "<option value='#{user.id}' #{'selected' if user == chosen_recipient}>#{user.first_name} #{user.last_name} - #{user.role}</option>"
      end
    end
    s.html_safe
  end
end
