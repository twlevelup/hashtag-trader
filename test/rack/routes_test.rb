require_relative '../minitest_helper'
require_relative 'rack_helper'

describe "routes" do
  describe "with no session" do
    it "should redirect all the things" do
      get '/foo'
      last_response.must_be :redirect?
    end

    it "should redirect to auth" do
      get '/foo'
      last_response.headers["Location"].must_match /\/auth\/$/
    end

    it "should not redirect auth routes" do
      get '/auth/'
      last_response.must_be :ok?
    end

    it "should not redirect js routes" do
      get '/js/jquery.min.js'
      last_response.must_be :ok?
    end

    it "should not redirect css routes" do
      get '/css/bootstrap.min.css'
      last_response.must_be :ok?
    end
  end
end
