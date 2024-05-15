import React, { useContext } from 'react';
import { observer } from "mobx-react-lite";
import { Context } from "../index";
import Col from "react-bootstrap/Col";
import ListGroup from "react-bootstrap/ListGroup";

const TypeBar = observer(() => {
    const { device } = useContext(Context);

    return (
        <ListGroup>
            {device.types.map(type => (
                <ListGroup.Item
                    style={{
                        cursor: 'pointer',
                        border: type.id === device.selectedType.id ? '1px solid black' : 'none',
                        backgroundColor: type.id === device.selectedType.id ? 'rgba(0, 100, 255, 0.8)' : 'white',
                        borderColor: 'black',
                        color: type.id === device.selectedType.id ? 'white' : 'black',
                        fontFamily: 'Helvetica Neue, Arial, sans-serif',
                    }}
                    active={type.id === device.selectedType.id}
                    onClick={() => device.setSelectedType(type)}
                    key={type.id}
                >
                    {type.name}
                </ListGroup.Item>
            ))}
        </ListGroup>
    );
});

export default TypeBar;