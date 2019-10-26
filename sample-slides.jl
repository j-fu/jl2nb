#----------------------------------------
# @@{slide()}
# @@{theme("simple")}
# @@{header("""<h1 style="margin-left:20ex;>Demo Slides for jl2nb</h1>""")}
# @@{footer("""<h2 style="margin-left:10ex;">Footer </h2>""")}
#
#
# Title
# =====
#----------------------------------------
# @@{slide()}
#
# ## This is a slide with  some subslides
#
# It contains an executable cell with Julia code
println("Hello World");
#----
# @@{subslide()}
# ### This is a sub-slide, again with executable code
println("Hello World from the subslide");
#----------------------------------------
# @@{slide()}
#
# ## Another slide with fragments
#
#-
# @@{fragment()}
# - First item
#-
# @@{fragment()}
# - Second item
#-
# @@{fragment()}
# - Third item



