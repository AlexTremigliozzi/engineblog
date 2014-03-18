require "engineblog/engine"

module Engineblog
 
mattr_accessor :author_class

def self.author_class
  @@author_class.constantize
end

end
