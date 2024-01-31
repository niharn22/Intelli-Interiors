const asyncHandler = require('express-async-handler');


// @desc Get users
// @route GET /user
// @access Private
const getUserId = asyncHandler(async (req, res) => {
    const { email } = req.query;

    try {
        // Find the user by ObjectId
        const user = await User.findOne(email)

        // Check if the user exists
        if (!user) {
            return res.status(404).json({ message: "User not found" });
        }

        // Return the user information
        return res.status(200).json({ user });
    } catch (err) {
        console.error(err.message);
        return res.status(500).json({ message: "Server Error" });
    }
})

module.exports = { getUserId }