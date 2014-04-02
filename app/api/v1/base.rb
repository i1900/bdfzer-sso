module V1
  class Base < ApplicationAPI
    version "v1", :using => :path

    mount SampleAPI
    mount SecretAPI
    mount UserAPI
  end
end