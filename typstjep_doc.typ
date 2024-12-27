#import "typstjep_20241227.typ": *
#show: Document => doctemplate(
  "日下部幽考",
  "The Japanese Educational Preambles for Typst Examples",
  box(
    scale(
      x: 80%,
      y: 80%,
      origin: left + horizon,
      reflow: true,
      ""
//      + h(0.5em)
//      + "metaphysica.info"
    )
  )
  ,
  vsmash
  + Document
)
#let baselineskip = 13.926pt // 13.926pt
#set par(spacing: baselineskip, leading: baselineskip)
#let hideswitch(body) = hide(body)
#let hideswitch(body) = body // To hide to comment-out;
#let teachingnote(body) = hide(sidenote(body))
#let teachingnote(body) = sidenote(body) // To hide to comment-out;

#set par(first-line-indent: 0em)
#vspace

= The Japanese Educational Preambles for Typst Examples

- 高校数学教材向け Typst テンプレート（私家版）。
- Typst 0.12.0，2024-12-27。
- 日下部幽考 (Yukoh Kusakabe)，http://x.com/metaphysicainfo 。
- この資料はコードと出力の見本である。汎用性が低いものは実装していてもこのPDFに載せていない。コードを見て試していただくことは差しつかえない。
- confer https://www.metaphysica.info/tools/typst-template/ 。
- confer https://github.com/metaphysicainfo/JEP-Typst


== 用紙・段落

A4出力だが，B5に縮小印刷しても綴じる余白が残るようになっている。

//
//== 段落

#h(1em)段落の１文字目は１字下げている。（この文書では設定していない。）

副作用が大きかったため，欧文と和文のフォントサイズ調整は行っていない。


== 引用文

`#blockquote[
  引用文
]`

#blockquote[
  引用文
]


== 破線囲み

`#blockthink[
	点線囲み段落
]`

#blockthink[
	点線囲み段落
]

`#boxthink[点線囲み文]`

#boxthink[点線囲み文]


== 横幅調整

`#boxscalex(70%,"縮めた文字")`

#boxscalex(70%,"縮めた文字")


== 強調

`_あ_ *あ*`

_あ_ *あ*


== 出典

`#boxs``ource(
  "著者，タイトル。出版社，ページ，出版年。"
)`
#boxsource(
  "著者，タイトル。出版社，ページ，出版年。"
)

`#boxfigs``ource(
  "著者，タイトル。出版社，ページ，出版年。"
)`
#boxfigsource(
  "著者，タイトル。出版社，ページ，出版年。"
)


== 定理見出し

- 空行が入る。

`#hdgdefinition#hdgtitle("定義名")`

#hdgdefinition#hdgtitle("定義名")

`#hdgdefinition#extrahdg#hdgtitle("定義名")`

#hdgdefinition#extrahdg#hdgtitle("定義名")

`#hdgdefinition#advancedhdg#hdgtitle("定義名")`

#hdgdefinition#advancedhdg#hdgtitle("定義名")

`- A
- #extralist;B
- #advancedlist;C`

- A
- #extralist;B
- #advancedlist;C

`#extra#advanced`
#v(-0.125em)

#extra#advanced


== 定理見出し名前リスト


#vsmash
=== 二重山括弧《》空行１行あり

- 定義：　`#hdgdefinition`
- 定理：　`#hdgtheorem`
- 例題：　`#hdgexample`
- 演習：　`#hdgexercise`
- 講義：　`#hdglecture`
- 談義：　`#hdgtalk`
- 談話：　`#hdgstatement`


=== 二重山括弧〈〉空行半行あり

- 例示：　`#hdgexempligratia`
- 証明：　`#hdgproof`
- 解決：　`#hdgsolution`
- 分析：　`#hdganalysis`
- 吟味：　`#hdgexamination`
- 補足：　`#hdgnote`
- 付言：　`#hdgaddition`
- 原題：　`#hdgoriginal`


=== 角括弧［］空行なし１字寄せ

- 別解：　`#hdganothersolution`
- 別証：　`#hdganotherproof`
- 概略：　`#hdgsummary`
- 計算用紙：　`#hdgdraftsheet`
- 答案用紙：　`#hdganswersheet`

#vspace
// == 見出し
= 見出し１
#vsmash
== 見出し２
#vsmash
=== 見出し３


== 空行調整

`#let vspace =  v(2em)
#let vspacehalf = v(1em)
#let vspacequarter = v(0.5em)
#let vsmash =  v(-2em)
#let vsmashhalf = v(-1em)
#let vsmashquarter = v(-0.5em)`

`vhalfspace`，`vhalfsmash` は非推奨ですが後方互換性のために残してあります。


== 数式番号

引用のある別行建て数式 `$ ... $ <eq>` + `@eq` のみに番号が付くようになっている。また `set ref(supplement: none)` としてある。

