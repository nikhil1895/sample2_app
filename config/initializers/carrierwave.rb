if Rails.env.production?
	unless ENV['AWS_ACCESS_KEY_ID'].blank?
	  CarrierWave.configure do |config|
	    config.fog_credentials = {
	      # Configuration for Amazon S3
	      :provider              => 'AWS',
	      :aws_access_key_id     => ENV['S3_ACCESS_KEY'],
	      :aws_secret_access_key => ENV['S3_SECRET_KEY']
	    }
	    config.fog_directory     =  ENV['S3_BUCKET']
	    config.fog_public = true
	    config.storage = :fog
	    
	  end
	end
end