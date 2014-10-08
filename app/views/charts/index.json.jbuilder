json.array!(@charts) do |chart|
  json.extract! chart, :id, :name, :chart_link
  json.url chart_url(chart, format: :json)
end
