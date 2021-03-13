FROM pandoc/ubuntu-latex:2.11.4

RUN tlmgr update --self --all && \
    tlmgr install \
    bxjscls \
    bxwareki \
    everyhook \
    ipaex \
    luatexja \
    svn-prov \
    type1cm \ 
    collection-langjapanese \
    collection-fontsrecommended \
    collection-luatex

COPY entrypoint.sh /entrypoint.sh

RUN ["chmod", "+x", "/entrypoint.sh"]

ENTRYPOINT ["/entrypoint.sh"]
