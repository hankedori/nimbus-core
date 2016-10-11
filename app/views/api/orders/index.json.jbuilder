json.array! @orders do |order|
  json.id order.id
  json.dispensary_name order.retailer.name
  json.dispensary_image order.retailer.image_url
  json.address order.address
  json.total_price order.total_price
  json.status order.status

  json.order_details order.order_details.all do |item|
    json.name item.name
    json.price item.price
    json.quantity item.quantity
    json.images item.product.images
  end
end