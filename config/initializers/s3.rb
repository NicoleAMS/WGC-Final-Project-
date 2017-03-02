CarrierWave.configure do |config|
  config.fog_credentials = {
      :provider               => 'AWS',
      :aws_access_key_id      => "AKIAIDTOEKTZ36MN5HUA",
      :aws_secret_access_key  => "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",
      :region                 => 'eu-west-2' # Change this for different AWS region. Default is 'us-east-1'
  }
  config.fog_directory  = "nams-buddha-statues"
end