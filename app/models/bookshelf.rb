class Bookshelf < ActiveRecord::Base
  has_many  :cookbooks #you might want dependent null here
end
