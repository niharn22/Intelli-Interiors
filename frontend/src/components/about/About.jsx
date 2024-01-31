import aboutPageImg from './../../resources/images/about_page.jpg';
import { Link } from 'react-router-dom';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faHouse } from '@fortawesome/free-solid-svg-icons';
import '../../stylesheets/about.css';

const About = () => {
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
        <div className="idea_card flex flex-wrap items-center p-5 py-14 w-2/5 m-auto">
          <Link to="room/ax325">
            <div className='w-full icon__wrapper'>
              <FontAwesomeIcon icon={faHouse} style={{ color: "#93278F" }} />
            </div>
            <p className='text-2xl w-full text-white mt-4 text-white'>Room 1</p>
            <p className='text-xl w-full text-white mt-4 text-white' style={{ marginTop: '0.2rem' }}>Room id : ax325</p>
            <p className='text-gray-200 text-sm'>Ground Floor, National School, Wayale Nagar, Khadakpada, Kalyan (W) - 421301</p>
          </Link>
        </div>
        <div className="solution-card flex flex-wrap items-center p-5 py-14 w-2/5 m-auto">
          <div className='w-full icon__wrapper'>
            <FontAwesomeIcon icon={faHouse} />
          </div>
          <p className='text-2xl w-full text-black mt-4'>Room 2</p>
          <p className='text-xl w-full text-black mt-4 ' style={{ marginTop: '0.2rem' }}>Room id : fc123</p>
          <p className='text-gray-750 text-sm'>Ground Floor, National School, Wayale Nagar, Khadakpada, Kalyan (W) - 421301</p>
        </div>
        <div className="idea_card flex flex-wrap items-center p-5 py-14 w-2/5 m-auto" style={{ marginTop: '2.5rem' }} >
          <div className='w-full icon__wrapper'>
            <FontAwesomeIcon icon={faHouse} style={{ color: "#93278F" }} />
          </div>
          <p className='text-2xl w-full text-white mt-4 text-white'>Room 3</p>
          <p className='text-xl w-full text-white mt-4 text-white' style={{ marginTop: '0.2rem' }}>Room id : ab325</p>
          <p className='text-gray-200 text-sm'>Ground Floor, National School, Wayale Nagar, Khadakpada, Kalyan (W) - 421301</p>
        </div>
        <div className="solution-card flex flex-wrap items-center p-5 py-14 w-2/5 m-auto" style={{ marginTop: '2.5rem' }}  >
          <div className='w-full icon__wrapper'>
            <FontAwesomeIcon icon={faHouse} />
          </div>
          <p className='text-2xl w-full text-black mt-4'>Room 4</p>
          <p className='text-xl w-full text-black mt-4 ' style={{ marginTop: '0.2rem' }}>Room id : ak325</p>
          <p className='text-gray-750 text-sm'>Ground Floor, National School, Wayale Nagar, Khadakpada, Kalyan (W) - 421301</p>
        </div>
      </div>
    </div>
  )
}

export default About;
