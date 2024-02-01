const express = require('express');
const router = express.Router();

const tasksCostController = require('../controllers/tasksCostController');

router.route('/')
    .get(tasksCostController.getInsigths)

    
module.exports = router;