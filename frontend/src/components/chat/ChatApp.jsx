import React, { useState, useEffect } from "react";
import Chat from './Chat'
import AppWrapper from "./AppWrapper";
import Cookies from "universal-cookie";

import './../../stylesheets/chat.css'

const cookies = new Cookies();

function ChatApp(props) {
    const [isAuth, setIsAuth] = useState(cookies.get("auth-token"));
    const [isInChat, setIsInChat] = useState(null);
    const [room, setRoom] = useState(props?.roomName);

    return (
        <AppWrapper isAuth={isAuth} setIsAuth={setIsAuth} setIsInChat={setIsInChat}>
            {!isInChat ? (
                <div className="room">
                    <label> Type room name: </label>
                    <input onChange={(e) => setRoom(e.target.value)} />
                    <button
                        onClick={() => {
                            setIsInChat(true);
                        }}
                    >
                        Enter Chat
                    </button>
                </div>
            ) : (
                <Chat room={room} />
            )}
        </AppWrapper>
    );
}

export default ChatApp;