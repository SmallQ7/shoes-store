import React from 'react';
import {Card, Col} from "react-bootstrap";
import Image from "react-bootstrap/Image";
import heart from '../assets/heart.png'
import {useHistory} from "react-router-dom"
import {DEVICE_ROUTE} from "../utils/consts";

const ShoesItem = ({device}) => {
    const history = useHistory()
    return (
        <Col md={3} className={"mt-3"} onClick={() => history.push(DEVICE_ROUTE + '/' + device.id)}>
            <Card style={{width: 150, cursor: 'pointer'}} border={"light"}>
                <Image width={150} height={180} src={process.env.REACT_APP_API_URL + device.img}/>
                <div className="text-black-50 mt-1 d-flex justify-content-between align-items-center">
                    <div>Men's Shoes</div>
                    <div className="d-flex align-items-center">
                        <Image width={16} height={16} src={heart}/>
                    </div>
                </div>
                <div>{device.name}</div>
            </Card>
        </Col>
    );
};

export default ShoesItem;