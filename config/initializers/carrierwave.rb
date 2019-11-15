CarrierWave.configure do |config|
  config.fog_credentials = {
    provider:              'AWS',
    aws_access_key_id:     'AKIAJHIE5PVHK473S2DA',
    aws_secret_access_key: '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',
    region:                'ca-central-1',
  }
  config.fog_directory  = 'awsmaggie'
  config.fog_public     = true
  config.fog_attributes = { cache_control: "public, max-age=#{365.days.to_i}" }
end
