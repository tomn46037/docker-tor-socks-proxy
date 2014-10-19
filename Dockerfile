FROM progrium/busybox
RUN opkg-install tor
RUN mkdir /var/lib/tor && \
	chown tor:tor /var/lib/tor && \
	chmod 700 /var/lib/tor

RUN sed -i 's/Run/#Run/' /etc/tor/torrc
RUN echo "SocksPort 0.0.0.0:9050" >> /etc/tor/torrc && \
	echo "DNSPort 0.0.0.0:53" >> /etc/tor/torrc && \
	echo "AutomapHostsOnResolve 1" >> /etc/tor/torrc && \
	echo "AutomapHostsSuffixes .exit,.onion" >> /etc/tor/torrc
CMD ["/usr/sbin/tor"]
