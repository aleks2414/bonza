class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

before_action :prepare_meta_tags, if: "request.get?"
before_action :set_footer

def set_footer
	@contact = Contact.new
end

def prepare_meta_tags(options={})
    site_name   = "Mike Bonza"
    title       = "Mike Bonza"
    description = "El Crooner de esta generación"
    image       = options[:image] || "http://www.mikebonza.com/assets/mike_bonza_logo-6d76ae5f152dbc0b52f445c1ff934c9a58192f77bb4dcca16e455e38b1ef1a2b.svg"
    current_url = request.url
    keywords    = %w[mike-bonza cantantes-mexicanos big-band-mexico big-band]

    # Let's prepare a nice set of defaults
    defaults = {
      title:       title,      
      image:       image,
      revisit_after: "30 days",
      robots: "index,follow",
      distribution: "global",
      description: description,
      keywords:    keywords,
    }

    options.reverse_merge!(defaults)

    set_meta_tags options
  end
  # .

end
