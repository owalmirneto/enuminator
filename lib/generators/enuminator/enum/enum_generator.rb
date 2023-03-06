# frozen_string_literal: true

module Enuminator
  class EnumGenerator < Rails::Generators::Base
    source_root File.expand_path("templates", __dir__)

    argument :attributes, type: :hash

    class_option :lang, type: "string", desc: "Language to use in i18n", default: I18n.locale

    def initialize(args, *_options)
      super

      @class_name = args.shift.camelize
      @file_name = class_name.underscore.downcase
      @values = args
      @locale = options[:lang]
    end

    desc "Creates the enumeration"
    def create_enum
      template("enumeration.rb", File.join("app/enumerations/#{file_name}.rb"))
    end

    desc "Creates a locale file on config/locales"
    def create_locale
      template "enumeration.yml", File.join("config/locales/#{locale}/enumerations/#{file_name}.yml")
    end

    private

    attr_reader :class_name, :file_name, :locale, :values

    def current_values
      fields.map { |f, v| v ? "#{f}: #{v}" : ":#{f}" }.join(", ")
    end

    def fields
      return values if attributes.empty?

      if attributes.first.type == :string
        attributes.map(&:name)
      else
        attributes.map { |attribute| [attribute.name, attribute.type] }
      end
    end
  end
end
