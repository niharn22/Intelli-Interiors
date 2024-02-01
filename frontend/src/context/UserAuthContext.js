import { createContext, useContext, useEffect, useState } from "react";

import { useDispatch } from "react-redux";
import { setUserInfo, removeUserInfo } from "../store/auth";

import {
    createUserWithEmailAndPassword,
    signInWithEmailAndPassword,
    updateProfile,
    signOut,
    onAuthStateChanged,
    GoogleAuthProvider,
    signInWithPopup
} from "firebase/auth";

import { auth } from "../config/Firebase";
import axios from "axios";

const userAuthContext = createContext();

export function UserAuthContextProvider({ children }) {
    const dispatch = useDispatch();
    const [user, setUser] = useState({});

    function logIn(email, password) {
        return signInWithEmailAndPassword(auth, email, password);
    }

    async function signUp(name, email, password) {
        try {
            const userCredential = await createUserWithEmailAndPassword(auth, email, password);
            await updateProfile(userCredential.user, { displayName: name });

            return userCredential;
        } catch (err) {
            throw new Error(err);
        }
    }

    function logOut() {
        return signOut(auth);
    }

    async function googleSignIn() {
        try {
            const googleAuthProvider = new GoogleAuthProvider();
            const userCredential = await signInWithPopup(auth, googleAuthProvider);

            // Extract user information
            const user = userCredential.user;

            // You can return the entire user object or extract specific properties as needed
            return user;
        } catch (error) {
            // Handle errors if the sign-in fails
            console.error('Error signing in with Google:', error.message);
            throw error;
        }
    }

    useEffect(() => {
        const unsubscribe = onAuthStateChanged(auth, (currentuser) => {
            // console.log("Auth", currentuser);

            setUser(currentuser);

            if (currentuser) {
                dispatch(setUserInfo(currentuser.providerData[0]))
            } else {
                dispatch(removeUserInfo())
            }
        });

        return () => {
            unsubscribe();
        };
    }, []);

    return (
        <userAuthContext.Provider value={{ user, logIn, signUp, logOut, googleSignIn }}>
            {children}
        </userAuthContext.Provider>
    )
}

export function useUserAuth() {
    return useContext(userAuthContext)
}