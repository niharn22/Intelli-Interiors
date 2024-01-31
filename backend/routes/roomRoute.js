const express = require('express');
const router = express.Router();

const roomController = require('../controllers/roomController');

router.route('/')
    .get(roomController.getRoom)
    .post(roomController.createRoom)
    .patch(roomController.addUser)
    

module.exports = router