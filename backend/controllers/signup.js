const router = require("express").Router();
const { User, validate } = require("../model/users");
const bcrypt = require("bcrypt");

router.post("/", async (req, res) => {
	try {
		const { firstName, lastName, email } = (req.body);

		await new User({ firstName, lastName, email, rooms: [] }).save();
		
		res.status(201).send({ message: "User created successfully" });
	} catch (error) {
		res.status(500).send({ message: `${error}` });
	}
});

module.exports = router;
