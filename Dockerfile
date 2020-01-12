FROM google/cloud-sdk:alpine

ENV PATH="/root/.tfenv/bin:$PATH"

RUN apk update && \
    apk add --no-cache --upgrade git jq && \
    git clone --depth 1 https://github.com/tfutils/tfenv.git /root/.tfenv && \
    apk del git

RUN gcloud components install kubectl
