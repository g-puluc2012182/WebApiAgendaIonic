var database = require("../config/database.config");
var Historial = {};

Historial.select = function(callback) {
  if(database) {
		database.query('SELECT * FROM Historial', function(error, resultados){
			if(error) {
				throw error;
			} else {
				callback(resultados);
			}
		});
	}
}

Historial.find = function(idCategoria, callback) {
  if(database) {
		database.query('SELECT * FROM Historial WHERE idHistorial=?', idHistorial, function(error, resultados){
			if(error) {
				throw error;
			} else {
				callback(resultados);
			}
		});
	}
}
Historial.delete = function(idHistorial, callback) {
	if(database) {
		database.query('DELETE FROM Historial WHERE idHistorial = ?', idHistorial,
		function(error, resultado){
			if(error){
				throw error;
			} else {
				callback({"mensaje":"Eliminado"});
			}
		});
	}
}
module.exports = Historial;