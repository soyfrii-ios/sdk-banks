# Fri iOS SDK

Repositorio oficial para fri iOS SDK

## Como instalar

Consulta la sección de [Como instalar](HOW_TO_INSTALL.md) para más información sobre instalar e integrar fri iOS SDK.

## Personalización

Consulta la sección de Personalizar SDK para más información sobre como personalizar el SDK.

## Como utilizar Fri SDK para iOS

Para inicializar el SDK se debe inyectar la configuración de datos necesaria para funcionar correctamente.

```Swift 
let userId = "id de usuario en banco"
let sessionUUID = "valor obtenido en login"
let nonce = "valor obtenido en login"
let iv = "valor obtenido en login"
            
let configuration = FriSDKConfiguration(userId: userId,
                                                    session: sessionUUID,
                                                    nonce: nonce,
                                                    publicId: iv)

let friSDK = FriSDK(configuration: configuration)
```

Parameters:

`userId:` Es el id del usuario que provee el servicio de backend de la aplicación host.

`session:` Es el id de la sesión resultante que se obtiene por backend de la aplicación host.

`nonce:` Valor que servirá al SDK para asegurar la comunicación para el usuario que inicio sesión.

`publicId:` Valor que servirá al SDK para asegurar la comunicación para el usuario que inicio sesión.

### Metodos

`friSDK.initializeTransferFlow(qrString: String? = nil)` :  Inicializa el flujo de FriPay.

`qrString(Opcional)`: Es el String de un QR leido previamente. Si se provee el dato, el SDK se inicializara con los datos contenidos en este String

`friSDK.initializeAccountsManagement()`: Inicializa la pantalla de listado cuentas bancarias en fri


### Configuración de fuentes

Para configurar las fuentes, se debe de agregar dentro del proyecto los archivos de las fuentes (medium, regular y semi-bold) y en la vista principal llamar el metodo de configuracion de fuentes enviando un diccionario con las tres fuentes anteriormente indicadas con sus respectivos nombres de la siguiente manera:

``` Swift
let customFontNames: [UIFont.Weight: String] = [
            .regular: "Poppins-Regular",
            .medium: "Poppins-Medium",
            .semibold: "Poppins-SemiBold"
        ]
UIFont.configureCustomFonts(customFontNames, withFileExtension: "ttf")
```


## Notificaciones para flujo de agregar cuenta

Para comunicar el fri iOS SDK con la app host, se utiliza notificaciones (NSNotification) para enviar diferentes mensajes, valores u objetos deseados.

Para poder escuchar y recibir dichas notificaciones en el app host se debe agregar un observador en ViewDidLoad() de la clase o vista donde se desea recibir dichas notificaciones.
 
```NotificationCenter.default.addObserver(self, selector: #selector(didReceiveFriSDKNotification(_:)), name: NSNotification.Name("friSDKNotification"), object: nil)```

Y seguidamente agregar una funcion que obtiene el valor y realiza algo con dicho valor:

```Swift
@objc func didReceiveFriSDKNotification(_ notification: NSNotification) {
        print("Notification \(notification.name.rawValue) received with info: \(notification.userInfo ?? ["":""])")
    }
```
