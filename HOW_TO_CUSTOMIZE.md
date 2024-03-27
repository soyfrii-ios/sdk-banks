# Personalización de fri IOS SDK

En esta sección se explica la forma en que el fri SDK puede personalizarse.

## Fuentes

Para configurar las fuentes, se debe de agregar dentro del proyecto los archivos de las fuentes (medium, regular y semi-bold) y en la vista principal llamar el metodo de configuracion de fuentes enviando un diccionario con las tres fuentes anteriormente indicadas con sus respectivos nombres de la siguiente manera:

```Swift
let customFontNames: [UIFont.Weight: String] = [
            .regular: "Poppins-Regular",
            .medium: "Poppins-Medium",
            .semibold: "Poppins-SemiBold"
        ]
UIFont.configureCustomFonts(customFontNames, withFileExtension: "ttf")
```

## Colores
 
Para configurar el color primario, se debe incluir el catalogo `Color.xcassets` y agregar el valor `rgb/hex` bajo la siguiente estructura de carpetas y subcarpetas (Folder with Namespace):

- Assets
  * primary
  * alert
  * background
  * divider
- Input
  * label
  * background
  * text
- Button
  - Primary
    * background
    * disabledBackground
    * text
    * disabledText
  - Secondary
    * text
- Text
  * dark
  * light
  * alert
 
### Assets (Folder)

Componentes principales que son parte de recursos gráficos tales como dividers, logos, indicadores, secciones y ciertos botones.

| Campo     | Tipo | Descripción |
|-----------|------|-------------|
| primary | Color | Color de los indicadores del TabBar y logos del SDK |
| alert     | Color   | Color para los botones y mensajes de alerta (generalmente rojo)   |
| background    | Color   | Color de los fondos de las pantallas   |
| divider | Color | Color de los separadores de todas las pantallas |

### Input (Folder)

Componentes de ingreso de datos como por ejemplo TextFields.

| Campo     | Tipo | Descripción |
|-----------|------|-------------|
| label | Color | Color del label del textField |
| background     | Color   | Color de fondo del textField   |
| text    | Color   | 	Color del texto del input cuando el usuario escribe   |

### Button (Folder)

fri SDK tiene dos tipos de botones, primarios y secundarios

| Campo     | Tipo | Descripción |
|-----------|------|-------------|
| Primary | Folder | Botones primarios |
| background     | Color   | Color de fondo para el botón primario |
| disabledBackground    | Color   | Color de fondo para el botón primario deshabilitado   |
| text | Color | Color del texto para los botones primarios |
| Secondary | Folder | Botones secundarios |
| text | Color | Color del texto para los botones secundarios |

### Text (Folder)

Elementos de text como por ejemplo Labels. 

| Campo     | Tipo | Descripción |
|-----------|------|-------------|
| dark | Color | Color que utilizan los lables de titulos además de íconos de acción primaria |
| light     | Color   | Color para los labels con menor importancia como subtitulos y textos de párrafo   |
| alert    | Color   | Color que indica el monto a pagar   |
