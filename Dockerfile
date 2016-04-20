FROM progrium/busybox
RUN opkg-install openssh-client openssh-keygen

ADD keygen.sh /opt/keygen.sh
RUN chmod 755 /opt/keygen.sh

ENTRYPOINT ["/opt/keygen.sh"]
CMD ["/root/.ssh"]
