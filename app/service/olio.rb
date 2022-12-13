class Olio
  include HTTParty
  URL = 'https://s3-eu-west-1.amazonaws.com/olio-staging-images/developer/test-articles-v4.json'

  def articals
    response = HTTParty.get(URL)
    JSON.parse(response.body, object_class: OpenStruct)
  end
end
