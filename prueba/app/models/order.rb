class Order < ApplicationRecord
    
  has_many :order_details, :dependent=>:destroy

  belongs_to :client

accepts_nested_attributes_for :order_details, :reject_if=> :all_blank, :allow_destroy => true


  def client_name
    
    client =  ""
    
    if !self.client_id.blank?
      client = Client.find(self.client_id)
      name = client.firstName
    end 

    return name
  end

  def self.destroy_details(order_id)
    order_details = OrderDetail.where("order_id = #{order_id}")
    if !order_details.blank?
      order_details.each do |od|
        od.destroy
      end
    end
  end
end
