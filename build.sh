#!/usr/bin/bash

rm -rf paginaWeb
mkdir paginaWeb
archivo = "paginaWeb/w3.css"

# verifica si el archivo existe
if [! -f "$archivo"]; then
    echo "Descargando w3.css..."
    # decarga el archivo y le indica dónde guardarlo (-o)
    wget -o "$archivo" https://www.w3schools.com/w3css/4/w3.css
        # salida del comando wget, si wget <> 0 =
        if [$? -ne 0]; then
            echo "Error al descargar w3.css"
            exit 1
        fi
fi

# creación de la página web
./indice.sh > index.html
./pagina1.sh > paginaWeb/pagina1.html
./pagina2.sh > paginaWeb/pagina2.html
./pagina3.sh > paginaWeb/pagina3.html
