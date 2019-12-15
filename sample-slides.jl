#----------------------------------------
# @__{slide()}__
# @__{theme("simple")}__
# @__{header("""<h1 style="margin-left:20ex;>Demo Slides for jl2nb</h1>""")}__
# @__{footer("""<h2 style="margin-left:10ex;">Footer </h2>""")}__
#
#
# Title
# =====
#----------------------------------------
# @__{slide()}__
#
# ## This is a slide with  some subslides
#
# It contains an executable cell with Julia code
println("Hello World");
#----
# @__{subslide()}__
# ### This is a sub-slide, again with executable code
println("Hello World from the subslide");
#----------------------------------------
# @__{slide()}__
#=

## Another slide with fragments

Here, we use block comments ( `#=` and `=#` must be placed in the first column),
and we can nicely use LaTeX formulas.

\begin{pmatrix}
  \int_a^b sin(x^2) dx & X\cap\emptyset=\emptyset & X\cup\emptyset=X\\
  \Rightarrow& x^{y^z}& \sin(2\pi)
\end{pmatrix}

=#
#-
# @__{fragment()}__
# - First item
#-
# @__{fragment()}__
# - Second item
#-
# @__{fragment()}__
# - Third item



