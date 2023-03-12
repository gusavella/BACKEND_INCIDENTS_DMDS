let express = require('express');
let router = express.Router();
let path = require('path');
const adminMiddleware = require('../middlewares/adminMiddleware')
const localController =require('../controllers/localController');

   router.get('/all',localController.all)
   router.get('/detail/:id',localController.detail)
   // router.post('/add', adminMiddleware, localController.create)
   // router.put('/:id/edit', localController.update)
   // router.delete('/:id',localController.delete)

module.exports = router;
