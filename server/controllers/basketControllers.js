const { Basket, BasketProduct, Product } = require('../models/models');
const ApiError = require('../error/ApiError');
const {query} = require("express");

class BasketController {
    async addToCart(req, res, next) {
        try {
            const { userId, productId, quantity } = req.body;

            let basket = await Basket.findOne({
                where: { userId: userId },
                include: [BasketProduct],
            });

            if (!basket) {
                basket = await Basket.create({ userId: userId });
            }
            console.log(basket)
            const existingProduct = basket.basketProducts.find(item => item.productId === productId);

            if (existingProduct) {
                existingProduct.quantity += quantity;
                await existingProduct.save();
            } else {
                await BasketProduct.create({ basketId: basket.id, productId: productId, quantity });
            }

            return res.json({ message: 'Product added to cart successfully' });
        } catch (error) {
            next(ApiError.badRequest(error.message));
        }
    }

    async getCartContents(req, res, next) {
        try {
            const { userId } = req.params;

            let basket = await Basket.findOne({
                where: { userId: userId },
                include: [{ model: BasketProduct, include: [Product] }],
            });

            if (!basket) {
                return res.json({ message: 'Cart is empty' });
            }

            return res.json(basket.basketProducts);
        } catch (error) {
            next(ApiError.badRequest(error.message));
        }
    }

    async deleteItem(req, res, next) {
        try {
            const Id = req.params.id; // Предполагается, что id товара передается в параметрах запроса

            // Находим запись в таблице basket_teas
            const basketProduct = await BasketProduct.findOne({
                where: { id: Id },
            });

            // Если запись не найдена, возвращаем ошибку
            if (!basketProduct) {
                return next(ApiError.notFound('Item not found in shopping cart'));
            }
            // Удаляем запись из таблицы basket_teas
            await basketProduct.destroy();

            return res.json({ message: 'The product has been successfully removed from the cart' });
        } catch (error) {
            next(error);
        }
    }
    async export(req, res) {
        await query("COPY baskets TO '/tmp/accounts.csv' DELIMITER ',' CSV HEADER", {
            model: Basket,
            mapToModel: true
        })

        return res.json({message: 'Export succeed'})
    }

}

module.exports = new BasketController();