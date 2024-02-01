import axios from 'axios';
import React, { useState } from 'react'
import toast from 'react-hot-toast';
import { useSelector } from 'react-redux';

const CreateProject = () => {
    const user = useSelector(state => state.user.userInfo)

    const [room_id, setRoom_id] = useState("")

    const submit = async (e) => {
        e.preventDefault();

        try {
            const [createResponse, patchResponse] = await Promise.all([
                axios.post('http://localhost:3300/room', { room_id }),
                axios.patch('http://localhost:3300/room', { email: user.email, room_id }),
            ]);

            toast.success(createResponse.data.message);
            toast.success(patchResponse.data.message);
        } catch (error) {
            toast.error(error.message);
        }

    }
    return (
        <div className='flex flex-wrap items-center justify-center py-20 gap-14'>
            <p className='text-6xl w-full text-center'>Create Room</p>
            <form className='text-xl flex flex-wrap align-center justify-center gap-4' onSubmit={submit}>
                <label htmlFor="roomId" className='flex items-center'>Project Room Id: </label>
                <input type="number" name='roomId' value={room_id} onChange={e => setRoom_id(e.target.value)} />

                <br />
                <div className="w-full flex items-center justify center">
                    <button className='bg-blue-600 text-white rounded px-6 py-4 mx-auto ' type="submit">Create</button>
                </div>
            </form>
        </div>
    )
}

export default CreateProject