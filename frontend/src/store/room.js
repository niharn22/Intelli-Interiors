import { createSlice } from '@reduxjs/toolkit';

const authSlice = createSlice({
    name: 'room',
    initialState: {
        roomInfo: [],
    },
    reducers: {
        setRoomInfo: (state, action) => {
            state.roomInfo = action.payload;
        },
        appendRoomInfo: (state, action) => {
            state.roomInfo.push(
                action.payload
            )
        },
        removeRoomInfo: (state) => {
            state.roomInfo = null;
        },
    },
});

export const { setRoomInfo, appendRoomInfo, removeRoomInfo } = authSlice.actions;
export default authSlice.reducer;
