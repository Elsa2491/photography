class CountryPolicy < ApplicationPolicy
  def show?
    user.admin?
  end

  def create?
    if user
      true if user.admin?
    else
      false
    end
  end

  def update?
    if user
      true if user.admin?
    else
      false
    end
  end

  def destroy?
    if user
      true if user.admin?
    else
      false
    end
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
