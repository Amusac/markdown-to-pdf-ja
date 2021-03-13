FROM pandoc/latex:2.11.4

# Here 'update latex' is needed, because LaTeX in this
# container is of version <2020-02-02> PL2, and LuaTeX-ja
# cannot run with this version.
RUN apk update && \
    apk add git
RUN tlmgr update --self --all && \
    tlmgr install \
    bxjscls \
    bxwareki \
    everyhook \
    ipaex \
    luatexja \
    svn-prov \
    type1cm




COPY entrypoint.sh /entrypoint.sh

RUN ["chmod", "+x", "/entrypoint.sh"]

ENTRYPOINT ["/entrypoint.sh"]
