import React, {useContext, useState} from 'react';
import {Col, Container, Form, InputGroup} from "react-bootstrap";
import Card from "react-bootstrap/Card";
import Button from "react-bootstrap/Button";
import Row from "react-bootstrap/Row";
import { FaEye, FaEyeSlash } from 'react-icons/fa';
import {NavLink, useLocation, useHistory} from "react-router-dom";
import {LOGIN_ROUTE, REGISTRATION_ROUTE, SHOP_ROUTE} from "../utils/consts";
import {login, registration} from "../http/userAPI";
import {observer} from "mobx-react-lite";
import {Context} from "../index"
import "../css/buttons.css";

const Auth = observer(() => {
    const {user} = useContext(Context)
    const location = useLocation()
    const history = useHistory()
    const isLogin = location.pathname === LOGIN_ROUTE
    const [email, setEmail] = useState('')
    const [password, setPassword] = useState('')
    const [rememberMe, setRememberMe] = useState(false);
    const [showPassword, setShowPassword] = useState(false);
    const [confirmPassword, setConfirmPassword] = useState('');
    const [showConfirmPassword, setShowConfirmPassword] = useState(false);
    const [termsAccepted, setTermsAccepted] = useState(false);

    const handleTogglePassword1 = () => {
        setShowPassword(!showPassword);
    };

    const handleTogglePassword2 = () => {
        setShowConfirmPassword(!showConfirmPassword);
    };

    const handleRememberMeChange = (e) => {
        setRememberMe(e.target.checked);
    };

    const click = async () => {
        try {
            let data;
            if (isLogin) {
                data = await login(email, password, rememberMe);
            } else {
                if (password !== confirmPassword) {
                    alert("Passwords do not match");
                    return;
                }
                data = await registration(email, password, rememberMe);
            }
            user.setUser(user);
            user.setIsAuth(true);
            history.push(SHOP_ROUTE);
        } catch (e) {
            alert(e.response.data.message);
        }
    };

    return (
        <Container
            className="d-flex justify-content-center align-items-center"
            style={{height: window.innerHeight - 54}}
        >
            <Card style={{width: 600}} className="p-5">
                <h2 className="m-auto">{isLogin ? 'Sign In' : "Join Us"}</h2>
                <Form className="d-flex flex-column">
                    <Form.Control
                        className="mt-3"
                        placeholder="Email"
                        value={email}
                        onChange={e => setEmail(e.target.value)}
                    />
                    <InputGroup className="mt-3" >
                        <Form.Control
                            placeholder="Password"
                            value={password}
                            onChange={e => setPassword(e.target.value)}
                            type={showPassword ? "text" : "password"}
                        />
                        <Button
                            variant="light"
                            onClick={handleTogglePassword1}
                            className="transparent-button1"
                        >
                            {showPassword ? <FaEyeSlash /> : <FaEye />}
                        </Button>
                    </InputGroup>
                    {!isLogin && (
                        <>
                        <InputGroup className="mt-3">
                        <Form.Control
                            placeholder="Confirm Password"
                            value={confirmPassword}
                            onChange={e => setConfirmPassword(e.target.value)}
                            type={showConfirmPassword  ? "text" : "password"}
                        />
                        <Button
                        variant="light"
                        onClick={handleTogglePassword2}
                        className="transparent-button2"
                        >
                            {showConfirmPassword ? <FaEyeSlash /> : <FaEye />}
                        </Button>
                        </InputGroup>
                        </>
                    )}
                    <Row className="d-flex justify-content-between mt-3 pl-3 pr-3">
                        <Col xs={6}>
                        {isLogin ?
                            <div style={{
                                    fontFamily: 'Helvetica Neue, Arial, sans-serif'}}>
                                No account? <NavLink to={REGISTRATION_ROUTE}>Join Us!</NavLink>
                            </div>
                            :
                            <div style={{
                                fontFamily: 'Helvetica Neue, Arial, sans-serif'}}>
                                Are you registered? <NavLink to={LOGIN_ROUTE}>Sign In!</NavLink>
                            </div>
                        }
                        </Col>
                        <Col xs={6} className="text-right" style={{
                            fontFamily: 'Helvetica Neue, Arial, sans-serif'}}>
                            {isLogin && (
                                <Form.Check
                            type="checkbox"
                            label ="Remember Me"
                            checked={rememberMe}
                            onChange={handleRememberMeChange}
                        />
                                )}
                        </Col>
                        {!isLogin && (
                            <Form.Check
                            className="mt-3"
                            style={{
                                fontFamily: 'Helvetica Neue, Arial, sans-serif'}}
                            type="checkbox"
                            label="I accept the Terms of Service and Privacy Policy"
                            checked={termsAccepted}
                            onChange={() => setTermsAccepted(!termsAccepted)}
                        />
                            )}
                        <Button
                            style={{
                            fontFamily: 'Helvetica Neue, Arial, sans-serif'}}
                            variant={"outline-primary"}
                            onClick={click}
                            disabled={!isLogin && !termsAccepted}
                        >
                            {isLogin ? 'Join Us' : 'Sign In' }
                        </Button>
                    </Row>

                </Form>
            </Card>
        </Container>
    );
});

export default Auth;