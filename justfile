# Justfile for LaTeX compilation and cleanup

# Compile a specific .tex file by its path
# path tex_file:
#     @pdflatex -aux-directory=/tmp  --output-directory=$(dirname {{tex_file}}) {{tex_file}}
#     @just clean

# Compile thesis (main.tex in the current directory) and clean auxiliary files
# thesis:
#    @pdflatex -aux-directory=/tmp main.tex
#  @just clean

# Clean auxiliary files in the current directory
clean:
    @find . -type f -name '*.aux' -delete
    @find . -type f -name '*.log' -delete
    @find . -type f -name '*.lot' -delete
    @find . -type f -name '*.toc' -delete
    @find . -type f -name '*.loa' -delete
    @find . -type f -name '*.lof' -delete
    @find . -type f -name '*.snm' -delete
    @find . -type f -name '*.nav' -delete
    @find . -type f -name '*.out' -delete
    @find . -type f -name '*.fls' -delete
    @find . -type f -name '*.bbl' -delete
    @find . -type f -name '*.blg' -delete
    @find . -type f -name '*.sync*' -delete
    @find . -type f -name '*.fdb_latexmk' -delete
