json.array!(@macroposts) do |macropost|
  json.extract! macropost, :content, :user_id
  json.url macropost_url(macropost, format: :json)
end