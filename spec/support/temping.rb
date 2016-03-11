RSpec.configure do |config|
  config.after do
    Temping.teardown
  end
end
