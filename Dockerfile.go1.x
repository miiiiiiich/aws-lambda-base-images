FROM scratch

ADD 4591dcf7181fe48914a4388c95c97ba4a5e68629cb63f883ca2f9c03b514d809.tar.xz /
ADD 658ef45fb8b9b37a97a4924102ff914726177f303fdc2293736ebed2200c5fee.tar.xz /
ADD 6d9423f9b8f31a1fd175889e88fb8d5168b4d78b6e3f5ac4935ded44786ef880.tar.xz /
ADD 6e8dd5d056013afd48c449c01f920b7310f1ff4435acf45567fb8d4564c52845.tar.xz /
ADD 85dee359c63f5be8d9847268f00e1c60dee74e463c9d82aae45426be08b24f80.tar.xz /
ADD afe16a92bf4ec58694f351db73f5c103c9c02a2bd067fbce3593692cddba7658.tar.xz /
ADD c06c80352a537dac71c97990cb5ece3e25527a17466424e261b8663b50a91558.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]

