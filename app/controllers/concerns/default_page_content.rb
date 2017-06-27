module DefaultPageContent
  extend ActiveSupport::Concern

  included do
    before_action :set_page_defaults
  end

  def set_page_defaults
    @page_title = "Roman Ortega Mondaca | Portfolio"
    @seo_keywords = "Roman Ortega Mondaca Portfolio"
  end

end