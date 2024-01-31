const mongoose = require('mongoose');

const roomSchema = new mongoose.Schema({
    room_id: { type: String, required: true, unique: true },
    users: [{ type: mongoose.Schema.Types.ObjectId, ref: 'User' }]
});

roomSchema.statics.createRoomModel = function (room_id) {
    const RoomModel = mongoose.model(("room" + room_id), new mongoose.Schema({
        users: [{ type: mongoose.Schema.Types.ObjectId, ref: 'User' }],
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
                    employee_name: { type: String, required: true },
                    employee_price: { type: Number, required: true }
                }
            ]
        }]
    }));

    return RoomModel;
};

const Room = mongoose.model('Room', roomSchema);

module.exports = Room;
