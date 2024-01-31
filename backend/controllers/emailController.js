const Joi = require("joi");
const router = require("express").Router()

const emailjs = require('@emailjs/nodejs');
const asyncHandler = require("express-async-handler");

const sendEmail = asyncHandler(async(req, res) => {
    const { error } = validate(req.body);
    if (error) {
        return res.status(406).json({ message: error.details[0].message });
    }

    const { name, email, phone, message } = req.body;

    if(!name?.length) {
        return res.status(406).json({ message: "\"Name\" feild cannot be empty" })
    }
    if(!message?.length) {
        return res.status(406).json({ message: "\"Message\" feild cannot be empty" })
    }

    let isNum = /^(?:[+]?[\d()\-\s]*)?$/.test(phone);
    if(!isNum) {
        return res.status(406).json({ message: "Invalid phone number" })
    }

    const data = {
        to_name: "Kushal",
        
        from_name: name,
        from_email: email,
        from_phone: phone,

        message
    }

    emailjs
        .send(
            process.env.EMAILJS_SERVICEID,
            process.env.EMAILJS_TEMPLATEID,
            data,
            {
                publicKey: process.env.EMAILJS_PUBLICKEY,
                privateKey: process.env.EMAILJS_PRIVATEKEY
            }
        )
        .then((result) => {
            return res.status(200).json({ message: "Message sent" });
        }, (error) => {
            console.log(error)
            return res.status(400).json({ message: error });
        });
})

const validate = ({ email }) => {
    const schema = Joi.object({
        email: Joi.string().email().required().label("Email"),
    }).options({ allowUnknown: true });

    return schema.validate({email});
};

module.exports = { sendEmail }