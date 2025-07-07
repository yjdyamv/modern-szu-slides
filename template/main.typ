#import "../lib.typ":* 
// 便于设置numbering的包
#import "@preview/numbly:0.1.0":*
// 引入定理环境包 theorion
#import "@preview/theorion:0.3.3":*
// 以下是theorion可供选择的样式
// #import cosmos.fancy: *
// #import cosmos.rainbow: *
// #import cosmos.clouds: *
#show: show-theorion

#show: szu-theme.with(
  title: [Shenzhen University Slides based on Touying and Typst],
  subtitle: [基于 Touying 的深圳大学 Typst 幻灯片模板],
  author: [yjdyamv],
  date: datetime.today(),
  institution: [深圳大学],
)

#set heading(numbering: numbly("{1}.", default: "1.1"))

#title-slide()

#outline-slide()

= Section A

== 定理环境测试

#theorem(title: "勾股定理")[$a^2+b^2=c^2$]

#example[asdfasdf]

#theorem(title: "机械功的定义")[$ W = integral_(-oo)^(oo) arrow(F) dot dif arrow(x) $]

#problem[#lorem(20)]

#lemma[#lorem(20)]

#proposition[#lorem(30)]

#corollary[#lorem(10)]

#slide()[
  #lorem(20)
]

#definition[#lorem(20)]

== Subsection A.2

A slide without a title but with *important* information.

= Section B

== Subsection B.1

#lorem(80)

#focus-slide[
  Wake up!
]

== Subsection B.2

We can use `#pause` to #pause display something later.

#pause

Just like this.

#meanwhile

Meanwhile, #pause we can also use `#meanwhile` to #pause display other content synchronously.

We can use `#pause` to #pause display something later.



#show: appendix

= Appendix

== Appendix

Please pay attention to the current slide number.

// #bibliography("ref.bib",full:true)