### SHELL> mpiexec -np 4 Rscript --vanilla [...].r

# Initial MPI.
library(pbdDEMO, quiet = TRUE)
init.grid()

# Number of rows/columns
n <- 250
p <- 50


# Generate locally only what is needed.
# This will produce a different matrix because of the block cyclic 
# distribution.
comm.set.seed(1234, diff = TRUE)
dx <- demo.Hnorm.local(ldim=c(n, p), 4)

print(dx)

finalize()
