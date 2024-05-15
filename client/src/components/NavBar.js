import React, { useContext } from 'react';
import { Context } from '../index';
import Navbar from 'react-bootstrap/Navbar';
import Nav from 'react-bootstrap/Nav';
import { NavLink } from 'react-router-dom';
import {ADMIN_ROUTE, BASKET_ROUTE, COMMENTS_ROUTE, LOGIN_ROUTE, SHOP_ROUTE} from '../utils/consts';
import { Button } from 'react-bootstrap';
import { observer } from 'mobx-react-lite';
import Container from 'react-bootstrap/Container';
import { useHistory } from 'react-router-dom';
import logo from '../assets/logo.jpg'

const NavBar = observer(() => {
    const { user } = useContext(Context);
    const history = useHistory();

    const logOut = () => {
        user.setUser({});
        user.setIsAuth(false);
    };

    return (
        <Navbar bg="dark" variant="dark">
            <Container>
                <div style={{ display: 'flex', alignItems: 'center' }}>
                    <div style={{ marginRight: '10px' }}>
                        <img src={logo} alt="Logo" style={{ width: '40px', borderRadius: '50%' }} />
                    </div>
                    <NavLink
                        style={{ color: 'white', fontSize: '28px', fontWeight: 'bold', textDecoration: 'none' }}
                        to={SHOP_ROUTE}
                    >
                        StreetSneak
                    </NavLink>
                </div>
                {user.isAuth ? (
                    <Nav className="ml-auto" style={{ color: 'white' }}>

                            <Button variant={'outline-light'} onClick={() => history.push(ADMIN_ROUTE)}
                                    style={{
                                        fontFamily: 'Helvetica Neue, Arial, sans-serif',
                                    }}>
                                Admin bar
                            </Button>

                        <Button variant={'outline-light'} onClick={() => history.push(BASKET_ROUTE)} className="ml-2"  style={{
                            fontFamily: 'Helvetica Neue, Arial, sans-serif',
                        }}>
                            Cart
                        </Button>
                        <Button variant={'outline-light'} onClick={() => history.push(COMMENTS_ROUTE)} className="ml-2"  style={{
                            fontFamily: 'Helvetica Neue, Arial, sans-serif',
                        }}>
                            Comments
                        </Button>
                        <Button variant={'outline-light'} onClick={() => logOut()} className="ml-2"  style={{
                            fontFamily: 'Helvetica Neue, Arial, sans-serif',
                        }}>
                            Exit
                        </Button>
                    </Nav>
                ) : (
                    <Nav className="ml-auto" style={{ color: 'white' }}>
                        <Button variant={'outline-light'} onClick={() => history.push(LOGIN_ROUTE)}
                                style={{
                                    fontFamily: 'Helvetica Neue, Arial, sans-serif',
                                }}>
                            Join
                        </Button>
                    </Nav>
                )}
            </Container>
        </Navbar>
    );
});

export default NavBar;