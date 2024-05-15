import { useEffect, useState, useRef } from "react";
import React from 'react';
import {Button, Row} from "react-bootstrap";
import bigStar from '../assets/bigStar.png';

const Comments = () => {
    const [comments, setComments] = useState([]);
    const textInput = useRef(null);

        // Создайте новый комментарий с текстом комментария
        const addComment = () => {
            const commentText = textInput.current.value;

            // Создание нового комментария с помощью CommentService
            let CommentService;
            CommentService.create({ description: commentText })
                .then(newComment => {
                    console.log(newComment);
                    setComments(prevComments => [newComment, ...prevComments]);
                })
                .catch(error => {
                    console.error('Ошибка при добавлении комментария:', error);
                });

            textInput.current.value = '';
        };

    return (
        <>
            <div className="CommentForm">
                <form id="commentForm">
                    <div className="ProfileImg">
                        <img
                            width={"48"}
                            height={"48"}
                            src={bigStar}
                            id={"cha-img"}
                            alt={""}
                        />
                    </div>
                    <textarea
                        id="commentText"
                        type="text"
                        placeholder="Добавить комментарий"
                        className="InputComment"
                        ref={textInput}
                    ></textarea>
                    <div className="ccd">
                        <Button onClick={addComment}>Добавить</Button>
                    </div>
                    <Row>
                        <h5>1) The boutique positively stands out with its approach to selection of good.</h5>
                        <h5>2) Ability to present its concept and interest in something new.</h5>
                        <h5>3) Ability to present its concept and interest in something new.</h5>
                        <h5>4) I liked the store very much.</h5>
                        <h5>5) Nice gloves. Fast shipping..</h5>
                    </Row>
                </form>
            </div>

            <div className="Comments">
                {comments.reduceRight((acc, comment) => {
                    return [
                        ...acc,
                        <div key={comment.id} className="CommentInfo">
                            <div className="ProfileImg">
                                <img
                                    width={"48"}
                                    height={"48"}
                                    src={""}
                                    id={"cha-img"}
                                    alt={""}
                                />
                            </div>
                            <div className="CommentText">
                                {comment.data}
                            </div>
                        </div>
                    ];
                }, [])}
            </div>
        </>
    );
};

export default Comments;