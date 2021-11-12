class PhotoPolicy < ApplicationPolicy
  def create?
    user&.admin?
    # user && user.admin?
    # user.admin? if !user.nil?
  end

  def update?
    create?
  end

  def destroy?
    create?
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
