import React, {useContext, useEffect, useState} from 'react';
import {Context} from "../index";
import {fetchBasket, removeFromBasket} from "../http/shoesAPI";
import {Button, Container, Table} from "react-bootstrap";
import {PDFDownloadLink} from "@react-pdf/renderer";
import Report from '../components/Reports';

const Basket = () => {
    const {user, basket, setBasket} = useContext(Context)
    const [basketItems, setBasketItems] = useState([])

    console.log('User object:', user);

    if (user && user.id) {
        console.log('User ID:', user.id);
        // Ваш код здесь
    } else {
        console.log('No user or user ID');
        // Обработка случая, когда нет пользователя или id
    }

    useEffect(() => {
        if (user.user.id) {
            fetchBasket(user.user.id).then(data => {
                setBasketItems(data)
            })
        }
    }, [user.user.id]);

    const handleRemoveFromBasket = async (id) => {
        try {
            console.log(user.user.id, id)
            // Удаление товара из корзины по itemId
            await removeFromBasket(id);

            // Обновление данных о корзине
            const updatedBasket = await fetchBasket(user.user.id);
            setBasketItems(updatedBasket);
        } catch (error) {
            console.error('Ошибка при удалении товара из корзины:', error.message);
        }
    };

    return (
        <Container className="mt-3">
            <h2>Cart</h2>
            <Table striped bordered hover>
                <thead>
                <tr>
                    <th>#</th>
                    <th>Name</th>
                    <th>Price</th>
                    <th>Quantity</th>
                    <th>Total</th>
                </tr>
                </thead>
                <tbody>
                {basketItems &&
                    basketItems.map((item, index) => (
                        <tr key={item.id}>
                            <td>{index + 1}</td>
                            <td>{item.product.name}</td>
                            <td>{item.product.price}</td>
                            <td>{item.quantity}</td>
                            <td>{item.quantity * item.product.price} $.</td>
                            <td><PDFDownloadLink className='me-2' document={<Report item={item} />} fileName={'item_' + item.id +'.pdf'}>
                                {({ blob, url, loading, error }) => (loading ? 'Загрузка отчета...' : 'Сохранить в PDF')}
                            </PDFDownloadLink></td>
                            <td>
                                <Button
                                    variant="danger"
                                    onClick={() => handleRemoveFromBasket(item.id)}
                                >
                                    Удалить
                                </Button>
                            </td>
                        </tr>
                    ))}
                </tbody>
            </Table>

        </Container>
    );
};

export default Basket;