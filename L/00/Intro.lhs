\setcounter{chapter}{-1}
\chapter{About this
%if book
    book
%else
         course
%endif
        }
\label{ch:intro}

\section{Introduction}
\label{sec:intro}

%note: start
This book started out as lecture notes aimed at covering the lectures and exercises of the
BSc-level course ``Domain-Specific Languages of
Mathematics'' (at Chalmers University of Technology and University of
Gothenburg).
%note: aim
The immediate aim of the \course{} is to improve the mathematical
education of computer scientists and the computer science education of
mathematicians.
%note: future
We believe the \course{} can be the starting point for far-reaching
changes, leading to a restructuring of the mathematical training
of engineers in particular, but perhaps also for mathematicians
themselves.

%note: different style than elsewhere in Ch.0
%note: start of "identify a gap" (to later fill with "the book"/course)
Computer science, viewed as a mathematical discipline, has certain
features that set it apart from mainstream mathematics.
%
It places much more emphasis on syntax, tends to prefer formal proofs
to informal ones, and views logic as a tool rather than (just) as an
object of study.
%
It has long been advocated, both by mathematicians
\citep{wells1995communicating, kraft2004functions} and computer
scientists \citep{gries1995teaching, boute2009decibel}, that the
computer science perspective could be valuable in general mathematical
education.
%
Until today, as far as we can judge, this perspective has been convincingly demonstrated (at least since
the classical textbook of \citet{gries1993logical}) only in the field
of discrete mathematics.
%
In fact, this demonstration has been so successful, that we
see discrete mathematics courses being taken over by
computer science departments.
%
This is a quite unsatisfactory state of affairs, for at least two
reasons.

First, any benefits of the computer science perspective remain within
the computer science department and the synergy with the wider
mathematical landscape is lost.
%
The mathematics department also misses the opportunity to see more in
computer science than just a provider of tools for numerical
computations.
%
Considering the increasing dependence of mathematics on software, this
can be a considerable loss.

Second, computer science (and other) students are exposed to two quite
different approaches to teaching mathematics.
%
For many of them, the formal, tool-oriented style of the discrete
mathematics course is easier to follow than the traditional
mathematical style.
%
Moreover, because discrete mathematics tends to be immediately useful
to them, the added difficulty of continuous mathematics
makes it even less palatable.
%
As a result, their mathematical competence tends to suffer in areas
such as real and complex analysis, or linear algebra.

This is a serious problem, because this lack of competence tends to
infect the design of the entire curriculum.
%note: end of "identify a gap"

%note: start of "fill the gap"
We propose that a focus on \emph{domain-specific languages} (DSLs) can
be used to repair this unsatisfactory state of affairs.
%
In computer science, a DSL ``is a computer language specialized to a
particular application domain'' (Wikipedia), and building DSLs is
increasingly becoming a standard industry practice.
%
Empirical studies show that DSLs lead to fundamental increases in
productivity, above alternative modelling approaches such as UML
\citep{tolvanen2011industrial}.
%
Moreover, building DSLs also offers the opportunity for
interdisciplinary activity and can assist in reaching a shared
understanding of intuitive or vague notions.
%
This is supported by our experience: an example is the
work done at Chalmers in cooperation with the Potsdam Institute for
Climate Impact Research in the context of
\href{http://www.chalmers.se/en/departments/cse/news/Pages/Global-Systems-Science.aspx}{Global
  Systems Science}, \cite{LinckeJanssonetalDSLWC2009,
  ionescujansson2013DTPinSciComp, jaeger13:GSSshort,
  ionescujansson:LIPIcs:2013:3899, DBLP:journals/corr/BottaJICB16,
  botta_jansson_ionescu_2017_avoidability}.
%TODO: perhaps look over the references here

