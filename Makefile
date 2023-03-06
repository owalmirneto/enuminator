build:
	gem build enuminator.gemspec

# Example: make publish v=enuminator-0.0.3.gem
publish:
	gem push $(v)
