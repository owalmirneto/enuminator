# Enuminator is a EnumerateIt Extension

Enumerations for Ruby or Rails inspired in [EnumerateIt](https://github.com/lucascaton/enumerate_it) with some magic powers! 🎩

## Installation

```bash
gem install enuminator
```

## Using with Rails

```bash
bundle add enuminator
```

## Generators

You can use a Rails generator to create `ApplicationEnumeration`, because you need this main class to use enumerations:

```bash
bin/rails g enuminator:install
```

This command will create this file:

```ruby
# /app/enumerations/application_controller.rb
class ApplicationEnumeration < Enuminator::Base
end
```

You can use a Rails generator to create a specific enumeration:

```bash
bin/rails g enuminator:enum relationship_status single married divorced
```

This command will create this file:

```ruby
# /app/enumerations/application_controller.rb
class RelationshipStatus < ApplicationEnumeration
  associate_values(:single, :married, :divorced)
end
```

From now you could follow the EnumerateIt references =)

## EnumerateIt References

- [Creating enumerations](https://github.com/lucascaton/enumerate_it#creating-enumerations)
  - [Sorting enumerations](https://github.com/lucascaton/enumerate_it#sorting-enumerations)
- [Using enumerations](https://github.com/lucascaton/enumerate_it#using-enumerations)
- [FAQ](https://github.com/lucascaton/enumerate_it#faq)
- [I18n](https://github.com/lucascaton/enumerate_it#i18n)
  - [Translate a name-spaced enumeration](https://github.com/lucascaton/enumerate_it#translate-a-name-spaced-enumeration)
- [Handling a legacy database](https://github.com/lucascaton/enumerate_it#handling-a-legacy-database)
- [Changelog](https://github.com/lucascaton/enumerate_it#changelog)

## Contributing

Bug reports and merge requests are welcome on GitHub at https://github.com/[USERNAME]/enuminator.
