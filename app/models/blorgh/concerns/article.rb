module Blorgh::Concerns::Article
  extend ActiveSupport::Concern

  included do
    has_many :comments

    attr_accessor :author_name
    belongs_to :author, class_name: Blorgh.author_class.to_s

    before_save :set_author

    private
      def set_author
        self.author = Blorgh.author_class.find_or_create_by(name: author_name)
      end
  end

  class_methods do
    def some_class_method
      "class_method"
    end
  end

  def summary
    "#{title}"
  end
end
