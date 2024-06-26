import React, {useEffect, useState} from 'react';
import {Button, Card, Col, Container, Image, Row} from "react-bootstrap";
import bigStar from '../assets/bigStar.png'
import sizes from '../assets/sizes.png'
import {useParams} from 'react-router-dom'
import {fetchOneDevice} from "../http/shoesAPI";

const ShoesPage = () => {
    const [device, setDevice] = useState({info: []})
    const {id} = useParams()
    useEffect(() => {
        fetchOneDevice(id).then(data => setDevice(data))
    }, [])


    const [basket, setCart] = useState([]); // Состояние корзины
    const addToCart = () => {
        setCart(prevCart => [...prevCart, device]); // Добавление выбранного товара в корзину
    }


    return (
        <Container className="mt-3">
            <Row>
                <Col md={4}>
                    <Image width={300} height={360} src={process.env.REACT_APP_API_URL + device.img}/>
                </Col>
                <Col md={4}>
                    <Row className="d-flex flex-column align-items-center">
                        <h2>{device.name}</h2>
                        <div
                            className="d-flex align-items-center justify-content-center"
                            style={{background: `url(${sizes}) no-repeat center center`, width:380, height: 240, backgroundSize: 'cover', fontSize:64}}
                        >
                            {device.rating}
                        </div>
                    </Row>
                </Col>
                <Col md={4}>
                    <Card
                        className="d-flex flex-column align-items-center justify-content-around"
                        style={{width: 300, height: 300, fontSize: 32, border: '2px solid black'}}
                    >
                        <h3>${device.price}</h3>
                        <Button variant={"outline-dark"} onClick={addToCart}>Add to cart</Button>
                    </Card>
                </Col>
            </Row>
            <Row className="d-flex flex-column m-3">
                <h1>Product Details</h1>
                {device.info.map((info, index) =>
                    <Row key={info.id} style={{background: index % 2 === 0 ? 'lightgray' : 'transparent', padding: 10}}>
                        {info.title}: {info.description}
                    </Row>
                )}
            </Row>
        </Container>
    );
};

export default ShoesPage;