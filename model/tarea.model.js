var database = require("../config/database.config");
var Tarea = {};

Tarea.select = function(callback) {
  if(database) {
		database.query('SELECT * FROM Tarea', function(error, resultados){
			if(error) {
				throw error;
			} else {
				callback(resultados);
			}
		});
	}
}

Tarea.find = function(idTarea, callback) {
  if(database) {
		database.query('SELECT * FROM Tarea WHERE idTarea=?', idTarea, function(error, resultados){
			if(error) {
				throw error;
			} else {
				callback(resultados);
			}
		});
	}
}

Tarea.insert = function(data, callback) {
  if(database) {
    database.query('INSERT INTO Tarea SET ?', data, function(error, resultado) {
      if(error) {
        throw error;
      } else {
        callback({"insertId":resultado.insertId});
      }
    });
  }
}

Tarea.update = function(data, callback){
	if(database) {
		database.query('UPDATE Tarea SET titulo=?, descripcion=?, fechaInicio=?, fechaFinal=?, estado=? WHERE idTarea=?',
		[data.titulo, data.descripcion, data.fechaInicio, data.fechaFinal, data.estado, data.idTarea],
		function(error, resultado){
			if(error) {
				throw error;
			} else {
				callback(data);
			}
		});
	}
}

Tarea.delete = function(idTarea, callback) {
	if(database) {
		database.query('DELETE FROM Tarea WHERE idTarea = ?', idTarea,
		function(error, resultado){
			if(error){
				throw error;
			} else {
				callback({"mensaje":"Eliminado"});
			}
		});
	}
}

module.exports = Tarea;
