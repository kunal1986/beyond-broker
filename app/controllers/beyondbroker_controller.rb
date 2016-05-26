require 'pg'
class BeyondbrokerController < ApplicationController

  def home
  end

  def results
# 	conn = PGconn.connect("localhost",5432,"","","bb_development","bb","5678")
 # 	res = conn.exec("select * from home_address where city='"+params[:seller_text]+"'")
#	res.each {

#	@city = res[0]['city']
#	@state = res[0]['state']
#	@zip_code = res[0]['postal_code']
#	@home_address= res[0]['home_address1']

#	} 


    @home_address = params[:address_text]
   @state = HomeAddress.where(:home_address => @home_address).select(:state)[0]
	@zip_code = HomeAddress.where(:home_address => @home_address).select(:postal_code)[0]
	@street= HomeAddress.where(:home_address => @home_address).select(:home_address1)[0]
	@country= HomeAddress.where(:home_address => @home_address).select(:country)[0]
	@home_id =  HomeAddress.where(:home_address => @home_address).select(:home_address_id)[0]
end
end