Thus, a course on designing and implementing DSLs can be an important
addition to an engineering curriculum.
%
Our key idea is to apply the DSL approach to a rich source of domains and
applications: mathematics.
%note: short ToC (Table of Contents)
Indeed, mathematics offers countless examples of DSLs: in this book we cover
complex arithmetics        (\cref{sec:DSLComplex}), %Ch1
sets and logic             (\cref{sec:logic}),      %Ch2
functions and derivatives  (\cref{sec:types}),      %Ch3
algebras and morphisms     (\cref{sec:CompSem}),    %Ch4
power series               (\cref{sec:poly}),       %Ch5
differential equations     (\cref{sec:deriv}),      %Ch6
linear algebra             (\cref{sec:LinAlg}),     %Ch7
Laplace transforms         (\cref{sec:Laplace}),    %Ch8
probability theory         (\cref{ch:probability-theory}). %Ch9
%
The idea that the various branches of mathematics are in fact DSLs
embedded in the ``general purpose language'' of set theory was (even
if not expressed in these words) the driving idea of the Bourbaki
project\footnote{The Bourbaki group is the pseudonym of a group of
mathematicians publishing a series of textbooks in modern pure
mathematics, starting in the 1930:s. See
\href{https://en.wikipedia.org/wiki/Nicolas_Bourbaki}{wikipedia}.}
which exerted an enormous influence on present day mathematics.

Hence, the topic of this \course{} is \emph{DSLs of Mathematics (DSLM)}.
%
It presents classical mathematical topics in a way which builds on the
experience of discrete mathematics: giving specifications of the
concepts introduced, paying attention to syntax and types, and so on.
%
For the mathematics students, the style of this \course{} will be more
formal than usual, as least from a linguistic perspective.
%
The increased formality is justified by the need to implement
(parts of) the languages.
%
We provide a wide range of applications of the DSLs introduced, so
that the new concepts can be seen ``in action'' as soon as possible.
%TODO: check how "in action" is actually followed up / implemented
For the computer science students, one aspect is to bring the
``computer aided learning'' present in feedback from the compiler from
programming to also help in mathematics.

In our view a course based on this textbook should have two major
learning outcomes.
%
First, the students should be able to design and implement a DSL in a
new domain.
%
Second, they should be able to handle new mathematical areas using the
computer science perspective.
%
(For the detailed learning outcomes, see Figure~\ref{fig:LearningOutcomes}.\pj{perhaps merge learning outcomes with ToC above})
%
\begin{wrapfigure}[26]{R}{0.5\textwidth}
\small
\vspace{-2em}
\begin{itemize}
\item Knowledge and understanding
  \begin{itemize}
  \item design and implement a DSL
    % (Domain-Specific Language)
    for a new domain
  \item organize areas of mathematics in DSL terms
  \item explain main concepts of elementary real and complex analysis,
        algebra, and linear algebra
  \end{itemize}
\item Skills and abilities
  \begin{itemize}
  \item develop adequate notation for mathematical concepts
  \item perform calculational proofs
  \item use power series for solving differential equations
  \item use Laplace transforms for solving differential equations
  \end{itemize}
\item Judgement and approach
  \begin{itemize}
  \item discuss and compare different software implementations of
        mathematical concepts
  \end{itemize}
\end{itemize}
  \caption{Learning outcomes}
  \label{fig:LearningOutcomes}
\end{wrapfigure}

%*TODO: Check if this form is actually carried out (perhaps update)
To achieve these objectives, the course consists of a sequence of case
studies in which a mathematical area is first presented, followed by a
careful analysis that reveals the domain elements needed to build a
language for that domain.
%
The DSL is first used informally, in order to ensure that it is
sufficient to account for intended applications (for example, solving
equations, or specifying a certain kind of mathematical object).
%
It is in this step that the computer science perspective proves
valuable for improving the students' understanding of the mathematical
area.
%
The DSL is then implemented in Haskell.
%**TODO: add these comparisons, or update the text
%The resulting implementation can be compared with existing ones, such
%as Matlab in the case of linear algebra, or R in the case of
%statistical computations.
%
Finally, limitations of the DSL are assessed and the possibility for
further improvements discussed.

In the first instances, the course is an elective course\pj{Too much
  focus on course, not book} for the second year within programmes
such as CSE\footnote{CSE = Computer Science \& Engineering =
Datateknik = D}, SE, and Math.
%
\pj{PREREQ1: merge with formal prereq text below at PREREQ2}
%
The potential students will have all taken first-year mathematics
courses, and the only prerequisite which some of them will not satisfy
will be familiarity with functional programming.
%
However, as some of the current data structures course (common to the Math and
CSE programmes) shows, math students are usually able to catch up fairly
quickly, and in any case we aim to keep to a restricted subset of
Haskell (no ``advanced'' features are required).

\pj{Probably move course data to appendix}
%note: partial evidence that the course "works"
To assess the impact in terms of increased quality of education, we
planned to measure how well the students do in ulterior courses that
require mathematical competence (in the case of engineering students)
or software compentence (in the case of math students).
%
For math students, we would like to measure their performance in
ulterior scientific computing courses, but we have taught too few math
students so far to make good statistics.
%
But for CSE students we have measured the percentage of
students who, having taken DSLM, pass the third-year courses
\emph{\href{https://www.student.chalmers.se/sp/course?course_id=21865}{Transforms,
    signals and systems (TSS)}} and
\emph{\href{https://www.student.chalmers.se/sp/course?course_id=21303}{Control
    Theory (sv: Reglerteknik)}}, which are current major stumbling blocks.
%
We have compared the results with those of a control group (students
who have not taken the course).
%
The evaluation of the student results shows improvements in the pass
rates and grades in later courses.
%
This is very briefly summarised in Table~\ref{tab:res} and more
details are explained by
\citet{TFPIE18_DSLMResults_JanssonEinarsdottirIonescu}.

%% -------------------------------------------------------------------
% Subsequent results
\begin{table}[h]
  \centering
  \begin{tabu}{l*{3}{c}}
                       & PASS  & IN   & OUT  \\
    \hline
    TSS pass rate   & 77\%  & 57\% & 36\% \\
    \rowfont{\scriptsize}
    TSS mean grade  & 4.23  & 4.10 & 3.58 \\
    Control pass rate   & 68\%  & 45\% & 40\% \\
    \rowfont{\scriptsize}
    Control mean grade  & 3.91  & 3.88 & 3.35 \\

  \end{tabu}
\caption{Pass rate and mean grade in third year courses for students who took and passed DSLsofMath and those who did not. Group sizes: PASS 34, IN 53, OUT 92 (145 in all).}
  \label{tab:res}
\end{table}
%TODO: perhaps add later statistics

\pj{Move old history to appendix}
%
The work that leads up to the current \course{} started in 2014 with
an assessment of what prerequisites we can reasonably assume and what
mathematical fields the targeted students are likely to encounter in
later studies.
%
In 2015 we submitted a course plan so that the first instance of the
course could start early 2016.
%
We also surveyed similar courses being offered at other universities,
but did not find any close matches.
%
(``The Haskell road to Logic Math and Programming'' by
\citet{doets-haskellroadto-2004} is perhaps the closest, but it is
mainly aimed at discrete mathematics.)

\reviseForBook{What follows probably needs thorough revision}
%
While preparing course materials for use within the first instance we
wrote a paper \citep{TFPIE15_DSLsofMath_IonescuJansson} about the
course and presented the pedagogical ideas at several events
(TFPIE'15, DSLDI'15, IFIP WG 2.1 \#73 in Göteborg, LiVe4CS in
Glasgow).
%
In the following years we used the feedback from students following
the standard course evaluation in order to improve and further develop
the course material into complete lecture notes, and now a book.

\pj{Probably cut - at least move to appendix}
\paragraph{Future work} includes involving faculty from CSE and
mathematics in the development of other mathematics courses with the
aim to incorporate these ideas also there.
%
A major concern will be to work together with our colleagues in the
mathematics department in order to distill the essential principles
that can be ``back-ported'' to the other mathematics courses, such as
Calculus or Linear Algebra.
%
Ideally, the mathematical areas used in DSLM will become increasingly
challenging, the more the effective aspects of the computer science
perspective are adopted in the first-year mathematics courses.

\section{About this
%if book
    book
%else
         course
%endif
        }
\jp{The whole chapter could have this title. It seems that what follows should be folded seamlessly into the rest}

%note: what the book is about
Software engineering involves modelling very different domains (e.g.,
business processes, typesetting, natural language, etc.) as software
systems.
%
The main idea of this book is that this kind of modelling is also
important when tackling classical mathematics.
%
In particular, it is useful to introduce abstract datatypes to
represent mathematical objects, to specify the mathematical operations
performed on these objects, to pay attention to the ambiguities of
mathematical notation and understand when they express overloading,
overriding, or other forms of generic programming.
%
We shall emphasise the dividing line between syntax (what mathematical
expressions look like) and semantics (what they mean).
%
This emphasis leads us to naturally organise the software abstractions
that we develop in the form of domain-specific languages, and we will see
how each mathematical theory gives rise to one or more such languages,
and appreciate that many important theorems establish ``translations''
between them.
%TODO: Is the claim about "translations" true for the book?

%note: motivates use of FP and choice of topics
Mathematical objects are immutable, and, as such, functional
programming languages are a very good fit for describing them.
%
We shall use Haskell as our main vehicle, but only at a basic level,
and we shall introduce the elements of the language as they are
needed.
%
The mathematical topics treated have been chosen either because we
expect all students to be familiar with them (for example, limits of
sequences, continuous functions, derivatives) or because they can be
useful in many applications (e.g., Laplace transforms, linear algebra).

\pj{Move to appendix about the course + project history}
In the first few years, the enrolment and results of the DSLsofMath
course itself was as follows:

\begin{center}
\begin{tabular}{lrrrrrr}
Year           & '16 & '17 & '18 & '19 & '20& '21\\\hline
Student count  &  28 &  43 &  39 &  59 &  50& 67\\
Pass rate (\%) &  68 &  58 &  89 &  73 &  68& 72\\
\end{tabular}
\end{center}

Note that this also counts students from other programmes (mainly SE
and Math) while Table~\ref{tab:res} only deals with the CSE
programme students.

\section{Who should read this textbook?}

The prerequisites of the underlying course may give a hint about what
is expected of the reader.
\jp{PREREQ2: This was stated in different terms above (PREREQ1), restructuring needed}
%
But feel free to keep going and fill in missing concepts as you go
along.

The student should have successfully completed
\begin{itemize}
\item a course in discrete mathematics as for example Introductory Discrete Mathematics.
\item 15 hec in mathematics, for example Linear Algebra and Calculus
\item 15 hec in computer science, for example (Introduction to Programming or Programming with Matlab) and Object-oriented Software Development
\item an additional 22.5 hec of any mathematics or computer science courses.
\end{itemize}

\pj{Move this part up (or cut what is above in this section)}
Informally: One full time year (60 hec = 60 ``higher education
credits'' ) of university level study consisting of a mix of
mathematics and computer science.



Working knowledge of functional programming is helpful, but it should
be possible to pick up quite a bit of Haskell along the way.
% \section{Roadmap}
%TODO: write about the book plan and internal dependencies
\jp{Reading guide as dependency graph - see also ``short ToC'' note above + \ref{fig:LearningOutcomes}}


\section{Notation and code convention}

The \course{} is a literate program: that is, it consist of text
interspersed with code fragments.
%
The source code of the book (including in particular all the Haskell
code) is available on GitHub in the repository
\url{https://github.com/DSLsofMath/DSLsofMath}.

Our code snippets are typeset using \texttt{lhs2tex}\todo{citation},
to hit a compromise between fidelity to the Haskell source and
maximize readability from the point of view of someone used to
conventional mathematical notation.
%
For example, function composition is typically represented as a circle
in mathematics texts. When typesetting, a suitable circle glyph can be
obtained in various ways, depending on the typesetting system:
\verb+&#8728+ in HTML, \verb+\circ+ in \TeX, or by the \textsc{ring
  operator} unicode codepoint (\verb"U+2218"), which appears ideal for
the purpose.
%
This codepoint can also be used in Haskell (recent implementations
allow any sequence of codepoints from the unicode \textsc{symbol}
class).  However, the Haskell Prelude uses instead the infix operator
\verb+.+ (period), as a crude ASCII approximation, possibly chosen for
its availability and the ease with which it can be typed.
%
In this book, as a compromise, we use the period in our source code,
but our typesetting tool renders it as a circle glyph. If, when
looking at typset pages, any doubt should remain regarding to the form
of the Haskell source, we urge the reader to consult the github
repository.

%
The reader is encouraged to experiment with the examples to get a
feeling for how they work.
%
But instead of cutting and pasting code from the PDF, please use the
source code in the repository to avoid confusion from indentation and
symbols.
%
A more radical, but perhaps more instructive alternative would be to
recreate all the Haskell examples from scratch.

Each chapter ends with exercises to help the reader practice the
concepts just taught.
%
%if lectureNotes
Most exam questions from the first five exams of the DSLsofMath course
have been included as exercises, so for those of you taking the
course, you can check your progress towards the final examination.
%endif
%
Sometimes the chapter text contains short, inlined questions, like
``Exercice~\ref{exc:fmap}: what does function composition do to a sequence?''.
%
In such cases there is some more explanation in the exercises section
at the end of the chapter, and the exercise number is a link to the
correct place in the document.

In several places the book contains an indented quote of a definition
or paragraph from a mathematical textbook, followed by detailed
analysis of that quote.
%
The aim is to improve the reader's skills in understanding, modelling,
and implementing mathematical text.

\section{Common pitfalls with traditional mathematical notation}
\label{sec:pitfalls}
%note: a bit odd placement of this section in a chapter "about this book"

\subsection{A function or the value at a point?}

Mathematical texts often talk about ``the function $f(x)$'' when ``the
function $f$'' would be more clear.
%
Otherwise there is a risk of confusion between $f(x)$ as a
function and $f(x)$ as the value you get from applying the function
$f$ to the value bound to the name $x$.

Examples: let $f(x) = x + 1$ and let $t = 5*f(2)$.
%
Then it is clear that the value of $t$ is the constant $15$.
%
But if we let $s = 5*f(x)$ it is not clear if $s$ should be seen as a
constant (for some fixed value $x$) or as a function of $x$.

Paying attention to types and variable scope often helps to sort out
these ambiguities.

\subsection{Scoping}
\label{sec:scoping-pitfall}
The syntax and scoping rules for the integral sign are rarely
explicitly mentioned, but looking at it from a software perspective
can help.
%
If we start from a simple example, like \(\int_{1}^{2} x^2 dx\), it is
relatively clear: the integral sign takes two real numbers as limits
and then a certain notation for a function, or expression, to be
integrated.
%
Comparing the part after the integral sign to the syntax of a function
definition \(f(x) = x^2\) reveals a rather odd rule: instead of
\emph{starting} with declaring the variable \(x\), the integral syntax
\emph{ends} with the variable name, and also uses the letter ``d''.
%
(There are historical explanations for this notation, and it is
motivated by computation rules in the differential calculus, but we
will not go there now. We are also aware that the notation
$\int dx f(x)$, which emphasises the bound variable, is sometimes
used, especially by physicists, but it remains the exception rather
than the rule at the time of writing.)
%
It seems like the scope of the variable ``bound'' by |d| is from the
integral sign to the final |dx|, but does it also extend to the
limits of the domain of integration?
%
The answer is no, as we can see from a slightly extended example:
%
\begin{align*}
   f(x) &= x^2
\\ g(x) &= \int_{x}^{2x} f(x) dx &= \int_{x}^{2x} f(y) dy
\end{align*}
%
The variable |x| bound on the left is independent of the variable |x|
``bound under the integral sign''.
%
We address this issue in detail in \cref{sec:functions-and-scoping}.
%
Mathematics text books usually avoid the risk of confusion by
(silently) renaming variables when needed, but we believe that this
renaming is a sufficiently important operation to be more explicitly
mentioned.




\section*{Acknowledgments}

The support from Chalmers Quality Funding 2015 (Dnr C 2014-1712, based
on Swedish Higher Education Authority evaluation results) is
gratefully acknowledged.
%
Thanks also to Roger Johansson (as Head of Programme in CSE) and Peter
Ljunglöf (as Vice Head of the CSE Department for BSc and MSc
education) who provided continued financial support when the national
political winds changed.

Thanks to Daniel Heurlin who provided many helpful comments during his
work as a student research assistant in 2017.

This work was partially supported by the projects GRACeFUL (grant
agreement No 640954) and CoeGSS (grant agreement No 676547), which
have received funding from the European Union’s Horizon 2020 research
and innovation programme.

The authors also wish to thank several anonymous reviewers and
students who have contributed with many suggestions for improvements.
