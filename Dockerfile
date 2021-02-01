FROM ubuntu:xenial-20210114
RUN apt-get update && apt-get -y install git npm curl libappindicator1 fonts-liberation libgtk2.0-0 libgtk-3-0 libgbm-dev libnotify-dev libgconf-2-4 libnss3 libxss1 libasound2 libxtst6 xauth xvfb
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash
RUN mkdir /root/.ssh/
RUN ssh-keyscan github.com > ~/.ssh/known_hosts
RUN apt-get install -y libgtk2.0-0 libgtk-3-0 libgbm-dev libnotify-dev libgconf-2-4 libnss3 libxss1 libasound2 libxtst6 xauth xvfb
RUN curl -O https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb && dpkg -i --force-depends google-chrome-stable_current_amd64.deb
RUN apt-get install -y -f
ENTRYPOINT /bin/bash