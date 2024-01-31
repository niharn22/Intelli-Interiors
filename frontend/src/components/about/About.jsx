import React, { useState, useEffect } from 'react';
import { Link } from 'react-router-dom';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faHouse } from '@fortawesome/free-solid-svg-icons';
import axios from 'axios'; 
import '../../stylesheets/about.css';
import toast from 'react-hot-toast';

import { useSelector } from 'react-redux/es/hooks/useSelector';


const About = () => {
  const [roomData, setRoomData] = useState([]);
  const [error, setError] = useState(null);

  const rooms = useSelector(state => state.room)

  return (
    <div className='my-10'>
      <div className='px-10 flex flex-wrap items-center justify-center'>
        <p className='text-3xl w-1/2 text-center'>Embark on a Journey Through Unique Spaces</p>
        <p className='text-gray-500 w-full text-center mt-5'>Add the rooms you and your family want to build together</p>
        <div className="flex mt-5">
        <Link to="/create-room">
          <button className="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded mr-4">Create Project</button>
        </Link>
          <button className="bg-green-500 hover:bg-green-700 text-white font-bold py-2 px-4 rounded">Join Project</button>
        </div>
      </div>
      <div className='flex flex-wrap items-center justify-center px-20 my-10'>
        {error && <p>Error: {error}</p>}
        {
          (rooms?.roomInfo?.length) ?
          rooms.roomInfo[0].map((data, idx) => {
            return (
              <Link key={idx} to={`room/${data.room_id}`} className="idea_card flex flex-wrap items-center p-5 py-14 m-auto">
                <div>
                  <div className='w-full icon__wrapper'>
                    <FontAwesomeIcon icon={faHouse} style={{ color: "#93278F" }} />
                  </div>
                  <p className='text-2xl w-full mt-4'>Project {idx + 1}</p>
                  <p className='text-xl w-full mt-4' style={{ marginTop: '0.2rem' }}>{data.room_id}</p>
                </div>
              </Link>
            )
          })
          : <>You have no Projects</>
        }
      </div>
    </div>
  );
}

export default About;
