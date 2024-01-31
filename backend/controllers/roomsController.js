const { User } = require('../model/users')
const asyncHandler = require("express-async-handler");

// @desc Get users rooms
// @route Get /rooms
// @access Private
const getUserRooms = asyncHandler(async (req, res) => {
    const { email } = req.query;

    try {
        const user = await User.findOne({ email }).populate('rooms');

        if (!user) {
            return res.status(404).json({ message: "User not found" });
        }

        return res.status(200).json({ user });
    } catch (err) {
        console.error(err.message);
        return res.status(500).json({ message: "Server Error" });
    }
});

module.exports = { getUserRooms }