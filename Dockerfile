FROM pandoc/ubuntu-latex:2.11.4

RUN tlmgr update --self && \
    tlmgr install \
    bxjscls \
    bxwareki \
    everyhook \
    luatexja \
    svn-prov \
    type1cm \ 
    collection-langjapanese \
    collection-fontsrecommended \
    collection-luatex

COPY entrypoint.sh /entrypoint.sh

RUN ["chmod", "+x", "/entrypoint.sh"]

ENTRYPOINT ["/entrypoint.sh"]
