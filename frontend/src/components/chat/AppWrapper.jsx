import { auth } from "../../config/Firebase";
import { signOut } from "firebase/auth";

import Cookies from "universal-cookie";

const cookies = new Cookies();

const AppWrapper = ({ children, isAuth, setIsAuth, setIsInChat }) => {

    return (
        <div className="App">
            <div className="app-container">{children}</div>
        </div>
    );
};

export default AppWrapper