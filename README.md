# Nonlinear Regression: A Practical Guide — Thesis Repo

Comprehensive collection for rendering the Quarto book of my master’s thesis, **“Nonlinear Regression: A Practical Guide from Foundations to Applications.”**

## Contents

* `_quarto.yml` — project configuration to render the book
* `01_introduction` … `08_chapter_7` — chapters from introduction to conclusion
* `appendix/` — appendix materials
* `latex/` — LaTeX template (Seminar for Statistics)
* `setup.R` — sourced in every document for consistent plots/theme
* `apa.csl` — APA‑7 citation style
* `MyThesis.Rproj` — RStudio project (R environment)

## Build

**Requirements:** [Quarto](https://quarto.org), R (recommended), and a LaTeX distribution (e.g., TinyTeX/TeX Live) for PDF output.

Render the full book (HTML/PDF as configured in `_quarto.yml`):

```bash
quarto render
```

Render a single chapter (example):

```bash
quarto render 03_chapter_2.qmd
```

From R:

```r
# from the project root
# quarto::quarto_render()         # full book
quarto::quarto_render("03_chapter_2.qmd")  # single chapter
```

## Notes

* The LaTeX template is referenced in `_quarto.yml` and lives in `latex/`.
* Citations use `apa.csl`; bibliography is configured via `_quarto.yml`.
* Outputs are written to `_book/` by default.
