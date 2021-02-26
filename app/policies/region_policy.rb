class RegionPolicy < ApplicationPolicy
  def create?
    if user
      true if user.admin?
    else
      false
    end
  end

  def update?
    if record.country.user
      true if user.admin?
    else
      false
    end
  end

  def destroy?
    if record.country.user
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
