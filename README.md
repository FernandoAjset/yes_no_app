# Chat Fake de Respuestas YesNo con Memes - Aplicación Flutter
Este repositorio contiene el código fuente de una aplicación móvil desarrollada en Flutter que implementa un pequeño chat falso (fake) capaz de responder preguntas con memes obtenidos de la API https://yesno.wtf. La aplicación muestra cómo interactuar con la API mencionada y utiliza diferentes elementos de Flutter para construir la interfaz de usuario y gestionar la lógica.

## Descripción
La aplicación se centra en simular un chat donde el usuario puede hacer preguntas y recibir respuestas en forma de memes que expresan "Sí", "No" o "Tal vez". Estas respuestas se generan de manera aleatoria al consumir la API https://yesno.wtf. La aplicación ilustra el uso de diversos temas y conceptos en Flutter para lograr este objetivo.

## Temas Abordados
Durante el desarrollo de esta aplicación, se exploraron varios aspectos clave de Flutter:

- **TextEditingControllers**: Se utilizaron para controlar y gestionar el texto en los campos de entrada de mensajes del chat.
- **Focus Nodes**: Se emplearon para manejar el enfoque en los campos de entrada, mejorando la experiencia del usuario al interactuar con el teclado.
- **ThemeData**: Se ajustaron los colores y estilos de la aplicación utilizando ThemeData para mantener una apariencia coherente.

### Widgets Utilizados 
Se emplearon diversos widgets, como: Containers, SizeBox, ListViews, CustomWidgets, Expanded, Padding, Image (cargadas desde Internet) y ClipRRect (bordes redondeados) para construir la interfaz.

### Parte lógica Aplicada
El desarrollo de la aplicación también abordó aspectos de lógica de programación y gestión de estado:

- **Gestores de Estado**: Se utilizó un enfoque de gestión de estado, a través del paquete Provider, para administrar y actualizar la información de manera eficiente.
- **Mappers**: La aplicación pudo haber utilizado funciones de mapeo para convertir los datos recibidos de la API en objetos utilizables en la interfaz.
- **Peticiones HTTP**: Se implementaron solicitudes HTTP para consumir la API https://yesno.wtf, obteniendo los memes de respuesta correspondientes.
- **Dio**: Uso del paquete Dio para realizar las peticiones HTTP de manera eficiente.
- **Funciones de Retorno y Callbacks**: Uso de funciones de retorno para manejar la respuesta de la API y actualizar la interfaz de usuario en consecuencia.
- **Scroll**: Se implementó lógica de desplazamiento (scroll) para manejar la visualización de mensajes antiguos y nuevos en el chat.

## Instalación y Uso
1. Clona este repositorio en tu máquina local.
2. Asegúrate de tener Flutter instalado y configurado correctamente, la aplicación fue desarrollada utilizando la versión 3.10.6.
3. Ejecuta flutter pub get para obtener las dependencias.
3. Ejecuta la aplicación en tu dispositivo o emulador mediante flutter run.

## Capturas de Pantalla

A continuación, se muestran algunas capturas de pantalla de la aplicación:

![Inicio de aplicación](https://drive.google.com/uc?id=1w2hZd0HFOl6Y6KQsq2gmnx9sUudUfUrO)

![Escritura de mensaje del usuario](https://drive.google.com/file/d/1kHEdRZ6wPWKji0vcLhEFNluDOA_y-6aS/view?usp=drive_link)

![Respuesta generada por el consumo de la API](https://drive.google.com/file/d/1r5jIffBxrWmJBR_PDv7VU58c3HFlQ_6J/view?usp=drive_link)

¡Diviértete explorando y aprendiendo a través de este proyecto de aplicación móvil Flutter!

**Nota**: La aplicación fue desarrollada siguiendo el curso "Flutter - Móvil: De cero a experto - Edición 2023", enlace del curso: https://cursos.devtalles.com/courses/flutter-movil-cero-a-experto
