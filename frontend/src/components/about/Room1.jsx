import React, { useState, useEffect } from 'react';
import { Link, useParams } from 'react-router-dom';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faHouse, faMessage } from '@fortawesome/free-solid-svg-icons';
import '../../stylesheets/about.css';
import { Bar } from 'react-chartjs-2';
import 'chart.js/auto';
import { Doughnut, Line, Pie } from 'react-chartjs-2';
// import 'react-chartjs-2/dist/react-chartjs-2.css';

import axios from 'axios'

import toast from 'react-hot-toast';
import { useSelector } from 'react-redux';
import { auth } from '../../config/Firebase';
import TasksComponent from './TasksComponent';

const Room1 = () => {
	const { roomid } = useParams();

	const [tasks, setTasks] = useState([])
	const [users, setUsers] = useState([])

	const [insights, setInsights] = useState(null)

	const user = useSelector(state => state.user.userInfo)

	useEffect(() => {
		if (!roomid) return

		const getUserTasks = async () => {
			if (tasks?.length) return

			try {
				const response = await axios.get('http://localhost:3300/room/tasks', {
					params: {
						email: user.email,
						room_id: roomid,
					},
				});

				setTasks(response.data.tasks)

			} catch (error) {
				toast.error(error.message);
			}
		}

		const getUsers = async () => {
			if (users?.length) return

			try {
				const response = await axios.get('http://localhost:3300/room', {
					params: {
						room_id: roomid,
					},
				});

				// console.log("res", response.data.room.users)

				setUsers(response.data.room.users)
			} catch (error) {
				toast.error(error.message)
			}
		}

		const getInsights = async () => {
			try {
				const response = await axios.get('http://localhost:3300/room/tasks-cost', {
					params: {
						room_id: roomid,
					},
				});

				console.log("insights", response.data)

				setInsights(response.data)
			} catch (error) {
				toast.error(error.message)
			}
		}

		getUserTasks();
		getUsers();
		getInsights()
	}, [user])

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

	const handleAddTask = async (e) => {
		e.preventDefault();

		const outputObject = {
			tasks: [{
				task_name: newTask.taskName,
				description: newTask.description,
				room_name: newTask.room_name,
				status: newTask.status || 0,
				priority: parseInt(newTask.priority), // Convert priority to number
				deadline: new Date(newTask.deadline),
				materials: newTask.materials.map(material => ({
					material_name: material.material_name,
					material_price: material.material_price
				}))
			}]
		};

		try {
			const response = await axios.post('http://localhost:3300/room/tasks', {
				tasks: outputObject,
				room_id: roomid,
				email: newTask.assignedTo
			});

			toast.success(response.data.message)
		} catch (error) {
			toast.error(error.message)
		}
		// You may also want to clear the form after submission
		// setNewTask({
		// 	taskName: '',
		// 	description: '',
		// 	assignedTo: '',
		// 	deadline: '',
		// 	materials: [],
		// 	room_name: '',
		// 	status: '',
		// 	priority: '',
		// });
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

	const dataCentralizedDashboard = {
		labels: ['January', 'February', 'March', 'April', 'May'],
		datasets: [
			{
				label: 'Progress',
				backgroundColor: 'rgba(75,192,192,0.4)',
				borderColor: 'rgba(75,192,192,1)',
				borderWidth: 1,
				hoverBackgroundColor: 'rgba(75,192,192,0.6)',
				hoverBorderColor: 'rgba(75,192,192,1)',
				data: [65, 59, 80, 81, 56],
			},
		],
	};

	const dataTaskManagementSystem = {
		labels: ['Task 1', 'Task 2', 'Task 3', 'Task 4', 'Task 5'],
		datasets: [
			{
				label: 'Completion Status',
				backgroundColor: 'rgba(255,99,132,0.4)',
				borderColor: 'rgba(255,99,132,1)',
				borderWidth: 1,
				hoverBackgroundColor: 'rgba(255,99,132,0.6)',
				hoverBorderColor: 'rgba(255,99,132,1)',
				data: [80, 72, 90, 60, 75],
			},
		],
	};

	const dataFamilyMembers = {
		labels: ['Parent 1', 'Parent 2', 'Child 1', 'Child 2', 'Child 3'],
		datasets: [
			{
				data: [20, 15, 25, 20, 20],
				backgroundColor: ['red', 'blue', 'green', 'orange', 'purple'],
				hoverBackgroundColor: ['rgba(255, 99, 132, 0.8)', 'rgba(54, 162, 235, 0.8)', 'rgba(75, 192, 192, 0.8)', 'rgba(255, 206, 86, 0.8)', 'rgba(153, 102, 255, 0.8)'],
			},
		],
	};

	const dataCostTracking = {
		labels: ['Expense 1', 'Expense 2', 'Expense 3', 'Expense 4', 'Expense 5'],
		datasets: [
			{
				label: 'Amount Spent',
				backgroundColor: 'rgba(153,102,255,0.4)',
				borderColor: 'rgba(153,102,255,1)',
				borderWidth: 1,
				hoverBackgroundColor: 'rgba(153,102,255,0.6)',
				hoverBorderColor: 'rgba(153,102,255,1)',
				data: [200, 150, 300, 180, 250],
			},
		],
	};

	const dataTaskProgressOverTime = {
		labels: ['Week 1', 'Week 2', 'Week 3', 'Week 4', 'Week 5'],
		datasets: [
			{
				label: 'Task Progress',
				fill: false,
				lineTension: 0.1,
				backgroundColor: 'rgba(75,192,192,0.4)',
				borderColor: 'rgba(75,192,192,1)',
				borderCapStyle: 'butt',
				borderDash: [],
				borderDashOffset: 0.0,
				borderJoinStyle: 'miter',
				pointBorderColor: 'rgba(75,192,192,1)',
				pointBackgroundColor: '#fff',
				pointBorderWidth: 1,
				pointHoverRadius: 5,
				pointHoverBackgroundColor: 'rgba(75,192,192,1)',
				pointHoverBorderColor: 'rgba(220,220,220,1)',
				pointHoverBorderWidth: 2,
				pointRadius: 1,
				pointHitRadius: 10,
				data: [65, 59, 80, 81, 56],
			},
		],
	};

	const dataBudgetAllocation = {
		labels: ['Design', 'Materials', 'Labor', 'Miscellaneous'],
		datasets: [
			{
				data: [30, 40, 20, 10],
				backgroundColor: ['red', 'blue', 'green', 'orange'],
				hoverBackgroundColor: ['rgba(255, 99, 132, 0.8)', 'rgba(54, 162, 235, 0.8)', 'rgba(75, 192, 192, 0.8)', 'rgba(255, 206, 86, 0.8)'],
			},
		],
	};

	// Pastel color palette
	const pastelColors = [
		'rgb(255,179,186)',
		'rgb(255,223,186)',
		'rga(186,255,201)',
		'rgb(186,225,255)',
	];

	// Function to generate pastel colors for datasets
	const getPastelColors = (count) => {
		const colors = [];
		for (let i = 0; i < count; i++) {
			colors.push(pastelColors[i % pastelColors.length]);
		}
		return colors;
	};

	// Apply pastel colors to datasets
	const applyPastelColors = (datasets) => {
		return datasets.map((dataset, index) => ({
			...dataset,
			backgroundColor: getPastelColors(dataset.data.length),
			borderColor: getPastelColors(dataset.data.length),
		}));
	};

	const options = {
		scales: {
			y: {
				beginAtZero: true,
			},
		},
	};
	return (
		<div className='my-10'>
			<div className="chat-icon-holder">
				<Link to="chat" className="chat-icon">
					<FontAwesomeIcon icon={faMessage} />
				</Link>
			</div>
			<div className='px-10 flex flex-wrap items-center justify-center'>
				<div className="flex flex-wrap justify-center">
					{/* Card 1: Centralized Dashboard */}
					<div className='text-3xl w-1/2 text-center'> Room Id : {roomid}</div>
					<p className='text-gray-500 w-full text-center mt-5'>
						Welcome to your room, we help you plan your space well
					</p>
					<div className="max-w-sm mx-4 my-4 bg-white rounded-md shadow-md overflow-hidden">
						<div className="p-4">
							<h2 className="text-xl font-bold text-gray-800">
								Centralized Dashboard
							</h2>
							<Bar data={dataCentralizedDashboard} options={options} />
						</div>
					</div>

					{/* Card 2: Task Management System */}
					<div className="max-w-sm mx-4 my-4 bg-white rounded-md shadow-md overflow-hidden">
						<div className="p-4">
							<h2 className="text-xl font-bold text-gray-800">
								Task Management System
							</h2>
							<Bar data={dataTaskManagementSystem} options={options} />
						</div>
					</div>

					{/* Card 3: Cost Tracking and Budgeting */}
					<div className="max-w-sm mx-4 my-4 bg-white rounded-md shadow-md overflow-hidden">
						<div className="p-4">
							<h2 className="text-xl font-bold text-gray-800">
								Cost Tracking and Budgeting
							</h2>
							<Bar data={dataCostTracking} options={options} />
						</div>
					</div>

					<div className="max-w-sm mx-4 my-4 bg-white rounded-md shadow-md overflow-hidden">
						<div className="p-4">
							<h2 className="text-xl font-bold text-gray-800">Budget Allocation</h2>
							<Doughnut data={{ ...dataBudgetAllocation, datasets: applyPastelColors(dataBudgetAllocation.datasets) }} options={options} />
						</div>
					</div>

					{/* // Card for Task Progress Over Time */}
					<div className="max-w-sm mx-4 my-4 bg-white rounded-md shadow-md overflow-hidden">
						<div className="p-4">
							<h2 className="text-xl font-bold text-gray-800">Task Progress Over Time</h2>
							<div className="h-full">
								<Line data={{ ...dataTaskProgressOverTime, datasets: applyPastelColors(dataTaskProgressOverTime.datasets) }} options={options} />
							</div>
						</div>
					</div>

					{/* // Card for Family Members */}
					<div className="max-w-sm mx-4 my-4 bg-white rounded-md shadow-md overflow-hidden">
						<div className="p-4">
							<h2 className="text-xl font-bold text-gray-800">Family Members</h2>
							<Pie data={{ ...dataFamilyMembers, datasets: applyPastelColors(dataFamilyMembers.datasets) }} options={options} />
						</div>
					</div>

				</div>
				<div className='px-10 flex flex-wrap items-center justify-center'>

					<div className='flex flex-wrap items-center justify-center my-10 gap-10'>
						{
							(tasks?.length) &&
							tasks
								?.sort((a, b) => {
									if (a.status === 100 && b.status !== 100) {
										return 1; // Put task with status 100 at the end
									}
									if (a.status !== 100 && b.status === 100) {
										return -1; // Put task with status 100 at the end
									}
									// If both tasks have the same status or neither have status 100
									return a.priority - b.priority; // Sort by priority
								}).map((task, idx) => {
									return (
										<div key={idx} className="idea_card flex flex-wrap items-center p-5 py-14 m-auto gap-2">
											<TasksComponent
												idx={idx}
												task={task}
												roomid={roomid}
												name={user.displayName}
											/>
										</div>
									)
								})
						}

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
								<label className='block font-medium text-gray-700'>
									Priority:
								</label>
								<div className='mt-1 flex gap-4 p-3 border border-purple-500 rounded-md text-lg focus:outline-none focus:border-purple-700'>
									{[1, 2, 3].map((priority) => (
										<div key={priority} className='flex items-center text-md gap-2'>
											<input
												type='radio'
												id={`priority-${priority}`}
												name='priority'
												value={priority}
												checked={String(newTask.priority) === String(priority)}
												onChange={handleTaskChange}
												className='h-4 w-4 text-purple-600 border-gray-300'
											/>
											<label htmlFor={`priority-${priority}`} className='ml-2 text-gray-700'>
												{priority}
											</label>
										</div>
									))}
								</div>
							</div>

							{
								users &&
								<div className='mb-4'>
									<label htmlFor='assignedTo' className='block text-sm font-medium text-gray-700'>
										Assigned To:
									</label>
									<select
										id='assignedTo'
										name='assignedTo'
										className='mt-1 p-3 border border-purple-500 rounded-md w-full text-lg focus:outline-none focus:border-purple-700'
										value={newTask.assignedTo}
										onChange={handleTaskChange}
										required
									>
										<option value='' disabled>Select an option</option>
										{users.map((user, index) => (
											<option key={index} onChange={handleTaskChange} value={user.email}>
												{user.email}
											</option>
										))}
									</select>
								</div>
							}


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
