# Vector numeric
v_num <- c(19, 10, 6, 17)

# Vector integer
v_int <- c(0L, 12L, -13, 1443)

# Vector logical
v_log <- c(TRUE, TRUE, FALSE, FALSE)

v_num
v_int
v_log

# Matrix 5x5
m <- matrix(1:25, nrow = 5, ncol = 5)

# Array 3 dimensi
a <- array(1:24, dim = c(3, 4, 2))

m
a

# Data frame
df <- data.frame(
  Nama = c("syifa","souri","adiba"),
  Umur = c(20, 20, 20),
  Jurusan = c("kedokteran gigi","sastra cina","sastra inggris"),
  Kuliah = c(TRUE, FALSE, TRUE)
  
)

df


# List
mylistgweh <- list(
  number = c(7, 8, 9, 10),
  integer = c(-2, -1, 0, 1),
  df = data.frame(ID = 1:6, Nilai = c(70, 75, 80, 85, 90, 95))
)

mylistgweh
mylistgweh$df