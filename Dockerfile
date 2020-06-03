FROM fluent/fluentd-kubernetes-daemonset:v1.10.4-debian-elasticsearch7-1.0

RUN gem install fluent-plugin-elasticsearch
RUN gem install fluent-plugin-concat
ENV FLUENTD_OPT=""
ENV FLUENTD_CONF="fluent.conf"

CMD exec fluentd -c /fluentd/etc/$FLUENTD_CONF -p /fluentd/plugins $FLUENTD_OPT
