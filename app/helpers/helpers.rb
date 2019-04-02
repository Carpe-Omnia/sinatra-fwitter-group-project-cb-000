class Helpers
  def self.current_user(sesh)
    user_id = sesh[:user_id]
<<<<<<< HEAD
    user = User.find_by(id: sesh[:user_id])
=======
    user = User.find(sesh[:user_id])
>>>>>>> e498e2874dc1c65b9572a3cc6e96705b3cab98ce
    user
  end
  def self.is_logged_in?(sesh)
    !!current_user(sesh)
  end
end
