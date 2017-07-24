var express = require('express');
var router = express.Router();
var historial = require('../../model/historial.model');

router.get('/historial/', function(req, res, next) {
  historial.select(function(historiales) {
    if(typeof historiales !== 'undefined') {
      res.json(historiales);
    } else {
      res.json({"mensaje" : "No hay historiales"});
    }
  });
});

router.get('/historial/:idHistorial', function(req, res, next) {
  var idHistorial = req.params.idHistorial;
  historial.find(idHistorial, function(historiales) {
    if(typeof historiales !== 'undefined') {
      res.json(historiales);
    } else {
      res.json({"mensaje" : "No hay historiales"});
    }
  });
});
router.delete('/historial/:idHistorial', function(req, res, next){
  var idHistorial = req.params.idHistorial;

  historial.delete(idHistorial, function(resultado){
    if(resultado && resultado.mensaje === "Eliminado") {
      res.json({"mensaje":"Se elimino la historial correctamente"});
    } else {
      res.json({"mensaje":"Se elimino la historial"});
    }
  });
});

module.exports = router;