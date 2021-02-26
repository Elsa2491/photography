class RegionPolicy < ApplicationPolicy
  def create?
    true if user
  end

  def update?
    true if record.country.user == user
  end

  def destroy?
    true if record.country.user == user
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
