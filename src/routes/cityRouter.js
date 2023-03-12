let express = require('express');
let router = express.Router();
let path = require('path');
const adminMiddleware = require('../middlewares/adminMiddleware')
const cityController =require('../controllers/cityController');

   router.get('/all',cityController.all)
   router.get('/detail/:id',cityController.detail)
   // router.post('/add', adminMiddleware, cityController.create)
   // router.put('/:id/edit', cityController.update)
   // router.delete('/:id',cityController.delete)

module.exports = router;
