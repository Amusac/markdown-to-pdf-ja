# markdown-to-pdf-ja

## これはなに？

markdown を Pandoc を使ってコンパイルする Github Action です。日本語対応です。

markdown をプッシュすると自動で PDF にコンパイルし、PDF を Github Repository に Push します。

大学生のレポート作成や、文書作成などに使えます。

「Word はバージョン管理できないから markdown で書きたいけど、日本語 markdown を PDF にする方法がわからん/めんどくさい」という方におすすめです。

簡単に使い始めることができ、なおかつ上級者にとってはカスタマイズ性に優れたActionを目指しています。

## 使い方

1. `./github/workflows/main.yml`を自分のリポジトリにコピー
1. `input.md`をそのリポジトリにプッシュ
1. pdf が自動でプッシュされます！


最小構成の使用例→https://github.com/Amusac/markdown-to-pdf-ja-sample

さらにカスタマイズしたい人は、Pandoc の Default file 機能が使えます。
[report.yaml](report.yaml)を編集して自分のリポジトリに置いてください。
（ファイル名が異なる場合は、main.yml 内の`DEFAULT_FILE`を編集してください。ただし Default file は`yml`ではなく`yaml`としてください。）
 CSL ファイルや bib ファイル、 TeX のプリアンブルファイル、複数のインプットファイルなども、自分のリポジトリに置き、 Default file を編集することで使えます。

## 最後に

まだまだ未完成ですので、Issue、Pull Request 歓迎です！

## References

- [pandoc/dockerfiles: Dockerfiles for various pandoc images](https://github.com/pandoc/dockerfiles)
- [Pandoc+Docker でドキュメント作成環境を整備する - 日々是好日](https://kcpoipoi.hatenablog.com/entry/2020/07/27/120438)
- [LaTeX と Travis CI でヒラギノフォント埋め込み PDF を作る - Qiita](https://qiita.com/yyu/items/e3451caa86779b94abe1)
- [Pandoc で参考文献リストを処理する扱う方法 (Pandoc と Zotero で参考文献：後編)](https://zenn.dev/sky_y/articles/pandoc-advent-2020-bib2)
- [GitHub actions で pandoc を使って pdf をコンパイル、そのまま push する | mat2's tech blog](https://mat2.net/posts/2020/01/09/github-actions-with-pandoc.html)
- [GitHub Actions で TeX をコンパイルして PDF を Releases にアップロードする](https://zenn.dev/ganariya/articles/platex-github-action)
