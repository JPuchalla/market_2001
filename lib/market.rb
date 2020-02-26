class Market
  attr_reader :name, :vendors

  def initialize(name)
    @name = name
    @vendors = []
  end

  def add_vendor(vendor)
    @vendors << vendor
  end

  def vendor_names
    @vendors.map {|vendor| vendor.name}
  end

  def vendors_that_sell(item)
    vendors_with_item = []
    @vendors.each do |vendor|
      vendors_with_item << vendor if vendor.check_stock(item) > 0
    end
    vendors_with_item
  end

  def potential_revenue # <--- Method doesnt work got stuck here.
    vendor_potential_revenue = []
    @vendors.each do |vendor|
    vendor_potential_revenue << (vendor.stock * vendor.item)
    end
  end
    vendor_potential_revenue
end



#A Vendor will be able to calculate their `potential_revenue` - the sum of all their items' price * quantity.
