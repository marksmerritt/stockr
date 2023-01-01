# frozen_string_literal: true

require_relative "stockr/version"

module Stockr
  autoload :Client, "stockr/client"
  autoload :Collection, "stockr/collection"
  autoload :Error, "stockr/error"
  autoload :Object, "stockr/object"

  module TimeSeries
    autoload :Intraday, "stockr/objects/time_series/intraday"
  end

  module Intelligence
  end

  module Fundamentals
  end

  module Forex
  end
end
