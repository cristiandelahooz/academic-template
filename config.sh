# =============================================================================
# CONFIGURACIÓN DEL PROYECTO ACADEMIC-TEMPLATE
# =============================================================================
# Este archivo contiene variables de configuración para personalizar fácilmente
# el comportamiento del template y del sistema de compilación.

# Información del proyecto
PROJECT_NAME="Academic Template"
PROJECT_VERSION="1.0.0"
PROJECT_AUTHOR="Cristian de la Hoz"
PROJECT_DESCRIPTION="Template profesional para trabajos académicos en LaTeX"

# Configuración de compilación
DEFAULT_LATEX_ENGINE="pdflatex"
DEFAULT_BIBER_ENGINE="biber"
DEFAULT_OUTPUT_NAME="document"

# Directorios del proyecto
SOURCE_DIR="."
BUILD_DIR="build"
OUTPUT_DIR="output" 
ASSETS_DIR="assets"

# Configuración de dependencias
REQUIRED_PACKAGES="texlive-latex-extra texlive-bibtex-extra biber"

# Configuración de desarrollo
WATCH_FILES="*.tex *.bib"
EDITOR_COMMAND="code"

# URLs y enlaces útiles
DOCUMENTATION_URL="https://github.com/example/academic-template"
ISSUES_URL="https://github.com/example/academic-template/issues"
LATEX_HELP_URL="https://www.overleaf.com/learn"

# Configuración específica de PUCMM
INSTITUTION="Pontificia Universidad Católica Madre y Maestra"
INSTITUTION_ABBREVIATION="PUCMM"
DEFAULT_LOGO="assets/Logo PUCMM (Color).png"

# Colores institucionales (RGB)
PUCMM_PRIMARY_COLOR="124,10,2"
PUCMM_SECONDARY_COLOR="240,89,65"
PUCMM_ACCENT_COLOR="239,167,0"

# Configuración de salida
DEFAULT_PAPER_SIZE="letterpaper"
DEFAULT_FONT_SIZE="12pt"
DEFAULT_MARGINS="1in"

# Configuración de bibliografía
DEFAULT_BIB_STYLE="ieee"
DEFAULT_BIB_BACKEND="biber"
CITATION_STYLE="superscript"

# Configuración de idioma
DOCUMENT_LANGUAGE="spanish"
BABEL_OPTIONS="es-tabla,es-nodecimaldot"

# Rutas de archivos principales
MAIN_TEX_FILE="academic-template.tex"
TITLE_PAGE_FILE="title-page.tex"
BIBLIOGRAPHY_FILE="biblio.bib"
README_FILE="README.md"
MAKEFILE="Makefile"

# Configuración de limpieza
TEMP_EXTENSIONS="aux bbl bcf blg fdb_latexmk fls log out run.xml synctex.gz toc lof lot"
BACKUP_EXTENSIONS="bak tmp~"

# Configuración de validación
REQUIRED_COMMANDS="pdflatex biber make"
OPTIONAL_COMMANDS="latexmk texdoc"

# Información de contacto y soporte
MAINTAINER_EMAIL="example@pucmm.edu.do"
SUPPORT_CONTACT="Soporte Técnico PUCMM"

# Notas de versión
CHANGELOG="
v1.0.0 (Junio 2025):
- Template inicial con diseño profesional
- Sistema de compilación automatizado
- Documentación completa
- Compatibilidad con LLM optimizada
"
