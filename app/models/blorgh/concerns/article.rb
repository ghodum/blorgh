module Blorgh::Concerns::Article
  extend ActiveSupport::Concern

  included do
    has_many :comments
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
