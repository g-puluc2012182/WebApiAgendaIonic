var database = require("../config/database.config");
var Contacto = {};

Contacto.select = function(idUsuario, callback) {
  if(database) {
		database.query("SELECT contacto.idContacto, nombre, apellido, direccion, telefono, correo, nombreCategoria FROM contacto INNER JOIN categoria ON contacto.idCategoria = categoria.idCategoria", idUsuario,
     function(error, resultados){
			if(error) {
				throw error;
			} else {
				callback(resultados);
			}
		});
	}
}

Contacto.insert = function(data, callback) {
  if(database) {
    database.query('CALL INGRESAR_CONTACTO(?,?,?,?,?,?,?)',
    [data.nombre, data.apellido, data.direccion, data.telefono, data.correo, data.idCategoria, data.idUsuario],
    function(error, resultado) {
      if(error) {
        throw error;
      } else {
        callback( resultado.affectedRows);
      }
    });
  }
}

Contacto.update = function(data, callback){
	if(database) {
		database.query('CALL sp_updateContacto(?,?,?,?,?,?,?)',
		[data.idContacto, data.nombre, data.apellido, data.direccion, data.telefono, data.correo, data.idCategoria],
		function(error, resultado){
			if(error) {
				throw error;
			} else {
				callback(resultado[0]);
			}
		});
	}
}

Contacto.delete = function(idContacto, callback) {
	if(database) {
		database.query("DELETE FROM Contacto WHERE idContacto = ?", idContacto,
		function(error, resultado){
			if(error){
				throw error;
			} else {
				callback({"mensaje":"Eliminado"});
			}
		});
	}
}

module.exports = Contacto;
