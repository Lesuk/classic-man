require 'breakpoint'

# ====================================
#   Compass
# ====================================

compass_config do |config|
  config.output_style = :compact
  config.line_comments = false
end

# ====================================
#   Activate Plugins
# ====================================

# activate :automatic_image_sizes
activate :directory_indexes
activate :livereload

activate :autoprefixer do |config|
  config.browsers = ['last 2 versions', 'Explorer >= 10']
  config.cascade = false
end

# ====================================
#   Global Variables
# ====================================

set :css_dir, 'assets/stylesheets'
set :js_dir, 'assets/javascripts'
set :images_dir, 'assets/images'
set :fonts_dir, 'assets/fonts'
set :slim, pretty: true

# ====================================
#   Helpers
# ====================================

helpers do
  # If you need helpers for use in this file, then you
  # can define them here. Otherwise, they should be defined
  # in `helpers/custom_helpers.rb`.
end

# ====================================
#   After Configuration
# ====================================

after_configuration do
  @bower_config = JSON.parse( IO.read( "#{ root }/.bowerrc" ) )
  sprockets.append_path File.join root.to_s, @bower_config['directory']
end

# ====================================
#   Build Configuration
# ====================================

configure :build do
  # activate :cache_buster
  activate :asset_hash
  activate :minify_css
  activate :minify_html
  activate :minify_javascript
  activate :relative_assets

  # Compress and optimize images
  # activate :image_optim
end
