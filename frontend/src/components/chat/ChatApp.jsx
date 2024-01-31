import React, { useState, useEffect } from "react";
import Chat from './Chat'
import AppWrapper from "./AppWrapper";
import Cookies from "universal-cookie";
import './../../stylesheets/chat.css'

const cookies = new Cookies();

function ChatApp(props) {
    const match = window.location.href.match(/\/rooms\/room\/([^\/]+)\/chat/);
    const room = match ? match[1] : null;

    const [isAuth, setIsAuth] = useState(cookies.get("auth-token"));
    const [isInChat, setIsInChat] = useState(true);

    return (
        <AppWrapper isAuth={isAuth} setIsAuth={setIsAuth} setIsInChat={setIsInChat}>
            <Chat room={room} />
        </AppWrapper>
    );
}

export default ChatApp;
