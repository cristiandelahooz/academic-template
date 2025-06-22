<!-- # Template Académico Profesional -->

Este template proporciona una estructura completa y profesional para trabajos académicos, ensayos, cuestionarios, reportes y otros documentos educativos en LaTeX.

## Características

- **Diseño profesional**: Encabezados y pies de página personalizados con elementos gráficos
- **Colores personalizables**: Paleta de colores fácil de modificar
- **Bibliografía automática**: Sistema BibLaTeX con generación automática de archivo bibliográfico
- **Estructura modular**: Código bien documentado y organizado
- **Compatibilidad LLM**: Variables y estructura optimizada para asistentes de IA
- **Makefile profesional**: Automatización completa del proceso de compilación

## Estructura del Proyecto

```
academic-template/
├── academic-template.tex    # Archivo principal del template
├── title-page.tex          # Página de título automática
├── Makefile               # Automatización de compilación
├── README.md              # Este archivo
├── assets/                # Recursos (logos, imágenes)
├── build/                 # Archivos temporales de compilación
└── output/                # PDF final generado
```

## Uso Básico

### 1. Configuración Inicial

Edita las variables en la sección "CONFIGURACIÓN DEL DOCUMENTO" del archivo `academic-template.tex`:

```latex
% Información institucional
\newcommand{\departmentName}{Escuela de Ingeniería}
\newcommand{\facultyName}{Facultad de Ciencias e Ingeniería}

% Información del documento
\newcommand{\documentMainTitle}{Mi Trabajo Académico}
\newcommand{\documentShortTitle}{Trabajo}

% Información del curso
\newcommand{\courseName}{Metodología de la Investigación}
\newcommand{\courseCode}{CSTI-1890-4341}

% Información del instructor
\newcommand{\instructorName}{Prof. Juan Pérez}

% Fechas
\newcommand{\submissionDate}{Enero de 2024}
```

### 2. Personalización de Colores

Modifica los colores en la sección "CONFIGURACIÓN DE COLORES":

```latex
\definecolor{primaryColor}{RGB}{124, 10, 2}        % Color principal
\definecolor{secondaryColor}{RGB}{240, 89, 65}     % Color secundario
\definecolor{accentColor}{RGB}{239, 167, 0}        % Color de acento
```

### 3. Compilación

```bash
# Compilación completa
make build

# Compilación rápida (sin bibliografía)
make quick

# Compilar y abrir documento
make show

# Ver ayuda
make help
```

## Comandos Makefile Disponibles

| Comando | Descripción |
|---------|-------------|
| `make build` | Compilación completa con bibliografía |
| `make quick` | Compilación rápida sin bibliografía |
| `make view` | Abrir el documento PDF |
| `make show` | Compilar y abrir documento |
| `make clean` | Limpiar archivos temporales |
| `make clean-all` | Limpiar todo incluyendo PDF |
| `make watch` | Compilación continua automática |
| `make check-deps` | Verificar dependencias |

## Requisitos del Sistema

- **LaTeX**: TeXLive, MiKTeX, o MacTeX
- **pdflatex**: Motor de compilación principal
- **biber**: Procesador de bibliografía
- **make**: Para usar el Makefile (opcional)

### Instalación en macOS
```bash
brew install --cask mactex
```

### Instalación en Ubuntu/Debian
```bash
sudo apt-get install texlive-full biber
```

## Uso de Bibliografía

### Automática (Recomendado para inicio)
El template genera automáticamente un archivo `biblio.bib` con ejemplos. Después de la primera compilación, puedes comentar el bloque `filecontents*` en el archivo principal.

### Manual
1. Crear tu propio archivo `biblio.bib`
2. Comentar o eliminar el bloque `filecontents*`
3. Agregar tus referencias en formato BibTeX

### Citar en el documento
```latex
Según \cite{ejemplo2024}, el tema presenta características importantes...
```

## Estructura del Contenido

El template incluye secciones predefinidas que puedes modificar:

- **Introducción**: Propósito y contexto del trabajo
- **Desarrollo**: Contenido principal con subsecciones
- **Análisis y Resultados**: Para trabajos de investigación
- **Discusión**: Interpretación de resultados
- **Conclusiones**: Síntesis final
- **Referencias**: Bibliografía automática

## Personalización Avanzada

### Añadir nuevas secciones
```latex
\section{Nueva Sección}
Contenido de la nueva sección...
```

### Modificar formato de títulos
Edita la sección "CONFIGURACIÓN DE FORMATO DE TÍTULOS" en el archivo principal.

### Cambiar fuentes
Modifica la configuración en la sección "CONFIGURACIÓN DE IDIOMA Y CODIFICACIÓN".

## Compatibilidad con LLM

Este template está optimizado para trabajar con asistentes de IA:

- Variables claramente nombradas y documentadas
- Estructura modular fácil de entender
- Comentarios explicativos en cada sección
- Ejemplos de uso incluidos

### Para LLMs: Instrucciones de Modificación

1. **Cambiar información del documento**: Modifica las variables en "CONFIGURACIÓN DEL DOCUMENTO"
2. **Personalizar colores**: Edita los valores RGB en "CONFIGURACIÓN DE COLORES"
3. **Agregar contenido**: Reemplaza los placeholders entre corchetes []
4. **Añadir referencias**: Modifica el archivo `biblio.bib` o el bloque `filecontents*`

## Solución de Problemas

### Error: "No se encuentra el logo"
Coloca tu logo institucional en la carpeta `assets/` y actualiza la ruta en:
```latex
\newcommand{\institutionalLogo}{assets/tu-logo.png}
```

### Error de compilación bibliográfica
Ejecuta la secuencia completa:
```bash
pdflatex academic-template.tex
biber academic-template
pdflatex academic-template.tex
pdflatex academic-template.tex
```

### Problemas con caracteres especiales
Asegúrate de que el archivo esté guardado en codificación UTF-8.

## Contribuciones

Este template está diseñado para ser extensible y mejorable. Sugerencias de mejora son bienvenidas.

## Licencia

Template de uso libre para fines académicos y educativos.

---

**Creado para**: Pontificia Universidad Católica Madre y Maestra (PUCMM)
**Mantenido por**: Cristian de la Hoz
**Última actualización**: Junio 2025
