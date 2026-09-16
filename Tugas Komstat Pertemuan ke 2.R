#Input data iiris
data("iris")
iris

# Tampilkan data Sepal.Lenght
iris$Sepal.Length

#Menyebutkan tipe data tiap kolom
str(iris)

#Membuat variabel turunan
iris$turunan <- ifelse(iris$Sepal.Width > 3,
                       "Besar", "Kecil")
iris
iris$turunan

#Mengubah variabel turunan menjadi sepal
names(iris)[names(iris) == "turunan"] <- "sepal"
names(iris)

#Mengambil data dengan sepal bernilai lebih besar dari species virginica
data_virginica <- iris[
  iris$sepal == "Besar" & iris$Species == "virginica",
]

data_virginica

#Mengecek jumlah species dalam data
table(iris$Species)

#jika ingin mengetahui jumlahnya (opsional)
sum(table(iris$Species))

#Memecah data iris menjadi 3 data frame berdasarkan khusus untuk species tertentu
iris_setosa <- subset(iris, Species == "setosa")
iris_versicolor <- subset(iris, Species == "versicolor")
iris_virginica <- subset(iris, Species == "virginica")

iris_setosa
iris_versicolor
iris_virginica

#Mengurutkan data berdasarkan Sepal.Widht dari setiap data frame species
iris_setosa <- iris_setosa[
  order(iris_setosa$Sepal.Width),
]

iris_versicolor <- iris_versicolor[
  order(iris_versicolor$Sepal.Width),
]

iris_virginica <- iris_virginica[
  order(iris_virginica$Sepal.Width),
]

iris_setosa
iris_versicolor
iris_virginica

