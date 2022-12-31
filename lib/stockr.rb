# frozen_string_literal: true

require_relative "stockr/version"

module Stockr
  autoload :Client, "stockr/client"
  autoload :Error, "stockr/error"
end
