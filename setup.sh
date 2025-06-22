#!/bin/bash

# =============================================================================
# SCRIPT DE CONFIGURACIÓN PARA ACADEMIC-TEMPLATE
# =============================================================================
# Este script ayuda a configurar y validar el entorno para usar el template

set -e  # Salir si hay errores

# Colores para output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Funciones de utilidad
log_info() {
    echo -e "${BLUE}[INFO]${NC} $1"
}

log_success() {
    echo -e "${GREEN}[SUCCESS]${NC} $1"
}

log_warning() {
    echo -e "${YELLOW}[WARNING]${NC} $1"
}

log_error() {
    echo -e "${RED}[ERROR]${NC} $1"
}

# Verificar si un comando existe
command_exists() {
    command -v "$1" >/dev/null 2>&1
}

# Función principal de setup
main() {
    log_info "Configurando Academic Template..."
    echo
    
    # Verificar dependencias básicas
    log_info "Verificando dependencias..."
    
    if command_exists pdflatex; then
        log_success "pdflatex encontrado"
    else
        log_error "pdflatex no encontrado. Instala TeXLive, MiKTeX o MacTeX"
        exit 1
    fi
    
    if command_exists biber; then
        log_success "biber encontrado"
    else
        log_warning "biber no encontrado. La compilación de bibliografía puede fallar"
    fi
    
    if command_exists make; then
        log_success "make encontrado"
    else
        log_warning "make no encontrado. Usa comandos manuales de compilación"
    fi
    
    # Verificar estructura de directorios
    log_info "Verificando estructura de directorios..."
    
    for dir in "build" "output" "assets"; do
        if [ -d "$dir" ]; then
            log_success "Directorio $dir existe"
        else
            mkdir -p "$dir"
            log_info "Directorio $dir creado"
        fi
    done
    
    # Verificar archivos principales
    log_info "Verificando archivos principales..."
    
    required_files=("academic-template.tex" "title-page.tex" "Makefile" "README.md")
    
    for file in "${required_files[@]}"; do
        if [ -f "$file" ]; then
            log_success "Archivo $file existe"
        else
            log_error "Archivo $file no encontrado"
            exit 1
        fi
    done
    
    # Verificar logo
    if [ -f "assets/Logo PUCMM (Color).png" ]; then
        log_success "Logo institucional encontrado"
    else
        log_warning "Logo institucional no encontrado en assets/"
        log_info "Coloca tu logo en assets/ y actualiza la ruta en academic-template.tex"
    fi
    
    # Probar compilación básica
    log_info "Probando compilación básica..."
    
    if make quick >/dev/null 2>&1; then
        log_success "Compilación de prueba exitosa"
    else
        log_warning "Compilación de prueba falló. Revisa dependencias"
    fi
    
    # Mostrar información de uso
    echo
    log_info "=== CONFIGURACIÓN COMPLETADA ==="
    echo
    echo "Comandos disponibles:"
    echo "  make build      - Compilación completa"
    echo "  make quick      - Compilación rápida"
    echo "  make show       - Compilar y abrir"
    echo "  make clean      - Limpiar archivos temporales"
    echo "  make help       - Mostrar ayuda completa"
    echo
    echo "Para personalizar tu documento:"
    echo "1. Edita las variables en academic-template.tex (líneas 200-230)"
    echo "2. Reemplaza el contenido entre corchetes [] con tu información"
    echo "3. Ejecuta 'make build' para generar el PDF"
    echo
    log_success "¡Template listo para usar!"
}

# Función de ayuda
show_help() {
    echo "Academic Template Setup Script"
    echo
    echo "Uso: $0 [OPCIÓN]"
    echo
    echo "Opciones:"
    echo "  -h, --help     Mostrar esta ayuda"
    echo "  -c, --check    Solo verificar dependencias"
    echo "  -v, --verbose  Salida detallada"
    echo
    echo "Este script configura el entorno para usar el template académico."
}

# Función solo de verificación
check_only() {
    log_info "Verificando dependencias solamente..."
    
    dependencies=("pdflatex" "biber" "make")
    all_good=true
    
    for dep in "${dependencies[@]}"; do
        if command_exists "$dep"; then
            log_success "$dep: ✓"
        else
            log_error "$dep: ✗"
            all_good=false
        fi
    done
    
    if $all_good; then
        log_success "Todas las dependencias están disponibles"
        exit 0
    else
        log_error "Algunas dependencias faltan"
        exit 1
    fi
}

# Procesar argumentos de línea de comandos
case "${1:-}" in
    -h|--help)
        show_help
        exit 0
        ;;
    -c|--check)
        check_only
        ;;
    -v|--verbose)
        set -x
        main
        ;;
    "")
        main
        ;;
    *)
        log_error "Opción desconocida: $1"
        show_help
        exit 1
        ;;
esac
