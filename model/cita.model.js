var database = require("../config/database.config");
var Cita = {};

Cita.select = function(callback) {
  if(database) {
		database.query("SELECT cita.idCita, fecha, lugar, asunto, nombre FROM cita INNER JOIN contacto ON cita.idContacto = contacto.idContacto", function(error, resultados){
			if(error) {
				throw error;
			} else {
				callback(resultados);
			}
		});
	}
}

Cita.find = function(idCita, callback) {
  if(database) {
		database.query('SELECT * FROM Cita WHERE idCita=?', idCita, function(error, resultados){
			if(error) {
				throw error;
			} else {
				callback(resultados);
			}
		});
	}
}

Cita.insert = function(data, callback) {
  if(database) {
    database.query('INSERT INTO Cita SET ?', data, function(error, resultado) {
      if(error) {
        throw error;
      } else {
        callback({"insertId":resultado.insertId});
      }
    });
  }
}

Cita.update = function(data, callback){
	if(database) {
		database.query('UPDATE Cita SET fecha=?, lugar=?, asunto=?, idContacto=? WHERE idCita=?',
		[data.fecha, data.lugar, data.asunto, data.idContacto, data.idCita],
		function(error, resultado){
			if(error) {
				throw error;
			} else {
				callback(data);
			}
		});
	}
}

Cita.delete = function(idCita, callback) {
	if(database) {
		database.query('DELETE FROM Cita WHERE idCita= ?', idCita,
		function(error, resultado){
			if(error){
				throw error;
			} else {
				callback({"mensaje":"Eliminado"});
			}
		});
	}
}

module.exports = Cita;
