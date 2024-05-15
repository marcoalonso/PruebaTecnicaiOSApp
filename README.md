Prueba técnica iOS: Listado de usuarios
El objetivo de esta prueba es evaluar los conocimientos, capacidad de abstracción y habilidades de los candidatos en el desarrollo de aplicaciones iOS para Econocom Digital
Requisitos:
● Lenguaje Swift (última versión disponible)
● La app debe compilar y funcionar en la última versión disponible de iOS y
Xcode
● Utilizar el API de https://randomuser.me La documentación de la API la
puedes encontrar aquí: https://randomuser.me/documentation


Instrucciones:
Crea una aplicación iOS que cumpla con los siguientes requisitos:
● La app debe iniciarse con una vista maestra que muestre una lista de usuarios aleatorios utilizando la API propuesta, con 20 usuarios estaría bien. (https://randomuser.me/api?results=20) . La lista debe mostrar la imagen del usuario junto al nombre y apellidos.
● Al pulsar sobre un usuario, se debe navegar a una vista de detalle que muestre la imagen grande y centrada, así como la información básica del usuario, nombre y apellidos, mail, dirección y su contraseña.
● Se debe dar la opción al usuario de actualizar el email y la contraseña en la vista de detalle. Los cambios se harán efectivos al pulsar en un botón de "guardar" y se deberán guardar de manera local (como mínimo en memoria).
● La vista del listado dispondrá de un “pull to refresh” que actualice todos los datos (borrando cualquier edición anterior).


Consideraciones
● Más allá de lo comentado anteriormente no vas a tener ningún diseño base para la prueba. Valoraremos positivamente el buen gusto y la capacidad de organizar la información en la pantalla. No te vamos a contratar para UX pero nos encantan los desarrolladores con criterio y propuestas. No hace falta que sea un diseño complejo, basta con que sigas las guidelines de diseño de
   
Apple y te recomendamos que utilices componentes nativos. Eso sí, eres
libre para ser todo lo creativo que quieras!
● La interfaz la puedes montar en UIKit o con SwiftUI, con el que te sientas más
cómodo y creas que te va a llevar menos tiempo. En nuestros proyectos utilizamos ambos por lo que vamos a valorarlos por igual. Si no te decides, nuestra recomendación es que utilices SwiftUI.
Aunque la app puede ser sencilla y no requerir de una arquitectura compleja, debe plantearse como si de un proyecto real se tratase (imagina que fuese a tener evoluciones mensuales y varios desarrolladores trabajando en paralelo). Queremos saber cómo estructuras tus proyectos para que escalen y qué capas de abstracción utilizas, es positivo que nos comentes el por qué de cada capa (o por qué omites alguna), eso nos ayudará a entender mejor cómo piensas. Se deberá utilizar una aproximación a Clean Architecture, con MVP o MVVM para la capa de presentación. Explícanos brevemente qué arquitectura has elegido y por qué, sus pros y sus contras.
● Puedes utilizar cualquier librería que te apetezca si crees que te va a simplificar el desarrollo de la tarea, lo último que queremos es que pierdas tiempo. Eso sí, el proyecto debe abrirse en Xcode y compilar sin más pasos, por lo que no utilices CocoaPods ni ningún script que pueda complicar la compilación del proyecto. Para la gestión de dependencias utiliza Swift Package Manager.
● La app debe ser “completa”, en el sentido de que no dejes errores sin controlar.
● ¿Quieres sorprendernos? Añade tests unitarios, alguno al menos para ver cómo los organizas.
● Cualquier detalle que no hayas querido implementar por no alargar más la prueba (si el tiempo se te va de las manos...), coméntanos por qué y cómo lo harías. Se tendrá en cuenta de forma positiva cualquier funcionalidad que se te ocurra que se puede añadir a la aplicación, si tienes tiempo para implementar esas sugerencias mejor! aunque no es necesario.
