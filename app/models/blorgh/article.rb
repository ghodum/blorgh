module Blorgh
  class Article < ActiveRecord::Base
    has_many :comments

    def summary
      "#{title}"
    end
  end
end
