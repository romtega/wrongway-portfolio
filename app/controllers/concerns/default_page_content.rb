module DefaultPageContent
  extend ActiveSupport::Concern

  included do
    before_action :set_page_defaults
  end

  def set_page_defaults
    @page_title = "Roman | Portfolio"
    @seo_keywords = "Roman Ortega Mondaca"
  end

end