var express = require("express");
var router = express.Router();

var usuarioController = require("../controllers/usuarioController");

//Recebendo os dados do html e direcionando para a função cadastrar de usuarioController.js
router.post("/cadastrar", function (req, res) {
    usuarioController.cadastrar(req, res);
})

router.post("/autenticar", function (req, res) {
    usuarioController.autenticar(req, res);
});

router.post("/resposta", function (req, res) {
    usuarioController.resposta(req, res);
});

router.get("/metrica/:user", function (req, res) {
    usuarioController.metrica(req, res);
});

module.exports = router;