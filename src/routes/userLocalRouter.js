let express = require('express');
let router = express.Router();
let path = require('path');
const adminMiddleware = require('../middlewares/adminMiddleware')
const userLocalController = require('../controllers/userLocalController');

   router.get('/all',userLocalController.all)
   router.get('/detail/:id',userLocalController.detail)
   // router.post('/add', adminMiddleware, userLocalController.create)
   // router.put('/:id/edit', userLocalController.update)
   // router.delete('/:id',userLocalController.delete)

module.exports = router;
