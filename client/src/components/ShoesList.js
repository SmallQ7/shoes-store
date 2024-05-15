import React, {useContext} from 'react';
import {observer} from "mobx-react-lite";
import {Context} from "../index";
import {Row} from "react-bootstrap";
import ShoesItem from "./ShoesItem";

const ShoesList = observer(() => {
    const {device} = useContext(Context)

    return (
        <Row className="d-flex">
            {device.devices.map(device =>
                <ShoesItem key={device.id} device={device}/>
            )}
        </Row>
    );
});

export default ShoesList;