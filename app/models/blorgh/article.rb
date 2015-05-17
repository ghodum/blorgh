module Blorgh
  class Article < ActiveRecord::Base
    has_many :comments

    attr_accessor :author_name
    belongs_to :author, class_name: Blorgh.author_class.to_s

    before_save :set_author

    def self.some_class_method
      "class_method"
    end

    def summary
      "#{title}"
    end

    private
    def set_author
      self.author = Blorgh.author_class.find_or_create_by(name: author_name)
    end
  end
end
