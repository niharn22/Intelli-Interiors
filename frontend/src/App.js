import { Routes, Route as Link } from 'react-router-dom';

import { UserAuthContextProvider } from "./context/UserAuthContext";

// importing components
import * as Component from './components';

import { useState, useEffect } from 'react';

import scrollToTop from './utility/scrollToTop';
import Room1 from './components/about/Room1';
import axios from 'axios';
import toast from 'react-hot-toast';
import { useDispatch } from 'react-redux';
import { appendRoomInfo, removeRoomInfo } from './store/room';
import ShopFromAmazon from './components/Amazon/ShopFromAmazon';

import { useSelector } from 'react-redux/es/hooks/useSelector';

function App() {
    const dispatch = useDispatch()

    const user = useSelector(state => state.user.userInfo)

    const rooms = useSelector(state => state.room)

    useEffect(() => {
        const getUserRooms = async () => {
            try {
                const response = await axios.get('http://localhost:3300/rooms', {
                    params: {
                        email: user.email,
                    },
                });
                
                dispatch(appendRoomInfo(response.data.user.rooms))
                
            } catch (error) {
                console.log(error.message);
            }
        }
        getUserRooms();
    }, [user])

    const [onPage, setOnPage] = useState(1);
    const [notTop, setNotTop] = useState({ header: false, toTopButton: false });

    useEffect(() => {
        function showHideToTopButton() {
            if (document.body.scrollTop > 80 || document.documentElement.scrollTop > 80) {
                setNotTop({ ...notTop, header: true });

                if (document.body.scrollTop > 300 || document.documentElement.scrollTop > 300) {
                    setNotTop({ header: true, toTopButton: true });
                }
            } else {
                setNotTop({ header: false, toTopButton: false });
            }
        }

        window.addEventListener('scroll', showHideToTopButton);

        return () => {
            window.removeEventListener('scroll', showHideToTopButton);
        };
    }, [notTop])

    useEffect(() => {
        scrollToTop();
    }, [onPage])

    return (
        <div className='container'>
            <div className='row'>
                <div className='col'>
                    <UserAuthContextProvider>
                        <Component.Header onPage={onPage} setOnPage={setOnPage} notTop={notTop.header} />

                        <Routes>
                            {/* Add protected routes */}
                            <Link element={<Component.ProtectedRouting />}>
                                <Link exact path='faqs' element={<Component.FAQ />} />
                                <Link exact path='rooms/room/:roomid/chat' element={<Component.ChatApp />} />
                            </Link>

                            <Link exact path='/' element={<Component.Home setOnPage={setOnPage} />} />

                            <Link exact path='auth' element={<Component.AuthLayout />}>
                                <Link path='login' element={<Component.Login />} />
                                <Link path='register' element={<Component.Register />} />
                                <Link path='user' element={<Component.UserPage />} />
                                <Link path='reset' element={<Component.ResetPass />} />
                            </Link>

                            <Link exact path='rooms' element={<Component.About />} />
                            <Link exact path='create-project' element={<Component.CreateProject />} />
                            <Link exact path='join-project' element={<Component.JoinProject />} />

                            <Link exact path='/shop' element={<ShopFromAmazon />} />

                            <Link exact path='rooms/room/:roomid' element={<Room1 />} />

                            <Link exact path='contact' element={<Component.Contact />} />

                            <Link path="*" element={<Component.PageNotFound />} />

                        </Routes>

                        <Component.GoToTop notTop={notTop.toTopButton} />
                        <Component.Footer onPage={onPage} setOnPage={setOnPage} />
                    </UserAuthContextProvider>
                </div>
            </div>
        </div>
    );
}

export default App;