$
a
$<labeltest0>
本文@labeltest0#z;本文

/*
== 式番号あり数式

`#eqno[$
a
$]<labeltest>
本文@labeltest 本文`
#eqno[$
a
$]<labeltest>
本文@labeltest 本文
*/


== 式番号のリセット

`$
a
$<labeltest1>
#eqnoreset
$
a
$<labeltest2> @labeltest1 @labeltest2`
$
a
$<labeltest1>
#eqnoreset
$
a
$<labeltest2> @labeltest1 @labeltest2

/*
== インライン式番号（手動）

`$a$ #inlinenumbering[①]`

$a$ #inlinenumbering[①]
*/


== ローマン体・黒板太字

`$AA AAA$`

$AA AAA$


#pagebreak()
#vsmash


== 括弧書き

`$
  nominationbracket("新定理") <==> nomination("左辺")=a explan(because "説明" x+y=z)
$`

$
  nominationbracket("新定理") <==> nomination("左辺")=a explan(because "説明" x+y=z)
$


== カンマ余白・句点余白

`$
&1, 2, 3                  && 1 "。" 2 "。" 3       && 1 "あ" 2 "あ" 3\
&1comma 2comma 3          && 1period 2 period 3wide&& 1period 2 period 3\
&1commavar 2commavar 3wide&& 1 periodvar 2 periodvar 3
$`

$
  &1, 2, 3                  && 1 "。" 2 "。" 3       && 1 "あ" 2 "あ" 3\
  &1comma 2comma 3          && 1period 2 period 3wide&& 1period 2 period 3\
  &1commavar 2commavar 3wide&& 1 periodvar 2 periodvar 3
$


== インラインディスプレイ表記

`$lim_(x->oo) integral_0^x 1/2 thick d x$`

$lim_(x->oo) integral_0^x 1/2 thick d x$


== 括線

基本の設定よりも分数の括線を伸ばしてある。根号は副作用が解消できなかったため見送った。

$
1/2 + y/2 + sqrt(2) + sqrt(2y) + root(3,4) + avec(a) + avec(b) + vec(1,2,3)
$

#pagebreak()
#vsmash


== 式修飾

`#marka("最初の件")と#markb("次の件")で
$
  marka(a+b)+c+markb(d+e)=marka(1)+2+markb(3)
$
が成りたつ。`

最初の件#marka("最初の件")と#markb("次の件")で
$
  marka(a+b)+c+markb(d+e)=marka(1)+2+markb(3)
$
が成りたつ。

　`#marka`または`#markb`を用いると、数式扱いされるためにフォントサイズが 12pt になってしまう。現時点で，この現象は解消できていない（テキスト用に別名の命令を準備してもうまくいかなかった）。本文と数式のフォントサイズを揃えれば、この問題は解消するが、逆に全体として数式がやや小さく見えるだろう。`628`行目と`629`行目のコメントアウトを入れ替えると、本文と数式のフォントサイズが揃う。


== Shorthands

- accessed：　`acce``ssed`
- thinkto：　`thi``nkto`
- confer：　`con``fer`
- source figsource：　`sou``rce` `fi``gso``urce`
- review：　`revi``ew`
- famous：　`famo``us`
- colloquial：　`col``loquial`
- omitted：　`omitt``ed`
- QED：　`QE``D`
- $+- -+$：　`$+- -+$`
- $<= >=$：　`$<= >=$`
- →↑，→↓，↑→，↓→：　`→``↑`，`→``↓`，`↑``→`，`↓``→`
- `#z` は `h(0pt)` と定義してあり，shorthands の置換で困ったときに間に置くことができる。


#pagebreak()#vsmash
== 数式記号

- `overarc`はhttps://github.com/typst/typst/issues/2404による。

`$
a_1+a_2+a_3+cdots+a_n\
(A tand B) tor C\
GCD(a,b) + LCM(a,b)\
pair(a,b), triplet(a,b,c), quadruplet(a,b,c,d)\
overarc(upright(A B))\
l parallel m parallelnot n\
triangle upright(A B C) similar triangle upright(D E F)\
permutation(n,r) + combination(n,r)
  + repeatedpermunation(n,r) + repeatedcombination(n,r)\
expected(A)+expectation(A)+variance(A)+deviation(A)\
avec(a)+avec(b)\
conjugate(a)+conjugate(b)\
complement(A)+complement(B)\
Re z + Im z
$`

$
a_1+a_2+a_3+cdots+a_n\
(A tand B) tor C\
GCD(a,b) + LCM(a,b)\
pair(a,b), triplet(a,b,c), quadruplet(a,b,c,d)\
overarc(upright(A B))\
l parallel m parallelnot n\
triangle upright(A B C) similar triangle upright(D E F)\
permutation(n,r) + combination(n,r)
 + repeatedpermunation(n,r) + repeatedcombination(n,r)\
