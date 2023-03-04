# frozen_string_literal: true

class <%= class_name %>Enumeration < ApplicationEnumeration
  associate_values(<%= current_values %>)
end
