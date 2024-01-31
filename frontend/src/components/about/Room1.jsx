import React, { useState } from 'react';
import { useParams } from 'react-router-dom';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faHouse } from '@fortawesome/free-solid-svg-icons';
import '../../stylesheets/about.css';

const Room1 = () => {
  const { roomid } = useParams();

  const [newTask, setNewTask] = useState({
    taskName: '',
    description: '',
    assignedTo: '',
    deadline: '',
    materials: [],
    room_name: '',
    status: '',
    priority: '',

  });

  

  const handleTaskChange = (e) => {
    const { name, value } = e.target;
    setNewTask((prevTask) => ({ ...prevTask, [name]: value }));
  };

  const handleAddTask = (e) => {
    e.preventDefault();
    // Perform actions with the new task data, e.g., send to backend
    console.log(newTask);
    // You may also want to clear the form after submission
    setNewTask({
      taskName: '',
      description: '',
      assignedTo: '',
      deadline: '',
    });
  };

  const [currentMaterial, setCurrentMaterial] = useState('');

  const handleMaterialChange = (index, field, value) => {
    const updatedMaterials = [...newTask.materials];
    updatedMaterials[index][field] = value;

    setNewTask((prevTask) => ({
      ...prevTask,
      materials: updatedMaterials,
    }));
  };

  const handleAddMaterial = () => {
    setNewTask((prevTask) => ({
      ...prevTask,
      materials: [...prevTask.materials, { material_name: '', material_price: 0 }],
    }));
  };

  return (
    <div className='my-10'>
      <div className='px-10 flex flex-wrap items-center justify-center'>
        <div className='px-10 flex flex-wrap items-center justify-center'>
          <div className='text-3xl w-1/2 text-center'> Room Id : {roomid}</div>
          <p className='text-gray-500 w-full text-center mt-5'>
            Welcome to your room, we help you plan your space well
          </p>
          <div className='flex flex-wrap items-center justify-center px-20 my-10'>
        <div className="idea_card flex flex-wrap items-center p-5 py-14 w-2/5 m-auto">
          {/* <Link to="room/ax325"> */}
            <div className='w-full icon__wrapper'>
              <FontAwesomeIcon icon={faHouse} style={{ color: "#93278F" }} />
            </div>
            <p className='text-2xl w-full text-white mt-4 text-white'>Task : Living Room Decor</p>
            <p className='text-xl w-full text-white mt-4 text-white' style={{ marginTop: '0.2rem' }}>Assigned To: Kushal</p>
            <p className='text-2xl w-full text-white mt-4 text-white'>Deadline: March 31st , 2024</p>

            {/* <p className='text-xl w-full text-white mt-4 text-white' style={{ marginTop: '0.2rem' }}>Room id : ax325</p>
            <p className='text-gray-200 text-sm'>Ground Floor, National School, Wayale Nagar, Khadakpada, Kalyan (W) - 421301</p> */}
          {/* </Link> */}
        </div>
        <div className="solution-card flex flex-wrap items-center p-5 py-14 w-2/5 m-auto">
          <div className='w-full icon__wrapper'>
            <FontAwesomeIcon icon={faHouse} />
          </div>
          <p className='text-2xl w-full text-black mt-4 '>Task : Bedroom Tiles </p>
            <p className='text-xl w-full text-black mt-4 ' style={{ marginTop: '0.2rem' }}>Assigned To: Nihar</p>
            <p className='text-2xl w-full text-black mt-4'>Deadline: Feb 20th , 2024</p>
        </div>
    
      </div>
        </div>
        <div className='flex flex-wrap items-center justify-center px-20 my-10'>
          {/* ... Other content ... */}
          <div className='px-10 py-10 flex flex-wrap items-center justify-center'>
            <div className='text-3xl w-1/2 text-center'> Assign Tasks</div>
            <p className='text-gray-500 w-full text-center mt-5'>
              Assign Tasks to your family members and work in coordination
            </p>
            <form onSubmit={handleAddTask} className='mt-5 w-full'>
              <div className='mb-4'>
                <label htmlFor='taskName' className='text-sm font-medium text-gray-700'>
                  Task Name:
                </label>
                <input
                  type='text'
                  id='taskName'
                  name='taskName'
                  className='mt-1 p-3 border border-purple-500 rounded-md w-full text-lg focus:outline-none focus:border-purple-700'
                  value={newTask.taskName}
                  onChange={handleTaskChange}
                  required
                />
              </div>

            <div className='mb-4'>
                  <label htmlFor='description' className='block text-sm font-medium text-gray-700'>
                    Description:
                  </label>
                  <textarea
                    id='description'
                    name='description'
                    className='mt-1 p-3 border border-purple-500 rounded-md w-full text-lg focus:outline-none focus:border-purple-700'
                    value={newTask.description}
                    onChange={handleTaskChange}
                  />
              </div>

              <div className='mb-4'>
        <label htmlFor='roomName' className='block text-sm font-medium text-gray-700'>
          Room Name:
        </label>
        <input
          type='text'
          id='roomName'
          name='room_name'
          className='mt-1 p-3 border border-purple-500 rounded-md w-full text-lg focus:outline-none focus:border-purple-700'
          value={newTask.room_name}
          onChange={handleTaskChange}
          required
        />
      </div>

      {/* <div className='mb-4'>
        <label htmlFor='status' className='block text-sm font-medium text-gray-700'>
          Status:
        </label>
        <input
          type='text'
          id='status'
          name='status'
          className='mt-1 p-3 border border-purple-500 rounded-md w-full text-lg focus:outline-none focus:border-purple-700'
          value={newTask.status}
          onChange={handleTaskChange}
          required
        />
      </div> */}

      <div className='mb-4'>
        <label htmlFor='priority' className='block text-sm font-medium text-gray-700'>
          Priority:
        </label>
        <input
          type='text'
          id='priority'
          name='priority'
          className='mt-1 p-3 border border-purple-500 rounded-md w-full text-lg focus:outline-none focus:border-purple-700'
          value={newTask.priority}
          onChange={handleTaskChange}
          required
        />
      </div>






                          <div className='mb-4'>
                <label htmlFor='assignedTo' className='block text-sm font-medium text-gray-700'>
                  Assigned To:
                </label>
                <input
                  type='text'
                  id='assignedTo'
                  name='assignedTo'
                  className='mt-1 p-3 border border-purple-500 rounded-md w-full text-lg focus:outline-none focus:border-purple-700'
                  value={newTask.assignedTo}
                  onChange={handleTaskChange}
                  required
                />
              </div>

              <div className='mb-4'>
                <label htmlFor='deadline' className='block text-sm font-medium text-gray-700'>
                  Deadline:
                </label>
                <input
                  type='date'
                  id='deadline'
                  name='deadline'
                  className='mt-1 p-3 border border-purple-500 rounded-md w-full text-lg focus:outline-none focus:border-purple-700'
                  value={newTask.deadline}
                  onChange={handleTaskChange}
                  required
                />
              </div>

              {/* <div className='mb-4'>
        <label htmlFor='materialName' className='block text-sm font-medium text-gray-700'>
          Material Names:
        </label>
        <div className='flex items-center'>
          <input
            type='text'
            id='materialName'
            name='materialName'
            className='mt-1 p-3 border border-purple-500 rounded-md w-full text-lg focus:outline-none focus:border-purple-700'
            value={currentMaterial}
            onChange={handleMaterialChange}
          />
          <button
            className='ml-2 bg-purple-500 hover:bg-purple-800 text-white font-bold py-1 px-4 rounded'
            onClick={handleAddMaterial}
          >
            Add Material
          </button>
        </div>
        <div className='mt-2'>
          {newTask.materialNames.map((material, index) => (
            <div key={index} className='bg-purple-500 text-white rounded p-2 mb-2'>
              {material}
            </div>
          ))}
        </div>
      </div>
 
  <div className='mb-4'>
    <label htmlFor='materialPrice' className='block text-sm font-medium text-gray-700'>
      Material Price:
    </label>
    <input
      type='number'
      id='materialPrice'
      name='materialPrice'
      className='mt-1 p-3 border border-purple-500 rounded-md w-full text-lg focus:outline-none focus:border-purple-700'
      // Add value and onChange handlers as needed
      required
    />
  </div> */}
       
       <div className='mb-4'>
        <label className='block text-sm font-medium text-gray-700'>Materials & Prices:</label>
        {newTask.materials.map((material, index) => (
          <div key={index} className='flex mb-2'>
            <input
              type='text'
              placeholder={`Material ${index + 1} Name`}
              className='p-3 border border-purple-500 rounded-md w-full text-lg focus:outline-none focus:border-purple-700 mr-2'
              value={material.material_name}
              onChange={(e) => handleMaterialChange(index, 'material_name', e.target.value)}
              required
            />
            <input
              type='number'
              placeholder={`Material ${index + 1} Price`}
              className='p-3 border border-purple-500 rounded-md w-full text-lg focus:outline-none focus:border-purple-700'
              value={material.material_price}
              onChange={(e) => handleMaterialChange(index, 'material_price', parseFloat(e.target.value))}
              required
            />
          </div>
        ))}
        <button
          type='button'
          className='bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded'
          onClick={handleAddMaterial}
        >
          Add Material
        </button>
      </div>

              {/* ... Other form fields ... */}
              <button
                type='submit'
                className='flex items-center w-full place-content-center bg-purple-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded mr-4'
              >
                Add Task
              </button>
            </form>
          </div>
        </div>
      </div>
    </div>
  );
};

export default Room1;
