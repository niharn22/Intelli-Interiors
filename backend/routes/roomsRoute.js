const express = require('express');
const router = express.Router();

const roomsController = require('../controllers/roomsController');

router.route('/')
    .get(roomsController.getUserRooms)

module.exports = router