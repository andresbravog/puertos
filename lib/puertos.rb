require "puertos/version"
require "parser"

module Puertos
  def self.fetch
    Parser.new.run
  end
end