expected(A)+expectation(A)+variance(A)+deviation(A)\
avec(a)+avec(b)\
conjugate(a)+conjugate(b)\
complement(A)+complement(B)\
Re z + Im z
$


#pagebreak()#vsmash


== 参考


#vsmash
=== フォント

フォントは游明朝・游ゴシック・New Computer Modern Mathが指定されている。これらがないようであれば，適宜置きかえてもらいたい。`Yu Mincho`，`Yu Gothic`，`New Computer Modern Math`を置換するのが早い。


=== 傍注を表示

傍注を使いたければ，ファイル内464行目付近の\
`// let marginparwidth = 8em
let marginparwidth = 0em`\
を\
`let marginparwidth = 8em
// let marginparwidth = 0em`\
とする。そのうえで，\
`#sidenote[...]`\
とすれば傍注が使える。

私は傍注を教員用メモとして用いている。自分用には表示し，生徒用には表示しないためには\
`#let teachingnote(body) = hide(sidenote(body))
#let teachingnote(body) = sidenote(body)`
\
などとして切り替えればよい。


=== 答えの非表示

資料ファイルの冒頭で\
`#let hideswitch(body) = hide(body)
#let hideswitch(body) = body`\
などとして切り替えればよい。


#pagebreak()#vsmash


=== 目盛りを表示

（行によらない）目盛りを表示したければ、ファイル内500行目付近の\
`/*
footer:
...
*/`\
における\
`/*` と `*/` を削除する。
この機能は目立つうえに使わないほうが通常と思われるため、私は日常使っているが取り除いておいた。


=== 表は実際に書いてしまうのが楽
`#table(
  columns: 8,
  align: center + horizon,
  stroke: none,
  table.vline(x: 1, stroke: 0.4pt),
  $x$, $cdots$, $1$, $cdots$, $2$, $cdots$, $3$, $cdots$, 
  table.hline(start: 0, stroke: 0.4pt),
  tablemath($thin (d y)/(d x) $), $+$, $0$, $-$, $-$, $-$, $0$, $+$,
  table.hline(start: 0, stroke: 0.4pt),
  tablemath($ (d^2 y)/(d x^2) $), $-$, $-$, $-$, $0$, $+$, $+$, $+$,
  table.hline(start: 0, stroke: 0.4pt),
  $y$, "↑　→", $4$, "→　↓", "2", "↓　→", $0$, "→　↑",
)`

// https://typst.app/docs/reference/model/table/
#table(
  columns: 8,
  align: center + horizon,
  stroke: none,
  table.vline(x: 1, stroke: 0.4pt),
  $x$, $cdots$, $1$, $cdots$, $2$, $cdots$, $3$, $cdots$, 
  table.hline(start: 0, stroke: 0.4pt),
  tablemath($thin (d y)/(d x) $), $+$, $0$, $-$, $-$, $-$, $0$, $+$,
  table.hline(start: 0, stroke: 0.4pt),
  tablemath($ (d^2 y)/(d x^2) $), $-$, $-$, $-$, $0$, $+$, $+$, $+$,
  table.hline(start: 0, stroke: 0.4pt),
  $y$, "↑→", $4$, "→↓", "2", "↓→", $0$, "→↑",
)


#pagebreak()#vsmash

=== 文書冒頭（参考）

`#import "/@System/typsttemplate/typstjep_20241227.typ": *
#show "metaphysicaicon": h(0.5em) + box(baseline: 0pt)[#move(dy: 3.5pt, image("/@System/typsttemplate/metaphyciaicon.png", width: 15pt, height: 15pt))]
#show: Document => doctemplate(
  "Metaphysica",
  "headermemo 数学的帰納法と累積帰納法の証明力",
  box(
    scale(
      x: 80%,
      y: 80%,
      origin: left + horizon,
      reflow: true,
      "ナンバリング"
//      + h(0.5em)
//      + "metaphysica.info"
    )
  )
  + "metaphysicaicon",
  vsmash
  + Document
)
#let baselineskip = 13.926pt // 13.926pt
#set par(spacing: baselineskip, leading: baselineskip)
#let hideswitch(body) = hide(body)
#let hideswitch(body) = body // To hide to comment-out;
#let teachingnote(body) = hide(sidenote(body))
#let teachingnote(body) = sidenote(body) // To hide to comment-out;`

#vspace

ほぼそのまま使うにあたっても，
`#show "metaphysicaicon": h(0.5em) + box(baseline: 0pt)[#move(dy: 3.5pt, image("/@System/typsttemplate/metaphyciaicon.png", width: 15pt, height: 15pt))]`
と
`+ "metaphysicaicon"`
は削除せねば動かない。