json.array!(@formapagtos) do |formapagto|
  json.extract! formapagto, :id, :descr
  json.url formapagto_url(formapagto, format: :json)
end
