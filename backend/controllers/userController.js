const { default: mongoose } = require("mongoose");
const { User, validate } = require("../model/users");
const asyncHandler = require('express-async-handler');


// @desc Get users
// @route GET /user
// @access Private
const getAUser = asyncHandler(async (req, res) => {
    const { email } = req.body;

    const user = await User.findOne({ email });
    if (!user) {
        return res.status(404).json({ error: "User not found" });
    }

    try {
        // Find the user by ObjectId
        const user = await User.findById(user._id).populate('rooms'); // Populate the 'rooms' field

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

// @desc Get a user
// @route POST /user
// @access Private
const addUser = asyncHandler(async (req, res) => {
    const { error } = validate(req.body);
    console.log(error)

    if (error) {
        return res.status(400).json({ message: "Add all fields", error: error.details[0].message });
    }

    const { firstName, lastName, email } = req.body;

    try {
        let existingUser = await User.findOne({ email });

        if (existingUser) {
            return res.status(400).json({ message: "User with this email already exists" });
        }

        const newUser = new User({
            firstName,
            lastName,
            email,
            rooms: []
        });

        await newUser.save();
        return res.status(201).json({ message: "User added successfully", user: newUser });
    } catch (err) {
        console.error(err.message);
        return res.status(500).json({ message: "Server Error" });
    }
});


// @desc Updating a user
// @route PATCH /user
// @access Private
const updateUser = asyncHandler(async (req, res) => {
    const { _id, firstName, lastName, inCart } = req.body;

    if (!_id) {
        return res.status(400).json({ message: "ID required to update user" })
    }

    if (!firstName && !lastName && !inCart?.length) {
        return res.status(400).json({ message: "No user to update" })
    }

    const userToUpdate = await User.findById(_id).exec();
    if (!userToUpdate) {
        return res.status(400).json({ message: "No such user found" });
    }

    userToUpdate.firstName = firstName;
    userToUpdate.lastName = lastName;
    userToUpdate.inCart = inCart;

    const updatedUser = await userToUpdate.save();

    if (updatedUser) {
        res.json(updatedUser);
    }
})



// @desc Deleting a note
// @route DELETE /notes
// @access Private
const deleteNote = asyncHandler(async (req, res) => {
    // const { username, title } = req.body;

    // if(!username || !title) {
    //     return res.status(400).json({ message: "Username & note title required" })
    // }

    // const userID = await User.findOne({ username }, { _id: true }).lean().exec();
    // if(!userID) {
    //     return res.status(400).json({ message: "No such user found" });
    // }

    // const noteToDelete = await Note.findOne({ user: userID, title }).exec();
    // if(!noteToDelete) {
    //     return res.status(400).json({ message: "User has no such note" });
    // }

    // const deletedNote = await noteToDelete.deleteOne();

    // res.json({ message: `${username}'s note ${deletedNote.title} deleted` });
})


module.exports = { getAUser, addUser, updateUser }