const mongoose = require('mongoose');

const productSchema = new mongoose.Schema({
    title: {
        type: String,
        required: true
    },
    cost: {
        type: Number,
        required: true
    },
    description: {
        type: String,
        required: true
    },
    image: {
        type: String
    },
    visits: {
        type: Number,
        default: 0
    },
    link: {
        type: String
    }
});

module.exports = mongoose.model('Products', productSchema);