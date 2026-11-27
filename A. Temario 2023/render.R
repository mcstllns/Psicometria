library(rmarkdown)

l <- list.files(pattern='Rmd', recursive = TRUE)
nimaIA = 79

# -----------------------------
renderDir = "render_slidy"
dir.create(renderDir, showWarnings = FALSE)
for (i in l) {
  rmarkdown::render(
    i, 
    output_file = paste0(tools::file_path_sans_ext(basename(i)), '.html'), 
    output_dir = renderDir,
    params = list(nimaIA = nimaIA),
    output_format ="slidy_presentation"
  )
}



# -----------------------------
renderDir = "render_ioslides"
dir.create(renderDir, showWarnings = FALSE)
for (i in l) {
  rmarkdown::render(
    i, 
    output_file = paste0(tools::file_path_sans_ext(basename(i)), '.html'), 
    output_dir = renderDir,
    params = list(nimaIA = nimaIA),
    output_format ="ioslides_presentation"
  )
}
