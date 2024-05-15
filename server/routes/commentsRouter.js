const Router = require('express');
const router = new Router();
const commentsController = require('../controllers/commentsController');

router.post('/addComment', commentsController.addComment);

module.exports = router;
