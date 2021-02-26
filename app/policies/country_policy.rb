class CountryPolicy < ApplicationPolicy
  def show?
    true
  end

  def create?
    true if user
  end

  def update?
    if record.user == user
      true
    else
      false
    end
  end

  def destroy?
    record.user == user
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
