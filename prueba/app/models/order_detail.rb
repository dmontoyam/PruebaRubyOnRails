class OrderDetail < ApplicationRecord
  belongs_to :order
  belongs_to :reference

  def reference_name
    
    reference =  ""
    
    if !self.reference_id.blank?
      reference = Reference.find(self.reference_id)
      name = reference.name
    end 

    return name
  end
end
