require 'rails_helper'

RSpec.describe 'Send Email' do
  it "can send an email from contact form" do
    post '/api/v1/mail?to=danicolemanphotography@gmail.com&from=danicoleman00@gmail.com&subject=Nice Shot&content=I would like to purchase.'
    expect(response).to be_successful
    body = JSON.parse(response.body, symbolize_names: true)
    require "pry"; binding.pry
  end
end
