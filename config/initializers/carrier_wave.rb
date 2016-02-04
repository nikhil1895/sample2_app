if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_credentials = {
      # Configuration for Amazon S3
      :provider              => 'AWS',
      :aws_access_key_id     => ENV['AKIAJ3VHZ3GL6EZA5CQA'],
      :aws_secret_access_key => ENV['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']
    }
    config.fog_directory     =  ENV['twitterclone1895']
  end
end