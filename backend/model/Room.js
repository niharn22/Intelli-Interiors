const mongoose = require('mongoose');
const { User } = require('./users');

const roomSchema = new mongoose.Schema({
    room_id: { type: String, required: true, unique: true },
    users: [{ type: mongoose.Schema.Types.ObjectId, ref: 'user' }]
});

roomSchema.statics.createRoomModel = function (room_id) {
    const existingModel = mongoose.models[
        `room${room_id}`
    ]

    if(existingModel){
        return existingModel
    }
    const RoomModel = mongoose.model(("room" + room_id), new mongoose.Schema({
        users: { type: mongoose.Schema.Types.ObjectId, ref: 'User' },
        tasks: [{
            task_name: { type: String, required: true },
            description: { type: String },
            room_name: { type: String, required: true },
            status: { type: Number, required: true },
            priority: { type: Number, required: true },
            deadline: { type: Date, required: true },
            materials: [
                {
                    material_name: { type: String, required: true },
                    material_price: { type: Number, required: true }
                }
            ],
            employees: [
                {
                    employee_name: { type: String },
                    employee_price: { type: Number }
                }
            ]
        }]
    }));

    return RoomModel;
};

// const createRoomModel = function (room_id) {
//     // Check if the model already exists
//     if (mongoose.models && mongoose.models[`room${room_id}`]) {
//         // Return the existing model
//         return mongoose.models[`room${room_id}`];
//     }

//     // Create a new model
//     const RoomModel = mongoose.model(`room_${room_id}`, new mongoose.Schema({
//         users: { type: mongoose.Schema.Types.ObjectId, ref: 'User' },
//         tasks: [{
//             task_name: { type: String, required: true },
//             description: { type: String },
//             room_name: { type: String, required: true },
//             status: { type: Number, required: true },
//             priority: { type: Number, required: true },
//             deadline: { type: Date, required: true },
//             materials: [
//                 {
//                     material_name: { type: String, required: true },
//                     material_price: { type: Number, required: true }
//                 }
//             ],
//             employees: [
//                 {
//                     employee_name: { type: String, required: true },
//                     employee_price: { type: Number, required: true }
//                 }
//             ]
//         }]
//     }));

//     // Return the newly created model
//     return RoomModel;
// };

const Room = mongoose.model('Room', roomSchema);

module.exports = Room;
