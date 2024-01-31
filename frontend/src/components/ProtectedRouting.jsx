import { Navigate, Outlet } from "react-router-dom";
import auth from '../store/auth'
import { useSelector } from 'react-redux'

import toast from "react-hot-toast";
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import { faUser } from "@fortawesome/free-solid-svg-icons";

const ProtectedRouting = () => {
    if (!auth) {
        toast("You need to login to access this page", { icon: <FontAwesomeIcon icon={faUser} /> });
        return <Navigate to='auth/login' />
    }

    return <Outlet />;
}

export default ProtectedRouting