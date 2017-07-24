var express = require('express');
var router = express.Router();
var tarea = require('../../model/tarea.model');

router.get('/tarea/', function(req, res, next) {
  tarea.select(function(tareas) {
    if(typeof tareas !== 'undefined') {
      res.json(tareas);
    } else {
      res.json({"mensaje" : "No hay tareas"});
    }
  });
});

router.get('/tarea/:idTarea', function(req, res, next) {
  var idTarea = req.params.idTarea;
  tarea.find(idTarea, function(tareas) {
    if(typeof tareas !== 'undefined') {
      res.json(tareas);
    } else {
      res.json({"mensaje" : "No hay tareas"});
    }
  });
});

router.post('/tarea', function(req, res, next) {
  var data = {
    idTarea : null,
    titulo : req.body.titulo,
    descripcion : req.body.descripcion,
    fechaInicio : req.body.fechaInicio,
    fechaFinal : req.body.fechaFinal,
    estado : req.body.estado
  }

  tarea.insert(data, function(resultado){
    if(resultado && resultado.insertId > 0) {
      res.json({
        estado : true,
        mensaje:"Se ingreso la tarea"});
    } else {
      res.json({"mensaje":"No se ingreso la tarea"});
    }
  });
});


router.put('/tarea/:idTarea', function(req, res, next){

  var data = {
    idTarea : req.params.idTarea,
    titulo : req.body.titulo,
    descripcion : req.body.descripcion,
    fechaInicio : req.body.fechaInicio,
    fechaFinal : req.body.fechaFinal,
    estado : req.body.estado
  }

  tarea.update(data, function(resultado){

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

router.delete('/tarea/:idTarea', function(req, res, next){
  var idTarea = req.params.idTarea;

  tarea.delete(idTarea, function(resultado){
    if(resultado && resultado.mensaje === "Eliminado") {
      res.json({"mensaje":"Se elimino la tarea correctamente"});
    } else {
      res.json({"mensaje":"Se elimino la tarea"});
    }
  });
});

module.exports = router;
