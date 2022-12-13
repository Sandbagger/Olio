
  class OlioPresenter
    def initialize artical_attr
      @artical_attr = artical_attr
      @artical = Artical.find_or_create_by(external_id: artical_attr.id) 
    end

    def id
      @artical.id
    end

    def title
      @artical_attr.title
    end

    def image
      @artical_attr.images.first.files.small
    end
  end
