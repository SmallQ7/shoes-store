import React, { useContext } from 'react';
import { observer } from "mobx-react-lite";
import { Context } from "../index";
import { Card, Row } from "react-bootstrap";
import "../App.css";

const BrandBar = observer(() => {
    const { device } = useContext(Context);

    return (
        <Row className="d-flex">
            {device.brands.map(brand => (
                <Card
                    style={{
                        cursor: 'pointer',
                        backgroundColor: brand.id === device.selectedBrand.id ? 'rgba(0, 100, 255, 0.8)' : 'white',
                        borderColor: 'black',
                        borderWidth: brand.id === device.selectedBrand.id ? '1px' : '2px',
                        borderStyle: 'solid',
                        color: brand.id === device.selectedBrand.id ? 'white' : 'black',
                        fontFamily: 'Helvetica Neue, Arial, sans-serif',
                    }}
                    key={brand.id}
                    className="p-3"
                    onClick={() => device.setSelectedBrand(brand)}
                    border={brand.id === device.selectedBrand.id ? '1px solid black' : 'light'}
                >
                    {brand.name}
                </Card>
            ))}
        </Row>
    );
});

export default BrandBar;