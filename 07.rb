require "date"

(Date.new(1966,7,13)..Date.new(2020,7,24)).each do |date|
  decimal = date.strftime('%Y%m%d').to_i
  p decimal if decimal == decimal.to_s(2).reverse.to_i(2)
end
