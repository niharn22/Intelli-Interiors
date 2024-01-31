import React, { useState, useEffect } from 'react';
import { Link } from 'react-router-dom';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faHouse } from '@fortawesome/free-solid-svg-icons';
import axios from 'axios'; // Import Axios
import '../../stylesheets/about.css';
import toast from 'react-hot-toast';


const About = () => {
  const [roomData, setRoomData] = useState(null);
  const [error, setError] = useState(null);

  useEffect(() => {
    const fetchRoomData = async () => {
      try {
        const response = await axios.get('http://localhost:3300/room', {
        params: {
          room_id: '1234',
        },
      });

        console.log(response.message)

        setRoomData(response.data.room);
      } catch (error) {
        toast.error(error.message);
      }
    };

    fetchRoomData();
  }, []);

  return (
    <div className='my-10'>
      <div className='px-10 flex flex-wrap items-center justify-center'>
        <p className='text-3xl w-1/2 text-center'>Embark on a Journey Through Unique Spaces</p>
        <p className='text-gray-500 w-full text-center mt-5'>Add the rooms you and your family want to build together</p>
        <div className="flex mt-5">
          <button className="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded mr-4">Create Room</button>
          <button className="bg-green-500 hover:bg-green-700 text-white font-bold py-2 px-4 rounded">Join Room</button>
        </div>
      </div>
      <div className='flex flex-wrap items-center justify-center px-20 my-10'>
        {error && <p>Error: {error}</p>}
        {roomData && (
          <div className="idea_card flex flex-wrap items-center p-5 py-14 w-2/5 m-auto">
            <Link to={`room/${roomData.room_id}`}>
              <div className='w-full icon__wrapper'>
                <FontAwesomeIcon icon={faHouse} style={{ color: "#93278F" }} />
              </div>
              <p className='text-2xl w-full text-white mt-4 text-white'>Room 1</p>
              <p className='text-xl w-full text-white mt-4 text-white' style={{ marginTop: '0.2rem' }}>{roomData.room_id}</p>
            </Link>
          </div>
        )}
      </div>
    </div>
  );
}

export default About;
