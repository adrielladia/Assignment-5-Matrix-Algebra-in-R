# Assignment #5 - Working with Matrices in R

# 1. Create the matrices
A <- matrix(1:100,  nrow = 10)
B <- matrix(1:1000, nrow = 10)

# 2. Inspect dimensions
dim(A)   # 10 10  -> square
dim(B)   # 10 100 -> not square

# 3. Inverse and determinant of A
# NOTE: A is square but singular, so solve(A) throws an error.
invA <- tryCatch(solve(A), error = function(e) e)
detA <- det(A)
invA        # Lapack routine dgesv: system is exactly singular: U[6,6] = 0
detA        # 0

# Why A is singular: every column is the previous column + 10,
# so only 2 columns are linearly independent.
qr(A)$rank  # 2 (needs 10 to be invertible)
kappa(A)    # ~4.7e18 -> effectively infinite condition number

# 4. Inverse and determinant of B (non-square)
invB <- tryCatch(solve(B), error = function(e) e)
detB <- tryCatch(det(B),   error = function(e) e)
invB        # 'a' (10 x 100) must be square
detB        # 'x' must be a square matrix

# 5. Comparison: a square, non-singular matrix where solve() and det() work
set.seed(1)
C <- matrix(rnorm(100), nrow = 10)
invC <- solve(C)
detC <- det(C)
detC                                    # 7.798076
all.equal(C %*% invC, diag(10))         # TRUE -> C times its inverse = identity