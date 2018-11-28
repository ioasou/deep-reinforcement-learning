#!/bin/bash
xhost +
sudo nvidia-docker run -it --rm\
	--net=host \
	--env="DISPLAY" \
	--env=TERM="xterm-color"\
	--env="QT_X11_NO_MITSHM=1" \
	--volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
	--volume="$HOME:/home/isouf:rw"\
	--workdir="/home/isouf/hitGit/deep-reinforcement-learning/"\
	--name="drl_container"\
	drl $SHELL
