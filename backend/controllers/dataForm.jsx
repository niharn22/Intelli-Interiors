import React from 'react'

const dataForm = () => {
    return (
        <form>
            <input type="text" value={"Kushal"} name="to_name" />
            <input type="text" value={name} name="from_name" />
            <input type="text" value={email} name="from_email" />
            <input type="text" value={phone} name="from_phone" />
            <input type="text" value={message} name="message" />
        </form>
    )
}

export default dataForm