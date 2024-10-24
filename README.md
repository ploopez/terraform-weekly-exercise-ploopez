# Ejercicio Semanal de _Terraform_ para iniciarse en el Mundo de DevOps

¡Bienvenido/a al ejercicio semanal de _Terraform_ para iniciarse en el mundo de DevOps!

Este repositorio contiene un ejercicio diseñado para ayudarte a familiarizarte con el uso de Terraform en repositorios y GitHub Actions.

## Objetivos

El propósito principal de estos ejercicios es proporcionarte una introducción práctica a los conceptos desarrollados durante la formación e ir un pequeño paso más allá para otorgarte los conocimientos esenciales para cualquier persona interesada en trabajar en el área de DevOps. Al completar estos ejercicios, esperamos que adquieras experiencia práctica con:

- Desarrollo de infraestructura como código (IaC) con Terraform.
- Uso de Terraform en repositorios de GitHub.
- Uso de GitHub Actions para automatizar tareas de infraestructura.

## ¡Importante!

Ten mucho cuidado con los valores sensibles que puedas exponer en tus soluciones. Recuerda que otras personas pueden ver la información de tus entregables y, por lo tanto, acceder a este tipo de información. ¡Siempre trata de mantener la seguridad de tus datos y de los datos de tus clientes!

Prepara un `.gitignore` en tu repositorio para evitar subir archivos innecesarios o con información sensible. Puedes guiarte por la [Documentación de HashiCorp](https://developer.hashicorp.com/terraform/language/style#gitignore).

Recuerda terminar cada prueba que realices con un `terraform destroy` para evitar costes innecesarios. **¡No lo olvides!**

### ¡¡¡OBLIGATORIO!!!

Está terminantemente **PROHIBIDO** introducir secretos (como el del Service Principal) en texto plano. Cuando hablamos de texto plano, nos referimos a cualquier archivo que no esté cifrado.

Este tipo de información puede ser utilizada por personas malintencionadas para acceder a tus recursos en la nube y realizar acciones no autorizadas.

Si necesitas introducir algún tipo de secreto, haz uso de los secretos de GitHub.

Este tipo de prácticas son las que se esperan en un entorno profesional y es importante que las adquieras desde el principio, puesto que, además de los riesgos de seguridad que conllevan para la empresa, también pueden suponer un despido directo por mala praxis.

## Estructura del Repositorio

Este repositorio está organizado de la siguiente manera:


- El directorio `enunciados/` contiene los ejercicios propuestos en este repositorio. Cada archivo proporciona una descripción detallada de los objetivos del ejercicio, así como instrucciones paso a paso sobre lo que se espera que completes.
- El archivo `ASSIGMENT.md` proporciona instrucciones sobre cómo enviar tus soluciones una vez que completes los ejercicios.
- El directorio `soluciones/` será el lugar donde almacenar las soluciones a los ejercicios.
- El directorio `auxiliar/` (opcional) contiene los archivos necesarios para completar los ejercicios. Puedes incluir scripts, archivos de configuración, archivos de texto para edición, etc.
- El directorio `datos/` (opcional) contiene conjuntos de datos u otros archivos de entrada que pueden ser necesarios para los ejercicios.
- El archivo `CONTRIBUTING.md` proporciona instrucciones sobre cómo contribuir al repositorio.

## Contribución

¡Tus contribuciones son bienvenidas! Si tienes ideas para nuevos ejercicios o mejoras para los existentes, no dudes en abrir un issue o abrir un pull request.
