# Diapositivas en Markdown

Conversión de los 17 `.Rmd` de `A. Temario 2023/` a Markdown (los `.Rmd` originales no se han tocado).

- Un `.md` por presentación, con el mismo nombre que el `.Rmd`.
- Los chunks de R se han ejecutado (knitr): los gráficos y diagramas quedan como imágenes y las salidas como texto.
- La imagen IA aleatoria de cada portada/sección se ha fijado (semilla 2023).
- Las dos columnas (`<!-- Dos columnas -->` … `<!-- Fin -->`) se han pasado a columnas de Pandoc (`:::: {.columns}`), que PowerPoint entiende.
- Se han quitado de la cabecera YAML los bloques `output:` y `params:` (eran de slidy).

## Recursos

```
recursos/<nombre-del-md>/
  imagenes/   imágenes que usa el fichero (de RmkdFiles/ y A.Despensa/imagenesIA/)
  figuras/    gráficos y diagramas generados por los chunks de R
  datos/      ficheros de datos (.rda) que usaba el código R
```

Los nombres con espacios se han cambiado a `_` (p. ej. `test error.png` → `test_error.png`).

## Pasar a PowerPoint

```
pandoc 06.01.TRI.md -o 06.01.TRI.pptx
pandoc 06.01.TRI.md -o 06.01.TRI.pptx --reference-doc=plantilla.pptx
```

Hay que ejecutarlo desde esta carpeta para que se encuentren las imágenes.
