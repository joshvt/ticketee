module ApplicationHelper
  def authorized?(permission, thing, &block)
    block.call if can?(permission.to_sym, thing) || current_user.try(:admin?)
  end

  def title(*parts)
    unless parts.empty?
      content_for :title do
        (parts << "Ticketee").join(" - ")
      end
    end
  end

  def admins_only(&block)
    concat(block.call) if current_user.try(:admin?)
  end

  def is_admin?
    return current_user.try(:admin?)
  end
end
