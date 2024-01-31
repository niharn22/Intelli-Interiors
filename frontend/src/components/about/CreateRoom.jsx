import React, { useState } from 'react';
import { useNavigate } from 'react-router-dom';

const CreateRoom = () => {
  const [roomId, setRoomId] = useState('');
  const navigate = useNavigate();

  const handleCreateRoom = () => {
    console.log('Room ID:', roomId);
    navigate('/');
  };

  return (
    <div>
      <h1>Create Room</h1>
      <label htmlFor="roomId">Room ID:</label>
      <input
        type="text"
        id="roomId"
        value={roomId}
        onChange={(e) => setRoomId(e.target.value)}
      />
      <button onClick={handleCreateRoom}>Create Room</button>
    </div>
  );
};

export default CreateRoom;
