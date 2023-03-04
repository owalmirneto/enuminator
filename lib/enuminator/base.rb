# frozen_string_literal: true

module Enuminator
  class Base < EnumerateIt::Base
    def self.sample
      list.sample
    end
  end
end
