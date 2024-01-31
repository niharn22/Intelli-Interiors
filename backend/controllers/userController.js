const { User } = require("../model/users");
const asyncHandler = require('express-async-handler');


// @desc Get users
// @route GET /user
// @access Private
const getAUser = asyncHandler(async (req, res) => {
    console.log(req.body)
    const { _id  } = req.body;
    var getUser;

    if(_id) {
        getUser = await User.find({ _id });
    }
    else {
        return res.status(400).json({ message: "Enter userid" })
    }

    // if(!getUser?.length) {
    //     return res.status(400).json({ message: 'No users found'} )
    // }

    res.json(getUser);
})

// @desc Get a user
// @route POST /user
// @access Private
const getUser = asyncHandler(async (req, res) => {
    const { _id  } = req.body;
    var getUser;

    if(_id) {
        getUser = await User.find({ _id });
    }
    else {
        return res.status(400).json({ message: "Enter userid" })
    }
    res.json(getUser);
})



// @desc Updating a user
// @route PATCH /user
// @access Private
const updateUser = asyncHandler(async (req, res) => {
    const { _id, firstName, lastName, inCart } = req.body;

    if(!_id) {
        return res.status(400).json({ message: "ID required to update user" })
    }

    if(!firstName && !lastName && !inCart?.length) {
        return res.status(400).json({ message: "No user to update" })
    }

    const userToUpdate = await User.findById(_id).exec();
    if(!userToUpdate) {
        return res.status(400).json({ message: "No such user found" });
    }

    userToUpdate.firstName = firstName;
    userToUpdate.lastName = lastName;
    userToUpdate.inCart = inCart;

    const updatedUser = await userToUpdate.save();

    if(updatedUser) {
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


module.exports = { getAUser, getUser, updateUser }