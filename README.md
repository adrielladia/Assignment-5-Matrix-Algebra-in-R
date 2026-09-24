# Assignment-5-Matrix-Algebra-in-R
Creates matrices A (10x10) and B (10x100) and tests solve() and det() on each. - A is square but singular (rank 2), so det(A) = 0 and solve(A) errors - B is non-square, so both solve() and det() error (handled with tryCatch) - Includes a non-singular matrix C to show solve()/det() working correctly
