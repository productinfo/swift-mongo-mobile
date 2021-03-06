Pod::Spec.new do |spec|
  spec.name       = "MongoMobile"
  spec.version    = "0.0.7"
  spec.summary    = "An embedded version of MongoDB for mobile"
  spec.homepage   = "https://github.com/mongodb/swift-mongo-mobile"
  spec.license    = 'AGPL 3.0'
  spec.author     = { "Matt Broadstone" => "mbroadst@mongodb.com" }
  spec.source     = {
    :git => "https://github.com/mongodb/swift-mongo-mobile.git",
    :tag => "v0.0.7"
  }

  spec.ios.deployment_target = "11.0"
  spec.tvos.deployment_target = "10.2"
  spec.watchos.deployment_target = "4.3"

  spec.requires_arc = true
  spec.source_files = ["Sources/MongoMobile/**/*.swift"]

  spec.dependency "MongoSwift", "~> 0.0.9"
  spec.dependency "mongoc_embedded", "~> 4.0.4"
  spec.dependency "mongo_embedded", "~> 4.0.4"

  spec.test_spec "Tests" do |test_spec|
    test_spec.source_files = "Tests/MongoMobileTests/*.swift"
  end
end
