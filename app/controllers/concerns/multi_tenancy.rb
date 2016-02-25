module MultiTenancy
  extend ActiveSupport::Concern

  protected
  def load_tenant
    if request.subdomain.blank?
      Brimir::Tenant.current_domain = request.domain
    else
      Brimir::Tenant.current_domain = "#{request.subdomain}.#{request.domain}"
    end
  end
end
