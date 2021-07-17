FROM debian:latest

RUN apt update && apt install -y firefox-esr libcanberra-gtk-module libcanberra-gtk3-module

# ENTRYPOINT firefox    # shell format 
ENTRYPOINT ["firefox"]  # exec format, считается более предпочтительным