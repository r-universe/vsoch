#!/bin/bash

# Set up the RProfile
# Ignoring for now, until have reason to set these variables

echo "Cran is ${CRAN}"
echo 'options(repos = c(CRAN = "${CRAN}"), Ncpus = 2, crayon.enabled = TRUE)' > ~/.Rprofile
echo 'utils::setRepositories(ind = 1:4)' >> ~/.Rprofile
echo 'options(repos = c(rOpenSci = "https://dev.ropensci.org", getOption("repos")))' >> ~/.Rprofile
echo 'DISPLAY=""' >> ~/.Renviron
echo 'R_BROWSER="echo"' >> ~/.Renviron
echo 'R_PDFVIEWER="echo"' >> ~/.Renviron
echo 'RGL_USE_NULL=TRUE' >> ~/.Renviron
echo '_R_CHECK_FORCE_SUGGESTS_=FALSE' >> ~/.Renviron
echo '_R_CHECK_CRAN_INCOMING_=FALSE' >> ~/.Renviron
echo '_R_CHECK_CRAN_INCOMING_REMOTE_=FALSE' >> ~/.Renviron
echo 'R_COMPILE_AND_INSTALL_PACKAGES=never' >> ~/.Renviron
mkdir -p $R_LIBS_USER
