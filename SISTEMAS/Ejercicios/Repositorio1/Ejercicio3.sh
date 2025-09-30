#!/bin/bash
cat /etc/fonts/fonts.conf
# En este caso no habría que modificarlo ya que es una ruta absoluta, no relativa

# Esta opción redirige la salida de cat, que lee archivos, como
# entrada del comando wc, que cuenta líneas, palabras y caracteres 
cat /etc/fonts/fonts.conf | wc
# otra opción es usar solamente el comando wc, que puede leer archivos directamente
wc /etc/fonts/fonts.conf