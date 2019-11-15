CarrierWave.configure do |config|
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     'AKIAJHIE5PVHK473S2DA',                        # required unless using use_iam_profile
    aws_secret_access_key: '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',                        # required unless using use_iam_profile
    region:                'us-east-1',                  # optional, defaults to 'us-east-1'
    # host:                  's3-us-east-1.amazonaws.com',
  }
  config.fog_directory  = 'awsmaggie'
  config.fog_public     = true                                                 # optional, defaults to true
  config.fog_attributes = { cache_control: "public, max-age=#{365.days.to_i}" }                                      # required
end
