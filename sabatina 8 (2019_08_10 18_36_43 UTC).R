da <- expand.grid(A = c(0, 1),
                  B = c(0, 1),
                  C = c(0, 1),
                  D = c(0, 1))
row.names(da) <- c("(1)", "a", "b", "ab", "c", "ac", "bc", "abc","d", "ad", "bd", "cd", "abd", "acd", "bcd", "abcd")
da




da <- do.call(expand.grid, replicate(4, list(c(-1, 1))))
names(da) <- LETTERS[1:ncol(da)]
row.names(da) <- apply(da, 1,
                       function(i) paste(letters[1:4][i==1], collapse = ""))
row.names(da)[1] <- "(1)"
da
da$ABC <- with(da, A * B * C )
da$ACD <- with(da, A * C * D)
da$ABC <- with(da, A * B * C)
da$BCD <- with(da, B * C * D)
da











da2 <- do.call(expand.grid, replicate(5, list(c(-1, 1))))
names(da2) <- LETTERS[1:ncol(da2)]
row.names(da2) <- apply(da2, 1,
                       function(i) paste(letters[1:5][i==1], collapse = ""))
row.names(da2)[1] <- "(1)"
da2
da2$ABDE <- with(da2, A * B * D * E)
da2$CDE <- with(da2, C * D * E)
da2$BCDE <- with(da2, B * C * D * E)
da2$ABCE <- with(da2, A * B * C * E)
da2$BCD <- with(da2, B * C * D)

da2$BCE2 <- with(da2, B * C * E)
da2$COMPARA <- with(da2, ABCE * BCD)
aaa <- (da2$COMPARA == da2$BCE2)
aaa



da
da$ABC <- with(da, A * B * C)
da$ACD <- with(da, A * C * D)
da$ABC <- with(da, A * B * C)
da$BCD <- with(da, B * C * D)
da

