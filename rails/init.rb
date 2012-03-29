require 'contacts'
Dir.glob('contacts/*.rb').each{|f| require f}

config = YAML.load_file("#{Rails.root}/config/contacts.yml")
Contacts.configure(config[Rails.env])