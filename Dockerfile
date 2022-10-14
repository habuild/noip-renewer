FROM python:3.10.8-alpine@sha256:fb225c2fc0ef76d533e075044ffdf87482387453a873373c0ea9c88a0d3b618d

ARG PIP_VERSION
ARG SELENIUM_VERSION
ARG GOOGLETRANS_VERSION
ARG REQUESTS_VERSION

RUN apk add --no-cache gcc libc-dev libffi-dev && \
    pip install --no-cache-dir pip=="$PIP_VERSION" && \
    pip install --no-cache-dir --user selenium=="$SELENIUM_VERSION" googletrans=="$GOOGLETRANS_VERSION" requests=="$REQUESTS_VERSION" && \
    tzdata --no-cache-dir



FROM python:3.10.8-alpine@sha256:fb225c2fc0ef76d533e075044ffdf87482387453a873373c0ea9c88a0d3b618d

RUN apk add --no-cache chromium chromium-chromedriver && \
    rm -rf /var/cache/apk/* /tmp/* /usr/share/doc

COPY --from=0 /root/.local /root/.local

ENV PATH=/root/.local/bin:$PATH

ADD renew.py .

ENTRYPOINT ["python3", "renew.py"]
