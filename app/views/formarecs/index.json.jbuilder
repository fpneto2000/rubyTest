json.array!(@formarecs) do |formarec|
  json.extract! formarec, :id, :descr
  json.url formarec_url(formarec, format: :json)
end
