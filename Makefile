build:
	docker build --rm --force-rm -t firefox-yvv .


run:
	docker run --rm -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=unix${DISPLAY} \
    --device=/dev/snd/controlC0 \
	--device=/dev/snd/pcmC0D0p \
    --device=/dev/snd/seq \
	--device=/dev/snd/timer \
	--privileged \
	--name firefox-yvv firefox-yvv


# Настройки правил безопасности, чтобы можно было подключаться к серверу X11.
config:
	xhost +local: