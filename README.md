Easy Sudachi CLI setup for dummies.

# Usage

```sh-session
# Build an image
$ sudo docker image build -t sudachi .

# Run sudachi commands
$ echo 東京都へ行く | sudo docker run -i sudachi
東京都	名詞,固有名詞,地名,一般,*,*	東京都
へ	助詞,格助詞,*,*,*,*	へ
行く	動詞,非自立可能,*,*,五段-カ行,終止形-一般	行く
EOS

$ echo 東京都へ行く | sudo docker run -i -v $PWD:/workdir sudachi -o result.txt
$ cat result.txt
東京都	名詞,固有名詞,地名,一般,*,*	東京都
へ	助詞,格助詞,*,*,*,*	へ
行く	動詞,非自立可能,*,*,五段-カ行,終止形-一般	行く
EOS
```

# License

MIT
