class Ability
  include CanCan::Ability

  def initialize(user)
 
    user ||= User.new # guest user (not logged in)
    if user.admin_role?
      can :manage, :all
      can :access, :rails_admin
      can :dashboard
      can :import, :all
    end
    if user.curator_role?
      can :manage, :all
      can :access, :rails_admin
      can :dashboard 
      cannot :import, :all
    end
    if user.user_role?
        can :read, :all
        cannot :import, :all
    end 
    
 
    # The first argument to `can` is the action you are giving the user
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on.
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true

  end
end
