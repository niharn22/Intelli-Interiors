import { configureStore } from '@reduxjs/toolkit'
import { combineReducers } from 'redux';
import userReducer from './auth';
import roomReducer from './room'

const rootReducer = combineReducers({
    user: userReducer,
    room: roomReducer,
    // Add other reducers if needed
});

const store = configureStore({ reducer: rootReducer });

export default store;
