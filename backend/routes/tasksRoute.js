const express = require('express');
const router = express.Router();

const tasksController = require('../controllers/tasksController');

router.route('/')
    .get(tasksController.getTasks)
    .post(tasksController.addTask)
    .patch(tasksController.updateTask)

    
module.exports = router;