require 'contacts'
Dir.glob('contacts/*.rb').each{|f| require f}

config = YAML.load(ERB.new(IO.read("#{Rails.root}/config/contacts.yml")).result)
Contacts.configure(config[Rails.env])