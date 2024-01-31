const { default: mongoose } = require("mongoose");
const { User, validate } = require("../model/users");
const asyncHandler = require('express-async-handler');
const Room = require("../model/Room");

const getTasks = asyncHandler(async (req, res) => {
    try {
        const { email, room_id } = req.body;

        const user = await User.findOne({ email });
        if (!user) {
            return res.status(404).json({ error: "User not found" });
        }

        // Use the Room model to dynamically retrieve the model for the specific room_id
        const RoomModel = Room.createRoomModel(room_id);

        // Find the existing room by room_id using RoomModel
        const room = await RoomModel.findOne({ users: user._id });

        if (!room) {
            return res.status(404).json({ error: "Room not found" });
        }

        // Return the tasks associated with the user in the specified room
        res.status(200).json({ tasks: room.tasks });
    } catch (error) {
        console.error("Error getting tasks:", error);
        res.status(500).json({ error: "Failed to get tasks" });
    }
});


const addTask = asyncHandler(async (req, res) => {
    try {
        const { tasks, room_id, email } = req.body;

        const user = await User.findOne({ email });
        if (!user) {
            return res.status(404).json({ error: "User not found" });
        }

        // Use the Room model to dynamically retrieve the model for the specific room_id
        const RoomModel = Room.createRoomModel(room_id);

        // Find the existing room by room_id using RoomModel
        const room = await RoomModel.findOne({ users: user._id });

        if (room) {
            // Check if room.tasks is undefined and initialize it as an array if needed
            room.tasks = room.tasks || [];

            // Append tasks to the room.tasks array
            room.tasks = room.tasks.concat(tasks);

            // Save the updated room to the database
            await room.save();

            return res.status(201).json({ message: "Tasks added to the room successfully" });
        }

        // If the room doesn't exist, create a new RoomModel
        const newTask = new RoomModel({
            users: user._id,
            tasks
        });

        // Save the new room to the database
        await newTask.save();

        res.status(200).json({ message: "Tasks added to the room successfully" });
    } catch (error) {
        console.error("Error adding tasks to room:", error);
        res.status(500).json({ error: "Failed to add tasks to room" });
    }
});


// @desc Update Tasks
// @route PATCH /room/:room_id/tasks
// @access Private

const updateTask = asyncHandler(async (req, res) => {
    try {
        const { index, room_id, email, updatedTasks } = req.body;

        const user = await User.findOne({ email });
        if (!user) {
            return res.status(404).json({ error: "User not found" });
        }

        // Use the Room model to dynamically retrieve the model for the specific room_id
        const RoomModel = Room.createRoomModel(room_id);

        // Find the existing room by room_id using RoomModel
        const room = await RoomModel.findOne({ users: email._id });

        if (!room) {
            return res.status(404).json({ error: "Room not found" });
        }
        room.tasks[index] = updatedTasks
        // Save the updated room to the database
        await room.save();

        res.status(200).json({ message: "Tasks updated in the room successfully" });
    } catch (error) {
        console.error("Error updating tasks in room:", error);
        res.status(500).json({ error: "Failed to update tasks in room" });
    }
});


module.exports = { addTask, updateTask, getTasks }