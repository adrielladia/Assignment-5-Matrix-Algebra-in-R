# Assignment #5: Matrix Algebra in R

Creating matrices in R and testing `solve()` and `det()` on square, singular, and non-square matrices.

**Blog post:** [Assignment #5 Matrix Algebra in R](https://adrielusf.blogspot.com/2026/09/assignment-5-matrix-algebra-in-r.html)

## Files
- `assignment5.R`: matrix definitions, inverse and determinant calculations, and error handling with `tryCatch()`

## Summary
- **A** (10x10) is square but singular (rank 2), so `det(A) = 0` and `solve(A)` errors
- **B** (10x100) is non-square, so both `solve(B)` and `det(B)` error
- **C** (random 10x10) is non-singular, showing `solve()` and `det()` working correctly
