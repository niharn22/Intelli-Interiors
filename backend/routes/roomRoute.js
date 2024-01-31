const express = require('express');
const router = express.Router();

const roomController = require('../controllers/roomController');

router.route('/')
    .post(roomController.createRoom)
    .patch(roomController.addUser)
    

module.exports = router