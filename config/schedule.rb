set :output, File.join("log", "cron.log")

every :day, :at => '2:30am', :roles => [:app] do
  rake "spotlight:reindex"
end
