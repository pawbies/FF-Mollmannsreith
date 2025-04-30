class ApplicationController < ActionController::Base
  include Authentication
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  private
    def require_geraetewart!
      unless authenticated? && Current.user.rank.in?([ "chef", "geraetewart" ])
        redirect_to root_path, alert: "Nicht authorisiert"
      end
    end

    def require_chef!
      unless authenticated? && Current.user.rank == "chef"
        redirect_to root_path, alert: "Nicht authorisiert"
      end
    end
end
