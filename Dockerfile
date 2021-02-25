FROM pandoc/ubuntu-latex:latest

# Here 'update latex' is needed, because LaTeX in this
# container is of version <2020-02-02> PL2, and LuaTeX-ja
# cannot run with this version.
RUN apt-get update && \
    apt-get install git
RUN tlmgr update --self --all && \
    tlmgr install \
        bxjscls \
        bxwareki \
        everyhook \
        ipaex \
        luatexja \
        svn-prov \
        type1cm && \
    tlmgr update latex



COPY entrypoint.sh /entrypoint.sh

RUN ["chmod", "+x", "/entrypoint.sh"]

# dockerコンテナが起動する際に実行されるコードファイル (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]