# Makefile to setup OCR computing environment - assumes Debian/Ubuntu
# git clone https://github.com/jsta/nesR.git
# sudo apt-get make
# cd nesR
# make


prep:
	sudo add-apt-repository ppa:marutter/rrutter
	sudo apt-get update
	sudo apt-get install curl libssl-dev openssl libcurl4-openssl-dev
	sudo apt-get install imagemagick libmagick++-dev
	sudo apt-get install libtesseract-dev libleptonica-dev tesseract-ocr-eng
	sudo apt-get install libpoppler-cpp-dev

R: prep
	sudo apt-get install r-base-core
	sudo Rscript -e "install.packages('devtools', repos = 'https://cloud.r-project.org')"
	sudo Rscript -e "install.packages('magick', repos = 'https://cloud.r-project.org')"
	sudo Rscript -e "install.packages('tesseract', repos = 'https://cloud.r-project.org')"
	sudo Rscript -e "install.packages('png', repos = 'https://cloud.r-project.org')"
	sudo Rscript -e "devtools::install_github('jsta/nesR')"
