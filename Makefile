all: build deploy

build:
		docker build -t weshofmann/plex-nvdec .

deploy:
		docker push weshofmann/plex-nvdec
