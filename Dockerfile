FROM progrium/busybox
MAINTAINER UserTaken <elysian@live.com>
RUN opkg-install tor
RUN sed -i 's/Run/#Run/' /etc/tor/torrc
RUN echo "SocksPort 0.0.0.0:65535" > /etc/tor/torrc && \
	echo "DNSPort 53" >> /etc/tor/torrc && \
	echo "AutomapHostsOnResolve 1" >> /etc/tor/torrc && \
	echo "AutomapHostsSuffixes .exit,.onion" >> /etc/tor/torrc
EXPOSE 53 9050
CMD ["/usr/sbin/tor"]
