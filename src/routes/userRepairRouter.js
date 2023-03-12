let express = require('express');
let router = express.Router();
let path = require('path');
const adminMiddleware = require('../middlewares/adminMiddleware')
const userRepairController = require('../controllers/userRepairController');

   router.get('/all',userRepairController.all)
   router.get('/detail/:id',userRepairController.detail)
   // router.post('/add', adminMiddleware, userRepairController.create)
   // router.put('/:id/edit', userRepairController.update)
   // router.delete('/:id',userRepairController.delete)

module.exports = router;
