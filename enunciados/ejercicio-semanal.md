# Ejercicio Semanal

## ¡Importante!

Ten mucho cuidado con los valores sensibles que puedas exponer en tus soluciones. Recuerda que otras personas pueden ver la información de tus entregables y, por lo tanto, acceder a este tipo de información. ¡Siempre trata de mantener la seguridad de tus datos y de los datos de tus clientes!

Prepara un `.gitignore` en tu repositorio para evitar subir archivos innecesarios o con información sensible. Puedes guiarte por la [Documentación de HashiCorp](https://developer.hashicorp.com/terraform/language/style#gitignore).

Recuerda terminar cada prueba que realices con un `terraform destroy` para evitar costes innecesarios. **¡No lo olvides!**

### ¡¡¡OBLIGATORIO!!!

Está terminantemente **PROHIBIDO** introducir secretos (como el del Service Principal) en texto plano. Cuando hablamos de texto plano, nos referimos a cualquier archivo que no esté cifrado.

Este tipo de información puede ser utilizada por personas malintencionadas para acceder a tus recursos en la nube y realizar acciones no autorizadas.

Si necesitas introducir algún tipo de secreto, haz uso de los secretos de GitHub.

Este tipo de prácticas son las que se esperan en un entorno profesional y es importante que las adquieras desde el principio, puesto que, además de los riesgos de seguridad que conllevan para la empresa, también pueden suponer un despido directo por mala praxis.

## Información Previa al Desarrollo del Ejercicio

- Se entregará un nuevo Service Principal de Microsoft Azure para el desarrollo de este ejercicio. Su nombre será de la forma `spnl3-<alias_email>-1`. Se pueden encontrar sus credenciales en el keyvault que se ha estado utilizando hasta el momento.
- El módulo desarrollado deberá ser alojado en el repositorio donde se entregaron los ejercicios de la formación. Alójalo en `/soluciones/modulo-weekly-exercise/`.
- Se entregará un nuevo repositorio de GitHub sobre el que se habrá de desarrollar el workflow de GitHub Actions. Aquí es donde se debe alojar el "*ejemplo de uso*" que se mencionará en el enunciado.

## Enunciado

Se desea desarrollar en terraform un módulo que permita desplegar el siguiente workload:

- Múltiples instancias de máquinas virtuales especificadas a través de un mapa de objetos. Cada una de estas máquinas puede tener diferentes atributos.
- Un balanceador de carga que distribuya el tráfico entre las instancias de máquinas virtuales.
- El resto de elementos de red necesarios para completar la configuración de red de la solución.

El módulo debe ser alojado en un repositorio de GitHub y debe contener un README.md con la documentación necesaria para su uso.

Adicionalmente se debe crear un segundo repositorio de GitHub que disponga de un workflow de GitHub Actions que cumpla con los siguientes requisitos:

- Se debe ejecutar un plan de terraform cada vez que se realice un pull request a la rama principal del repositorio. 
- [**OPCIONAL**]El resultado del plan debe ser publicado como comentario en el pull request.
- Se debe ejecutar un apply de terraform cada vez que se realice un merge a la rama principal del repositorio(Pull request closed).
- [**OPCIONAL**]Se debe disponer de la opción de ejecutar plan/apply/destroy de terraform de forma manual para poder ejecutarlo en cualquier momento en caso de necesidad.

Un ejemplo de uso del módulo desarrollado debe ser incluido en el repositorio de GitHub que contiene el workflow de GitHub Actions y debe ser desplegado en Azure utilizando para ello el Service Principal de Microsoft Azure que se le haya facilitado.