const mongoose = require('mongoose');
const Joi = require('joi');
const Room = require('./Room');

const userSchema = new mongoose.Schema({
    firstName: { type: String, required: true },
    lastName: { type: String, required: true },
    email: { type: String, required: true },
	rooms: [{ type: mongoose.Schema.Types.ObjectId, ref: Room }]
});

const User = mongoose.model("user", userSchema);

const validate = (data) => {
	const schema = Joi.object({
		firstName: Joi.string().required().label("First Name"),
		lastName: Joi.string().required().label("Last Name"),
		email: Joi.string().email().required().label("Email")
	});
	return schema.validate(data);
};

module.exports = { User, validate };