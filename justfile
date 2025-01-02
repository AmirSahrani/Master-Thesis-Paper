# Justfile for LaTeX compilation and cleanup

# Compile a specific .tex file by its path
path tex_file:
    @pdflatex -aux-directory=/tmp {{tex_file}}
    @find . -type f -name '*.aux' -delete
    @find . -type f -name '*.log' -delete
    @find . -type f -name '*.toc' -delete
    @find . -type f -name '*.loa' -delete
    @find . -type f -name '*.lof' -delete
    @find . -type f -name '*.snm' -delete
    @find . -type f -name '*.nav' -delete
    @find . -type f -name '*.out' -delete
    @find . -type f -name '*.fls' -delete
    @find . -type f -name '*.fdb_latexmk' -delete

# Compile thesis (main.tex in the current directory) and clean auxiliary files
thesis:
    @pdflatex -aux-directory=/tmp main.tex
    @find . -type f -name '*.aux' -delete
    @find . -type f -name '*.log' -delete
    @find . -type f -name '*.toc' -delete
    @find . -type f -name '*.loa' -delete
    @find . -type f -name '*.lof' -delete
    @find . -type f -name '*.lot' -delete
    @find . -type f -name '*.out' -delete
    @find . -type f -name '*.fls' -delete
    @find . -type f -name '*.fdb_latexmk' -delete

# Clean auxiliary files in the current directory
clean:
    @find . -type f -name '*.aux' -delete
    @find . -type f -name '*.log' -delete
    @find . -type f -name '*.toc' -delete
    @find . -type f -name '*.loa' -delete
    @find . -type f -name '*.lof' -delete
    @find . -type f -name '*.snm' -delete
    @find . -type f -name '*.nav' -delete
    @find . -type f -name '*.out' -delete
    @find . -type f -name '*.fls' -delete
    @find . -type f -name '*.fdb_latexmk' -delete
