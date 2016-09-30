def merge_sort(needsort)
	return needsort if needsort.size == 1
	firsth = merge_sort(needsort[0...needsort.size/2])
	secondh = merge_sort(needsort[needsort.size/2..-1])

	merged = []
	until firsth.empty? || secondh.empty?
		merged << (firsth.first <= secondh.first ? firsth.shift : secondh.shift)
	end
	merged + firsth + secondh
 end

sort_arr = [3, 2, 5, 1, 9, 4, 8, 7]

puts merge_sort(sort_arr).join(", ")