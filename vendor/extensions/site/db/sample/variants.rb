price_map = { 'Large' => 30.00, 'Medium' => 20.00, 'Small' => 10.00 }

Product.all.each do |product|
  v = Variant.new({ :price => 10.00, :cost_price => 5.00, :count_on_hand => 60, :is_master => true })
  product.variants << v
  product.save
  OptionType.find_by_name('size').option_values.each do |sov|
    OptionType.find_by_name('print type').option_values.each do |cov|
      v = Variant.new({ :price => price_map[sov.name], :cost_price => price_map[sov.name].to_f/2, :count_on_hand => 10 }) 
      v.option_values = [sov, cov]
      product.variants << v 
    end
  end
  product.save
end
