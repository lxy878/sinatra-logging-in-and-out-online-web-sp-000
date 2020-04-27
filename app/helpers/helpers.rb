class Helpers

  def self.current_user(session)
    session[:user_id]
  end
end
