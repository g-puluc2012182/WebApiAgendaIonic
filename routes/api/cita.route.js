var express = require('express');
var router = express.Router();
var cita = require('../../model/cita.model');

router.get('/cita/', function(req, res, next) {
  cita.select(function(citas) {
    if(typeof citas !== 'undefined') {
      res.json(citas);
    } else {
      res.json({"mensaje" : "No hay citas"});
    }
  });
});

router.get('/cita/:idCita', function(req, res, next) {
  var idCita = req.params.idCita;
  cita.find(idCita, function(citas) {
    if(typeof citas !== 'undefined') {
      res.json(citas);
    } else {
      res.json({"mensaje" : "No hay citas"});
    }
  });
});

router.post('/cita', function(req, res, next) {
  var data = {
    idCita : null,
    fecha : req.body.fecha,
    lugar : req.body.lugar,
    asunto : req.body.asunto,
    idContacto : req.body.idContacto
  }

  cita.insert(data, function(resultado){
    if(resultado && resultado.insertId > 0) {
      res.json({
        estado : true,
        mensaje:"Se ingreso la cita"});
    } else {
      res.json({"mensaje":"No se ingreso la cita"});
    }
  });
});


router.put('/cita/:idCita', function(req, res, next){

  var data = {
    idCita : req.params.idCita,
    fecha : req.body.fecha,
    lugar : req.body.lugar,
    asunto : req.body.asunto,
    idContacto : req.body.idContacto
  }

  cita.update(data, function(resultado){

    if(resultado && resultado.affectedRows > 0) {
      res.json({
        estado: false,
        mensaje: "No se pudo Modificar"
      });
    } else {
      res.json({
        estado: true,
        mensaje: "Se ha modificado con exito"
      });
    }

  });
});

router.delete('/cita/:idCita', function(req, res, next){
  var idCita = req.params.idCita;

  cita.delete(idCita, function(resultado){
    if(resultado && resultado.mensaje === "Eliminado") {
      res.json({"mensaje":"Se elimino la cita correctamente"});
    } else {
      res.json({"mensaje":"Se elimino la cita"});
    }
  });
});

module.exports = router;
