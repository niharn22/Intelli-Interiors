import axios from 'axios';
import React, { useState } from 'react'
import toast from 'react-hot-toast';
import { useSelector } from 'react-redux';

const JoinProject = () => {
    const user = useSelector(state => state.user.userInfo)

    const [room_id, setRoom_id] = useState("")

    const submit = async (e) => {
        e.preventDefault();

        try {
            const response = await axios.patch('http://localhost:3300/room', {
                email: user.email,
                room_id
            });

            toast.success(response.data.message)
        } catch (error) {
            toast.error(error.message)
        }

    }
    return (
        <div className='flex flex-wrap items-center justify-center py-20 gap-14'>
            <p className='text-6xl w-full text-center'>Join Room</p>
            <form className='text-xl flex flex-wrap align-center justify-center gap-4' onSubmit={submit}>
                <label htmlFor="roomId" className='flex items-center'>Project Room Id: </label>
                <input type="number" name='roomId' value={room_id} onChange={e => setRoom_id(e.target.value)} />

                <br />
                <div className="w-full flex items-center justify center">
                    <button className='bg-blue-600 text-white rounded px-6 py-4 mx-auto ' type="submit">Join</button>
                </div>
            </form>
        </div>
    )
}

export default JoinProject