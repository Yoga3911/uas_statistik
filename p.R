install.packages('xlsx')     
library(xlsx) 

total_kecelakaan = 2177
total_meninggal = 122
probabilitas = total_meninggal/total_kecelakaan
probabilitas

n = 400
lambda = n * probabilitas
lambda

x = 0:n

hasil = dpois(x, lambda)
hasil


workbook <- createWorkbook()
sheet <- createSheet(workbook, sheetName = "Data")
data <- data.frame(Nilai = 1:n, Probabilitas = hasil)
addDataFrame(data, sheet = sheet, startRow = 1, startCol = 1)

saveWorkbook(workbook, file = "nama_file3.xlsx")
