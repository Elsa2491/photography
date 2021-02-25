class RegionPolicy < ApplicationPolicy
  def create?
    user.admin?
  end

  def update?
    record.country.user == user || user.admin?
  end

  def destroy?
    record.country.user == user || user.admin?
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
