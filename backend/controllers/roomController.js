const Room = require('../model/Room');
const {User} = require('../model/users')
const asyncHandler = require("express-async-handler");

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
        const RoomModel = Room.createRoomModel(room_id);

        // Now you can use RoomModel to interact with the specific room in the database

        console.log(`Room created with id: ${room_id}`);

        // Respond with the room_id or any other data as needed
        res.status(201).json({ room_id });
    } catch (error) {
        console.error("Error creating room:", error);
        // Handle the error and respond accordingly
        res.status(500).json({ error: "Failed to create room" });
    }
});

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
        const room = await Room.findById( room_id )

        if (!room) {
            return res.status(404).json({ error: "Room not found" });
        }

        // Check if the user_id is already in the room
        if (room.users.includes(user_id)) {
            return res.status(400).json({ error: "User already in the room" });
        }

        // Add the user_id to the room
        room.users.push(user_id);

        user.rooms.push(room_id);

        // Save the updated room to the database
        await room.save();

        console.log(`User with ID ${user_id} added to room with ID: ${room_id}`);

        // Respond with success message or any other data as needed
        res.status(200).json({ message: "User added to room successfully" });
    } catch (error) {
        console.error("Error adding user to room:", error);
        // Handle the error and respond accordingly
        res.status(500).json({ error: "Failed to add user to room" });
    }
});

module.exports = { createRoom, addUser };
