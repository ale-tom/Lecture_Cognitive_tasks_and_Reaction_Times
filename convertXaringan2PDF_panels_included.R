remotes::install_github("rstudio/chromote")
install.packages(c("progress", "jsonlite", "pdftools", "digest"))
source("https://git.io/xaringan2pdf")

output<-"/Users/ale/ownCloud/Teaching/Lectures/RT_cognition/Part1_Cognition_slides.pdf"
xaringan_to_pdf(paste0('file://',here::here('Cognition_slides.html')),output)

output<-"/Users/ale/ownCloud/Teaching/Lectures/RT_cognition/Part2_RT_slides.pdf"
xaringan_to_pdf(paste0('file://',here::here('RT_slides.html')),output)

output<-"/Users/ale/ownCloud/Teaching/Lectures/RT_cognition/Part3_RT_Cognition_slides.pdf"
xaringan_to_pdf(paste0('file://',here::here('RT_cog_slides.html')),output)

