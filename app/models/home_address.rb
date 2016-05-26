class HomeAddress < ActiveRecord::Base
	$db_config = 'development'
	$config = ActiveRecord::Base.configurations[$db_config]
	establish_connection $config
	self.table_name = 'home_address'
	self.primary_key = "home_address_id"
    def to_s
 		 attributes.each_with_object("") do |attribute, result|
    	result << "#{attribute[1].to_s} "
  end
end
end
