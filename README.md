# jl2nb

Create jupyter notebooks from julia source code with markup for reveal.js and RISE.js slides using [Literate.jl](https://fredrikekre.github.io/Literate.jl/stable/)
for presentations with interactive Julia code. In particular, this script handles Julia block comments

This code is considered experimental.

## Installation as self-contained "shebang" script

Currently, this runs on Linux and (probably) MacOSX.

- Have Julia on the PATH. 
- Install the the tools described in  [Presenting.md](Presenting.md)
- Add [Literate.jl](https://fredrikekre.github.io/Literate.jl/stable/) and [ArgParse.jl](http://carlobaldassi.github.io/ArgParse.jl/stable/)
- Copy jl2nb to a directory on the PATH, make it executable
- Invoke `jl2nb --help` for documentation
- Inspect the example.

## Use under julia

This should run under all systems

- Invoke `julia jl2nb --help` for documentation
- Inspect the example.

## Three mode handling in emacs
The following snippet helps with switching between julia, markdown and latex modes in emacs.
It will work when the markdown chunks are put into block comments.


````
(defvar mode-state1 nil)
(defvar mode-state2 nil)
(defvar mode-state3 t)
(defun toggle-jlmdtex nil "switch between julia, gfm and latex modes when editing  files" (interactive)
       (if mode-state1 
           (progn  (setq mode-state1 nil) (setq mode-state2 t))
         (if mode-state2 
             (progn (setq mode-state2 nil) (setq mode-state3 t))
           (if mode-state3 
               (progn (setq mode-state3 nil) (setq mode-state1 t))
             )
           )
         )
       (if mode-state1 (latex-mode))
       (if mode-state2 (markdown-mode))
       (if mode-state3 (julia-mode))
       
       )
(global-set-key "\C-l" 'toggle-jlmdtex);;
````






