class SellerChatsPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(recipient: user, created_at: Time.zone.now.beginning_of_day..Time.zone.now.end_of_day)
    end
  end
end
