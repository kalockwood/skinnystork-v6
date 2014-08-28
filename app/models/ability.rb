class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    if user.has_role? :admin 
      can :manage, :all #Grants access to the admin to everything on the site
    else
     
    end
  end
end
