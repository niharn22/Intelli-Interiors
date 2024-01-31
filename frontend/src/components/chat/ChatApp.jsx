import React, { useState, useEffect } from "react";
import Chat from './Chat'
import AppWrapper from "./AppWrapper";
import Cookies from "universal-cookie";
import chat from './../../resources/images/chat.png'
import './../../stylesheets/chat.css'

const cookies = new Cookies();

function ChatApp(props) {
    const [isAuth, setIsAuth] = useState(cookies.get("auth-token"));
    const [isInChat, setIsInChat] = useState(true);
    const [room, setRoom] = useState(
        '3456'
    );

    return (
        <AppWrapper isAuth={isAuth} setIsAuth={setIsAuth} setIsInChat={setIsInChat}>
            {!isInChat ? (
                <div className="room">
                    <div className="centered-content">
                        <img src={chat} alt="Chat Image" className="chat-image" />
                        <div className="text-container">
                            <p className="fun-text"><strong>Create your room to chat</strong></p>
                            <p>Type room name:</p>
                            <input onChange={(e) => setRoom(e.target.value)} />
                            <button
                                className="create-room-button"
                                onClick={() => {
                                    setIsInChat(true);
                                }}
                            >
                                Create Chat Room
                            </button>
                        </div>
                    </div>
                </div>
            ) : (
                <Chat room={room} />
            )}
        </AppWrapper>
    );
}

export default ChatApp;
