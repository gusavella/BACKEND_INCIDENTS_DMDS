let createError = require('http-errors');
let express = require('express');
let path = require('path');
let cookieParser = require('cookie-parser');
const methodOverride = require('method-override');
let logger = require('morgan');
const expressSession = require("express-session");
let cors = require("cors")

let indexRouter = require('./src/routes/index');
//let productRouter = require('./src/routes/productRouter');
let userRouter = require('./src/routes/userRouter');
let roleRouter = require('./src/routes/roleRouter');

let departmentRouter = require('./src/routes/departmentRouter');
let cityRouter = require('./src/routes/cityRouter');

let userLocalsRouter= require('./src/routes/userLocalRouter');

let LocalRouter = require('./src/routes/LocalRouter');

let markRouter = require('./src/routes/markRouter');

let modelRouter = require('./src/routes/modelRouter'); 
let machineRouter = require('./src/routes/machineRouter');
let repairCategoryRouter = require('./src/routes/repairCategoryRouter');
let repairStateRouter = require('./src/routes/repairStateRouter');
let repairRouter = require('./src/routes/repairRouter');

let sparePartRouter = require('./src/routes/sparePartRouter');
let repairSparePartRouter = require('./src/routes/repairSparePartRouter');
let userRepairRouter = require('./src/routes/userRepairRouter');
//API
const apiUsersRouter = require('./src/routes/apiUsersRouter');
const apiProductsRouter = require('./src/routes/apiProductsRouter');

let corsOptions={
  origin:'http://localhost:3000',
  optionSuccesStatus:200
}

//let userLoggedMiddleware = require('./src/middlewares/userLoggedMiddleware')

let app = express();
app.use(cors(corsOptions))

// view engine setup
app.set('views', path.join(__dirname, '/src/views'));
app.set('view engine', 'ejs');

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, './public')));
app.use(methodOverride('_method')); 
app.use(expressSession({secret: "secret",resave: false,saveUninitialized: false}));
//app.use(userLoggedMiddleware);

app.use('/', indexRouter);

app.use('/user', userRouter);
app.use('/role', roleRouter);
app.use('/department', departmentRouter);
app.use('/city', cityRouter);
app.use('/local', LocalRouter);
app.use('/userlocal', userLocalsRouter);
app.use('/mark', markRouter);
app.use('/model', modelRouter);
app.use('/machine', machineRouter);
app.use('/repairCategorie', repairCategoryRouter);
app.use('/repairState', repairStateRouter);
app.use('/repair', repairRouter);
app.use('/userrepair', userRepairRouter);

app.use('/sparepart', sparePartRouter);
app.use('/repairsparepart', repairSparePartRouter);
// api

app.use('/api/users', apiUsersRouter)
app.use('/api/products', apiProductsRouter)


// catch 404 and forward to error handler
app.use(function(req, res, next) {
  res.status(404).json('not-found')
});

// error handler
app.use(function(err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  // render the error page
  res.status(err.status || 500);
  res.json('error');
});

module.exports = app;
