json.array!(@weeks) do |week|
  json.extract! week, :id, :mood, :significance, :journal
  json.url week_url(week, format: :json)
end
