const { Comments, User } = require('../models/models');
const ApiError = require('../error/ApiError');

class CommentsController {
    async addComment(req, res, next) {
        try {
            const { userId, description } = req.body;

            // Проверяем, существует ли пользователь с данным идентификатором
            const user = await User.findByPk(userId);
            if (!user) {
                throw new Error('User not found');
            }

            // Создаем комментарий
            const comment = await Comments.create({ description, userId });

            return res.json(comment);
        } catch (error) {
            next(ApiError.badRequest(error.message));
        }
    }
}

module.exports = new CommentsController();