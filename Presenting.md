Presenting with Julia  & Jupyter & Reveal.js & Rise.js
======================================================

## Workflow Summary
- Write Julia scripts with markup for Literate.jl  in your favorite editor.  These can be version controlled in a standard way (which is the main reason
  to  advocate this workflow). 
- Use Literate.jl, e.g.  via [jl2nb](https://github.com/j-fu/jl2nb) (this package)  to create a jupyter notebook
- Start Jupyter via IJulia and load notebook, switch to reveal.js presentation (alt-r)

## Tools ##

### Jupyter ###
Browser-based interactive environment to work with Julia, python  and R  based on  Jupyter notebooks.

- Jupyter notebooks: essentialy JSON files (database format based on  Javasript dicts) and contain the text and  code cells
- Bad: Jupyter notebooks  store  code and  results in  one file. This makes it almost  impossible to have decent version control for them
- Worse: [I Don't Like Notebooks - Joel Grus - #JupyterCon 201](https://docs.google.com/presentation/d/1n2RlMdmv1p25Xy5thJUhkKGvjtV-dkAIsUXP-AL4ffI/edit#slide=id.g362da58057_0_1)
- Good: Jupyter notebooks together with the RISE extension (see below) are indeed great for presentations including interactive code

Here, we circumvent the problems by creating notebooks them from another source: Julia code.

### [IJulia.jl](https://github.com/JuliaLang/IJulia.jl) ###
Julia package to start Jupyter with Julia kernel in the browser locally on your system.

### [Literate.jl](https://fredrikekre.github.io/Literate.jl/stable/) ###
Julia package which allows to comment Julia scripts such that they can be converted to Markdown, plain scripts and Jupyter notebooks.

### [reveal.js](https://revealjs.com)
HTML presentation framework.

### [RISE](https://rise.readthedocs.io/en/maint-5.5/) ###
Jupyter slideshow extension which allows to switch between notebook and presentation modes.

Unlike the slides created by the html export of Jupyter, the reveal.js presentation  started _keeps the code cells active_  .

### [jl2nb](https://github.com/j-fu/jl2nb) (this package)

Wrapper script for Literate.jl allows to add slide tags and features for the RISE extension to a notebook.

