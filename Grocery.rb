# Week 2: In-Class Assignment: Duplicate Products

# Instructions:
# Write a script that will:
# 1.) Evaluate the brand_name and possible_duplicate_brand_name and the name and possible_duplicate_name from the `week-2-ica-duplicate-products.csv` file
# 2.) Output the ids products whose possible duplicate that have a combined (brand_name and name) string similarity above 1.3
require 'csv'
require 'fuzzystringmatch'
require 'pry'
file_path = 'week-2-ica-duplicate-products.csv'

@product_list = CSV.read(file_path)
@match = FuzzyStringMatch::JaroWinkler.create( :pure )

def main
1.upto(10) do |x|
  similarity = 0
  if @product_list[x][1] != nil && @product_list[x][3] != nil && @product_list[x][2] != nil && @product_list[x][4] != nil
  similarity = @match.getDistance(@product_list[x][1],@product_list[x][3]) + @match.getDistance(@product_list[x][2],@product_list[x][4])
end
  if similarity >1.3
    puts @product_list[x][0]
  end

end
end
main
