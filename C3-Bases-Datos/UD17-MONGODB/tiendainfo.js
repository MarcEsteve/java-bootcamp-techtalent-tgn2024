// Crear base de datos tiendainfo
use tiendainfo

// Crear colección fabricantes e insertar documentos
db.createCollection("fabricantes")
db.fabricantes.insertMany([
    { nombre: "Fabricante A" },
    { nombre: "Fabricante B" },
    { nombre: "Fabricante C" },
    { nombre: "Fabricante D" },
    { nombre: "Fabricante E" },
    { nombre: "Fabricante F" },
    { nombre: "Fabricante G" },
    { nombre: "Fabricante H" },
    { nombre: "Fabricante I" },
    { nombre: "Fabricante J" }
])

// Crear colección articulos e insertar documentos
db.createCollection("articulos");
db.articulos.insertMany([
    { nombre: "Artículo 1", precio: 10.50, fabricante: 1 },
    { nombre: "Artículo 2", precio: 20.25, fabricante: 2 },
    { nombre: "Artículo 3", precio: 15.75, fabricante: 3 },
    { nombre: "Artículo 4", precio: 30.00, fabricante: 4 },
    { nombre: "Artículo 5", precio: 25.50, fabricante: 5 },
    { nombre: "Artículo 6", precio: 18.75, fabricante: 6 },
    { nombre: "Artículo 7", precio: 22.00, fabricante: 7 },
    { nombre: "Artículo 8", precio: 35.25, fabricante: 8 },
    { nombre: "Artículo 9", precio: 28.50, fabricante: 9 },
    { nombre: "Artículo 10", precio: 40.00, fabricante: 10 }
]);