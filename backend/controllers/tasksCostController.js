const { default: mongoose } = require("mongoose");
const { User, validate } = require("../model/users");
const asyncHandler = require('express-async-handler');
const Room = require("../model/Room");

const getInsigths = asyncHandler(async (req, res) => {
    try {
        const { room_id } = req.query;
        const RoomModel = Room.createRoomModel(room_id);

        // Query to get all tasks
        const tasks = await RoomModel.find({}).lean();

        // Calculate total cost and map room name with cost
        let totalCost = 0;
        const roomCostMap = {};
        let completedTasks = 0;

        tasks.forEach((task) => {
            // Calculate total cost excluding employee cost
            totalCost += task.tasks.reduce((acc, subtask) => {
                return acc + subtask.materials.reduce((materialCost, material) => {
                    return materialCost + material.material_price;
                }, 0);
            }, 0);

            // Map room name with cost
            task.tasks.forEach((subtask) => {
                const roomName = subtask.room_name;
                const taskCost = subtask.materials.reduce((materialCost, material) => {
                    return materialCost + material.material_price;
                }, 0);

                if (!roomCostMap[roomName]) {
                    roomCostMap[roomName] = 0;
                }

                roomCostMap[roomName] += taskCost;
            });

            // Count completed tasks
            completedTasks += task.tasks.filter(subtask => subtask.status === 100).length;
        });

        // Calculate total tasks
        const totalTasks = tasks.reduce((acc, task) => acc + task.tasks.length, 0);

        // Create an insights object
        const insights = {
            totalCost,
            roomCostMap,
            completedTasks,
            totalTasks,
        };

        // Send insights as the API response
        res.json(insights);
    } catch (error) {
        console.error("Error getting insights:", error);
        res.status(500).json({ error: "Failed to get insights" });
    }
});

module.exports = { getInsigths };
