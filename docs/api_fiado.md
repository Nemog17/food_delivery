# Documentación de Endpoints y Flujo de Fiado

- **POST /funciones/actualizarStock**: Actualiza el inventario de productos.
- **POST /funciones/procesarPago**: Maneja pagos con Stripe o PayPal.
- **POST /funciones/aprobarFiado**: Confirma el fiado digital para un usuario.

El flujo de fiado valida el campo `fiadoLimite` del usuario y registra la deuda en la colección `fiados`.
