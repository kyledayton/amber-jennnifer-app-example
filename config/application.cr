AMBER_ENV = ARGV[0]? || ENV["AMBER_ENV"]? || "development"

Amber::Server.instance.config do |app|
  # Server options
  app_path = __FILE__ # Do not change unless you understand what you are doing.
  app.name = "Blog web application."
  app.port = (ENV["PORT"] ||= "3000").to_i # Port you wish your app to run
  app.env = AMBER_ENV
  app.log = ::Logger.new(STDOUT)
  app.log.level = ::Logger::INFO
end
