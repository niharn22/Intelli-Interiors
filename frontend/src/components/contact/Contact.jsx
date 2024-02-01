import React, { useState } from 'react';
import axios from 'axios';
import toast from 'react-hot-toast';

import contactImg from './../../resources/images/contact_img.jpg';

const Contact = () => {
    const [formData, setFormData] = useState({
        name: '',
        email: '',
        phone: '',
        message: '',
    });

    const handleInputChange = (e) => {
        const { name, value } = e.target;
        setFormData((prevData) => ({ ...prevData, [name]: value }));
    };

    const handleSubmit = async (e) => {
        e.preventDefault();

        try {
            const response = await axios.post('http://localhost:3300/email', formData);
            toast.success(response.data.message);
        } catch (error) {
            toast.error(error.response.data.message);
        }
    };

    return (
        <div className='my-10'>
            <div className='px-10 flex flex-wrap items-center justify-center'>
                <p className='text-5xl w-1/2 text-center'>Thank you for using our voting system</p>
                <p className='text-gray-500 w-full text-center mt-5'>
                    Kindly contact us via this platform, we aim to please our users, and we can't do that without your feedback, reviews, and comments
                </p>
            </div>
            <div className='w-full flex flex-wrap items-center justify-center mx-20 mt-10'>
                <div className='w-1/2 flex justify-center items-center'>
                    <img className='w-1/2' src={contactImg} alt='' />
                </div>
                <div className='w-1/2'>
                    <form onSubmit={handleSubmit}>
                        <label htmlFor='name'>Name</label>
                        <br />
                        <input
                            className='mb-5 w-3/4'
                            type='text'
                            name='name'
                            id='name'
                            placeholder='Name'
                            value={formData.name}
                            onChange={handleInputChange}
                            required
                        />
                        <br />
                        <label htmlFor='email'>Email</label>
                        <br />
                        <input
                            className='w-3/4 mb-5'
                            type='email'
                            name='email'
                            id='email'
                            placeholder='Email'
                            value={formData.email}
                            onChange={handleInputChange}
                            required
                        />
                        <br />
                        <label htmlFor='phone'>Phone</label>
                        <br />
                        <input
                            className='w-3/4 mb-5'
                            type='text'
                            name='phone'
                            id='phone'
                            placeholder='Phone'
                            value={formData.phone}
                            onChange={handleInputChange}
                            required
                        />
                        <br />
                        <label htmlFor='message'>Questions and Comments</label>
                        <br />
                        <textarea
                            name='message'
                            className='w-3/4 mb-5'
                            cols='30'
                            rows='10'
                            value={formData.message}
                            onChange={handleInputChange}
                            required
                        ></textarea>
                        <br />
                        <div className='w-full flex'>
                            <input type='submit' className='cursor-pointer' value='Submit' />
                        </div>
                    </form>
                </div>
            </div>
        </div>
    );
};

export default Contact;
