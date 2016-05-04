json.array!(@my_contents) do |my_content|
  json.extract! my_content, :id, :home_content, :concept_content, :program_content, :about_content
  json.url my_content_url(my_content, format: :json)
end
