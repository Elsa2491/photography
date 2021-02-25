class RegionPolicy < ApplicationPolicy
  def create?
    user.country_ids == user.countries
  end

  def update?
    record.country.user == user
  end

  def destroy?
    record.country.user == user
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end


