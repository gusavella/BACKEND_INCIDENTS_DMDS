let express = require('express');
let router = express.Router();
let path = require('path');
const adminMiddleware = require('../middlewares/adminMiddleware')
const markController =require('../controllers/markController');

   router.get('/all',markController.all)
   router.get('/detail/:id',markController.detail)
   // router.post('/add', adminMiddleware, markController.create)
   // router.put('/:id/edit', markController.update)
   // router.delete('/:id',markController.delete)

module.exports = router;
