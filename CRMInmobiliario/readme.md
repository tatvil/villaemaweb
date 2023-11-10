## inmuebles
- Referencia catastral
- Direccion (calle y numero, portal, etc.)
- Cod. postal (con esto sabemos poblacion y provincia)
- CUPS de suministros (agua, luz gas, fibra)

## Personas
- NIF (para los contratos)
- nombre, apellido1, apellido2
- email, telefono
- direccion (de entre nuestros inmuebles, aunque no sea el propietario)

### Propietarios 
Relaciona a una persona fisica con un inmueble
- persona
- inmueble
- porcentaje de propiedad
- Fecha de compra
- fecha de venta


### Demandas
que me piden los clientes
- persona
- que busca
  - poblacion
  - tamaño
  - habitaciones
  - precio
  - venta / alquiler

## Proveedores 
- NIF
- nombre
- direccion
- persona de contacto (ref. tabla personas, servicios (puede estaen tabla a parte))
- Servicios que me ofrece (igual puede ir en una tabla a parte)

## Contratos
Se rellenan automaticamente con los datos del inmueble y las personas relacionadas
- Compra-venta
- Arras
- Alquiler
