module RequestSpecHelper
  # Parse JSON response to ruby hash
  def json
    JSON.parse(response.body)
  end

  def last_json
    JSON.parse(last_response.body)
  end
end