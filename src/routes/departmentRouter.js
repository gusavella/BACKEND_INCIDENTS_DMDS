let express = require('express');
let router = express.Router();
let path = require('path');
const adminMiddleware = require('../middlewares/adminMiddleware')
const departmentController =require('../controllers/departmentController');

   router.get('/all',departmentController.all)
   router.get('/detail/:id',departmentController.detail)
   // router.post('/add', adminMiddleware, departmentController.create)
   // router.put('/:id/edit', departmentController.update)
   // router.delete('/:id',departmentController.delete)

module.exports = router;
