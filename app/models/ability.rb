# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here. For example:
    #
      user ||= User.new # guest user (not logged in)
      if user.manager?
        can :manage, :all
        can :access, :rails_admin
        can :manage, :dashboard  
        can :manage, :events
        #A manager can see everything, whereas a normal user can access everything, but they will only ever be shown their own club hence
        #They should have all permissions
      else
      #   can :show, :clubs
      #   can :manage, :club_infos
      #   can :manage, :consent_forms
      #   can :manage, :event_feedbacks
      #   can :manage, :events
      #   can :show, :meeting_types
      #   can :manage, :prospective_donors
      #   can :manage, :volunteers
      #   can :manage, :case_studies
      # end
    #
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
    #
    # See the wiki for details:
    # https://github.com/CanCanCommunity/cancancan/wiki/Defining-Abilities
      end
  end
end
