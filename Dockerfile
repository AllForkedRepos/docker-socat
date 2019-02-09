FROM alpine:3.9
RUN apk add --no-cache socat
# The default alpine/socat image uses ENTRYPOINT instead of CMD,
# which presents problems when using nsenter.
CMD [ "socat" ]
