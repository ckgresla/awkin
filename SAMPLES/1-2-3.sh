# NR = number of rows, another built-in var that counts the number of lines seen thusfar


awk '{print NR, $0}' DATA/emp.data
