FROM fluent/fluentd

RUN gem install fluent-plugin-elasticsearch
RUN gem install fluent-plugin-concat
ENV FLUENTD_OPT=""
ENV FLUENTD_CONF="fluent.conf"

CMD exec fluentd -c /fluentd/etc/$FLUENTD_CONF -p /fluentd/plugins $FLUENTD_OPT
