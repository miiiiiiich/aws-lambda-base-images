FROM scratch

ADD 24300df6a8823943d0b926d60a33f877d14cca81f0c8667764b24fb7380d9aa3.tar.xz /
ADD 54e144bfdbbb269950c037bbdd4f06e18bec3e03264975832d67b696a59deff4.tar.xz /
ADD b18a0707b8912728eb597be9ac3156eebe5d5ff1e3ceb632c2dc1194acc17c13.tar.xz /
ADD cccafbf701f96bedd7b97da8715fcbbb308e28dd40d28af5c2b90fb5120b927d.tar.xz /
ADD da5e9450c902daf70ffece06dee3c14a26f2a7393c474e4006e9e6de04b438b0.tar.xz /
ADD eff3ea913558b75e62d61d9db64fcbe2167f121d2aa28b51b73e66ae67e0bb6b.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]

