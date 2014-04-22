module ContentBlock
  class Ability
    include CanCan::Ability

    def initialize(user)
      user ||= User.new

      can :manage, ContentBlock::RichBlock if user.role == 'admin'
    end
  end
end
