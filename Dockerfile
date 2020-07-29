FROM mcr.microsoft.com/dotnet/core/runtime-deps:3.1-buster-slim

ARG GITHUB_PAT
ARG GITHUB_RUNNER_SCOPE
ENV GITHUB_SERVER_URL="http://github.localhost"
ENV GITHUB_API_URL="http://api.github.localhost"

RUN apt-get update --fix-missing \
    && apt-get install -y --no-install-recommends \
        curl \
        jq \
        apt-utils \
        apt-transport-https \
        unzip \
        net-tools\
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Directory for runner to operate in
RUN mkdir /actions-runner
WORKDIR /actions-runner
COPY ./src/Misc/download-runner.sh /actions-runner/download-runner.sh
COPY ./src/Misc/entrypoint.sh /actions-runner/entrypoint.sh

RUN /actions-runner/download-runner.sh
RUN rm -f /actions-runner/download-runner.sh

# Allow runner to run as root
ENV RUNNER_ALLOW_RUNASROOT=1

ENTRYPOINT ["./entrypoint.sh"] 