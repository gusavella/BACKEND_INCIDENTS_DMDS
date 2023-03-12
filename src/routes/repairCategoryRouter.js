let express = require('express');
let router = express.Router();
let path = require('path');
const adminMiddleware = require('../middlewares/adminMiddleware')
const repairCategoryController =require('../controllers/repairCategoryController');

   router.get('/all',repairCategoryController.all)
   router.get('/detail/:id',repairCategoryController.detail)
   // router.post('/add', adminMiddleware, repairCategoryController.create)
   // router.put('/:id/edit', repairCategoryController.update)
   // router.delete('/:id',repairCategoryController.delete)

module.exports = router;
