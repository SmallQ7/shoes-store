import React, { useState } from 'react';
import { Button, Container } from "react-bootstrap";
import CreateDesigner from "../components/modals/CreateDesigner";
import CreateShoe from "../components/modals/CreateShoe";
import CreateSection from "../components/modals/CreateSection";

const Admin = () => {
    const [brandVisible, setBrandVisible] = useState(false);
    const [typeVisible, setTypeVisible] = useState(false);
    const [deviceVisible, setDeviceVisible] = useState(false);

    return (
        <Container className="d-flex flex-column">
            <Button
                variant={"outline-dark"}
                className="mt-4 p-2"
                onClick={() => setTypeVisible(true)}
                style={{
                    fontFamily: 'Helvetica Neue, Arial, sans-serif',
                }}
            >
                Add a section
            </Button>
            <Button
                variant={"outline-dark"}
                className="mt-4 p-2"
                onClick={() => setBrandVisible(true)}
                style={{
                    fontFamily: 'Helvetica Neue, Arial, sans-serif',
                }}
            >
                Add a designer
            </Button>
            <Button
                variant={"outline-dark"}
                className="mt-4 p-2"
                onClick={() => setDeviceVisible(true)}
                style={{
                    fontFamily: 'Helvetica Neue, Arial, sans-serif',
                }}
            >
                Add shoes
            </Button>
            <CreateDesigner show={brandVisible} onHide={() => setBrandVisible(false)} />
            <CreateShoe show={deviceVisible} onHide={() => setDeviceVisible(false)} />
            <CreateSection show={typeVisible} onHide={() => setTypeVisible(false)} />
        </Container>
    );
};

export default Admin;