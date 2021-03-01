FROM scratch

ADD 486731e14237a263885422c12bb53cf7a4e9ed8decc6c29e4e9621fb5e4d2409.tar.xz /
ADD 97121a483818f9aaf7a02c8d3d4e9f212561bd1decc3f5e02e82517d7b5681b2.tar.xz /
ADD 9ffd23decd0da094541574ac45af12cc1d5392ba5e5f019f1735335cf52e8b89.tar.xz /
ADD da5e9450c902daf70ffece06dee3c14a26f2a7393c474e4006e9e6de04b438b0.tar.xz /
ADD f27420ce8057aff710be7b661965d605daebd47b74416a88b092602fac4fd666.tar.xz /
ADD f6ccf5403f600893e924e24bc7724b3924dfc33f3793257cc0ccda1feef3169f.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]

