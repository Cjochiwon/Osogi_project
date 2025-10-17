#Lab1-1 selection sorting (최소 값 중심)

def selection_sort(data_list):
    for i in range(len(data_list) - 1):
        min_index = i

        for j in range(i + 1, len(data_list)):
            if data_list[j] < data_list[min_index]:
                min_index = j

        if min_index != i:
            data_list[i], data_list[min_index] = data_list[min_index], data_list[i]
    
    return data_list

data = [64, 25, 12, 22, 11]
print("정렬 전 리스트: %s" % data)

sorted_data = selection_sort(data)
print("정렬 후 리스트: %s " % sorted_data)
