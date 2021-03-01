FROM scratch

ADD 1190255a38a4296ec1725819c1e9331861879e2bac92cc8688c9ef3f20aeee36.tar.xz /
ADD 143048aaab246d2b0b7300d55e4c7bcf0583666d8e23dce7fafa929dab15f199.tar.xz /
ADD 1aa6c284a5b1d52fa479b5b8b8e07da12b1cd8ac0c16167037ca1b08280a948b.tar.xz /
ADD 41a1aba10f03172f1eae632feb53db09741069d8e5b387afa8f35346c42b191f.tar.xz /
ADD 50558002ae130a0e39e9fb93c9e091b5949cb979ab93a9f57b35ccb86bd802db.tar.xz /
ADD da5e9450c902daf70ffece06dee3c14a26f2a7393c474e4006e9e6de04b438b0.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]

