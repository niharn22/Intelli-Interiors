import React, { useState, useEffect } from "react";
import { db, auth } from "../../config/Firebase";
import {
    collection,
    addDoc,
    where,
    serverTimestamp,
    onSnapshot,
    query,
    orderBy,
} from "firebase/firestore";

import chat from './../../resources/images/chat.png'

const Chat = ({ room }) => {
    const [messages, setMessages] = useState([]);
    const [newMessage, setNewMessage] = useState("");
    const messagesRef = collection(db, "messages");

    useEffect(() => {
        const queryMessages = query(
            messagesRef,
            where("room", "==", room),
            orderBy("createdAt")
        );
        const unsubscribe = onSnapshot(queryMessages, (snapshot) => {
            let messages = [];
            snapshot.forEach((doc) => {
                messages.push({ ...doc.data(), id: doc.id });
            });
            setMessages(messages);
        });

        return () => unsubscribe();
    }, []);

    const handleSubmit = async (event) => {
        event.preventDefault();

        if (newMessage === "") return;
        await addDoc(messagesRef, {
            text: newMessage,
            createdAt: serverTimestamp(),
            user: auth.currentUser.displayName,
            room,
        });

        setNewMessage("");
    };

    return (
        <div className="max-w-screen-sm mx-auto p-4 border border-purple-500 rounded h-screen">
            <div className="mb-8 text-center pb-2">
                <h1 className="text-2xl font-bold">Welcome To Chatroom : {room.toUpperCase()}</h1>
                <p className="text-purple-500" > communication made easy , order , communicate & plan</p>
            </div>
            <div className="max-h-80 overflow-y-auto mb-4">
                {messages.map((message) => (
                    <div key={message.id} className="mb-2">
                        <span className="font-bold">{message.user}:</span> {message.text}
                    </div>
                ))}
            </div>
            <form onSubmit={handleSubmit} className="flex items-center space-x-4">
                <input
                    type="text"
                    value={newMessage}
                    onChange={(event) => setNewMessage(event.target.value)}
                    className="flex-1 p-2 border border-purple-500 rounded"
                    placeholder="Type your message here..."
                />
                <button type="submit" className="px-4 py-2 bg-blue-500 text-white rounded">
                    Send
                </button>
            </form>
        </div>
    );
};

export default Chat;
