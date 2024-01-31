import { createSlice } from '@reduxjs/toolkit';

const authSlice = createSlice({
    name: 'room',
    initialState: {
        roomInfo: null,
    },
    reducers: {
        setRoomInfo: (state, action) => {
            state.roomInfo = action.payload;
        },
        removeRoomInfo: (state) => {
            state.roomInfo = null;
        },
    },
});

export const { setUserInfo, removeUserInfo } = authSlice.actions;
export default authSlice.reducer;
