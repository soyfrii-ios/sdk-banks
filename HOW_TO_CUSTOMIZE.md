# Personalización de fri IOS SDK

En esta sección se explica la forma en que el fri SDK puede personalizarse.

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


