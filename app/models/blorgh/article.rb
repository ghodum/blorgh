module Blorgh
  class Article < ActiveRecord::Base
    include Blorgh::Concerns::Article
  end
end
