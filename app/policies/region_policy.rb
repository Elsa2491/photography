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
      false
    elsif user.admin?
      true
    end
  end

  def destroy?
    if record.country.user
      false
    elsif user.admin?
      true
    end
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
