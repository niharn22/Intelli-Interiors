const { default: mongoose } = require('mongoose');
const Room = require('../model/Room');
const { User } = require('../model/users')
const asyncHandler = require("express-async-handler");

// @desc Get a room
// @route Get /room
// @access Private
const getRoom = asyncHandler(async (req, res) => {
    const { room_id } = req.body;

    try {
        const room = await Room.findOne({ room_id }).populate('users');

        if (!room) {
            return res.status(404).json({ message: "Room not found" });
        }

        console.log(room);

        return res.status(200).json({ room });
    } catch (err) {
        console.error(err.message);
        return res.status(500).json({ message: "Server Error" });
    }
});


// @desc Create room
// @route POST /room
// @access Private
const createRoom = asyncHandler(async (req, res) => {
    try {
        // Assuming req.body has necessary data for creating a room
        const { room_id } = req.body;

        // Create a new room instance
        const newRoom = new Room({
            room_id,
        });

        // Save the room to the database
        await newRoom.save();

        // Create a RoomModel based on the room_id
        Room.createRoomModel(room_id);

        res.status(201).json({ message: "Room created" });
    } catch (error) {
        console.error("Error creating room:", error);
        res.status(500).json({ error: "Failed to create room" });
    }
});

// @desc Add user to room
// @route Patch /room
// @access Private
const addUser = asyncHandler(async (req, res) => {
    try {
        // Assuming req.body has necessary data for adding a user to a room
        const { room_id, user_id } = req.body;

        // Check if the user with the given user_id exists
        const user = await User.findById(user_id);
        if (!user) {
            return res.status(404).json({ error: "User not found" });
        }

        // Find the room by room_id
        const room = await Room.findOne({ room_id })

        console.log(room)

        if (!room) {
            return res.status(404).json({ error: "Room not found" });
        }

        // Check if the user_id is already in the room
        if (room.users.includes(user_id)) {
            return res.status(400).json({ error: "User already in the room" });
        }

        // Add the user_id to the room
        room.users.push(user_id);

        user.rooms.push(room._id);

        // Save the updated room to the database
        await Promise.all([room.save(), user.save()]);

        // Respond with success message or any other data as needed
        res.status(200).json({ message: "User added to room successfully" });
    } catch (error) {
        console.error("Error adding user to room:", error);
        // Handle the error and respond accordingly
        res.status(500).json({ error: "Failed to add user to room" });
    }
});

module.exports = { getRoom, createRoom, addUser };
