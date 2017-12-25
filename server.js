var express = require('express');
var app = express();
var sql = require("mysql");
var http = require('http');
var url = require('url');

    // config for your database
    var config = {
        user: 'root',
        password: 'admin',
        server: 'localhost',
        database: 'deals2partyDB'
    };

var cors = require('cors')

var corsOptions = {
    origin: 'http://localhost:4200',
    optionsSuccessStatus: 200 // some legacy browsers (IE11, various SmartTVs) choke on 204 
}

app.get('/getCuisines_type', cors(corsOptions), function (req, res) {
  //console.log('getCuisines_type');
  sql.close();
  // connect to your database
  sql.connect(config, function (err) {
    if (err) console.log(err);
    // create Request object
    var request = new sql.Request();
    // query to the database and get the records
    request.query('select * from Cuisines_type', function (err, recordset) {
      if (err) console.log(err)
      // send records as a response
      res.send(recordset.recordsets);
    });
  });
});
app.get('/getPackage_Master', cors(corsOptions), function (req, res) {
  sql.close();
  // connect to your database
  sql.connect(config, function (err) {
    if (err) console.log(err);
    // create Request object
    var request = new sql.Request();
    // query to the database and get the records
    request.query(
      //'select VP.* from Vendor_Caterer_Package_Master VP join Vendor_Master VM on VP.Vendor_Id=VM.Vendor_Id'
      //'SELECT VM.Vender_Pkg_Mst_Id,VM.Vendor_Id,VM.Package_Name,VM.Package_Desc,VM.Capacity,VM.Package_Price,VM.Package_Ratings,VM.Discount_Prct,VM.Commision_Prct	' 
      //+ ', VT.Vendor_Type_CD, VT.Description VendorType, ' 
      //+ ' a.Course_Type_ID, a.Dish_Type_ID '
      //+ '   FROM dbo.Vendor_Package_Master VM '
      //+ '   Left Join Vendor_Type VT on VM.Vendor_Type_CD = VT.Vendor_Type_CD '
      //+ '   left join (select distinct Vender_Pkg_Mst_Id, Course_Type_ID, Dish_Type_ID from Vendor_Caterer_Package_Menu VCM '
      //+ '   left join Dishes_Master DM on VCM.Dish_ID = DM.Dish_Id) a on a.Vender_Pkg_Mst_Id = VM.Vender_Pkg_Mst_Id' 
      //'      SELECT VM.Vender_Pkg_Mst_Id,VM.Vendor_Id,VM.Package_Name,VM.Package_Desc,VM.Capacity,VM.Package_Price,VM.Package_Ratings,VM.Discount_Prct,VM.Commision_Prct	'
      //+ ' , VT.Vendor_Type_CD, VT.Description VendorType, '
      //+ ' VM.Cuisines_Type_ID, VM.Dish_Type_ID '
      //+ '    FROM dbo.Vendor_Caterer_Package_Master VM '
      //+ '    Left Join Vendor_Type VT on VM.Vendor_Type_CD = VT.Vendor_Type_CD '
//      '      SELECT  VPO.Vendor_Caterer_Package_Offers,      VM.*, '
//      + '  VPO.RangeFrom,VPO.RangeTo,VPO.Offer_Price '
//      + '    FROM dbo.Vendor_Caterer_Package_Master VM '
 //     + '    Left Join Vendor_Type VT on VM.Vendor_Type_CD = VT.Vendor_Type_CD '
//      + ' left join Vendor_Caterer_Package_Offers VPO on VPO.Vender_Pkg_Mst_Id =VM.Vender_Pkg_Mst_Id   where RangeFrom is not null and RangeTo is not null	 '

           '    SELECT  VPO.Vendor_Caterer_Package_Offers, DT.description DishType, ct.Description  CuisinesType,   VM.*,  '
          + '  VPO.RangeFrom,VPO.RangeTo,VPO.Offer_Price  '
          + '      FROM dbo.Vendor_Caterer_Package_Master VM '
          + '    Left Join Vendor_Type VT on VM.Vendor_Type_CD = VT.Vendor_Type_CD  '
          + ' left join Vendor_Caterer_Package_Offers VPO  '
          + ' on VPO.Vender_Pkg_Mst_Id =VM.Vender_Pkg_Mst_Id '   
          + ' left join Dishes_Type  DT on VM.Dish_Type_Id =DT.Dish_Type_Id '
          + ' left join Cuisines_Type CT on ct.Cuisines_Type_ID=VM.Cuisines_Type_ID '
          + ' where RangeFrom is not null and RangeTo is not null	'
      , function (err, recordset) {
      if (err) console.log(err)
      // send records as a response
      res.send(recordset.recordsets);
    });
  });
});


app.get('/getDishType', cors(corsOptions), function (req, res) {
  sql.close();
  // connect to your database
  sql.connect(config, function (err) {
    if (err) console.log(err);
    // create Request object
    var request = new sql.Request();
    // query to the database and get the records
    request.query('select * from Dishes_Type', function (err, recordset) {
      if (err) console.log(err)
      // send records as a response
      res.send(recordset.recordsets);
    });
  });
});

//
app.get('/getFacilities_Master', cors(corsOptions), function (req, res) {
    sql.close();
    // connect to your database
    sql.connect(config, function (err) {
        if (err) console.log(err);
        // create Request object
        var request = new sql.Request();
        // query to the database and get the records
        request.query('select * from Facilities_Master', function (err, recordset) {
            if (err) console.log(err)
            // send records as a response
            res.send(recordset.recordsets);
        });
    });
});

app.get('/getCourse_Type', cors(corsOptions), function (req, res) {
    sql.close();
    // connect to your database
    sql.connect(config, function (err) {
        if (err) console.log(err);
        // create Request object
        var request = new sql.Request();
        // query to the database and get the records
        request.query('select * from Course_Type', function (err, recordset) {
            if (err) console.log(err)
            // send records as a response
            res.send(recordset.recordsets);
        });
    });
});

app.get('/getvendor_Type', cors(corsOptions), function (req, res) {
    sql.close();
    // connect to your database
    sql.connect(config, function (err) {
        if (err) console.log(err);
        // create Request object
        var request = new sql.Request();
        // query to the database and get the records
        request.query('select * from vendor_Type', function (err, recordset) {
            if (err) console.log(err)
            // send records as a response
            res.send(recordset.recordsets);
        });
    });
});

app.get('/getoccasion_type', cors(corsOptions), function (req, res) {

//    var sql = require("mssql");

    sql.close();
    // connect to your database
    sql.connect(config, function (err) {

        if (err) console.log(err);

        // create Request object
        var request = new sql.Request();

        // query to the database and get the records
        request.query('select * from occasion_type', function (err, recordset) {

            if (err) console.log(err)

            // send records as a response
            res.send(recordset.recordsets);

        });
    });
    //sql.close();
});

app.get('/getvenue_Type', cors(corsOptions), function (req, res) {

    //    var sql = require("mssql");

    sql.close();
    // connect to your database
    sql.connect(config, function (err) {

        if (err) console.log(err);

        // create Request object
        var request = new sql.Request();

        // query to the database and get the records
        request.query('select * from Venue_Type', function (err, recordset) {

            if (err) console.log(err)

            // send records as a response
            res.send(recordset.recordsets);

        });
    });
    //sql.close();
});

app.get('/getPackageMenu', cors(corsOptions), function (req, res) {
  sql.close();
  // connect to your database
  sql.connect(config, function (err) {
    if (err) console.log(err);
    // create Request object
    var request = new sql.Request();
    // query to the database and get the records
    request.query('select '
      + '  Distinct VPC.pkg_Course_Max_Selection maxselection, PC.Vender_Pkg_Mst_Id, DM.Dish_Id, DM.Description DishName, CT.Description CourseType , DM.Course_Type_ID, DM.Price, DT.Description DishType , convert(bit, (case when PC.Dish_ID > 0 then 1 else 0 end)) DishSelected '
            + '  from dbo.Dishes_Master DM  '
            + '  join Vendor_Master VM on DM.Vendor_Id = VM.Vendor_Id '
            + '  join Dishes_Type DT on DT.Dish_Type_Id = DM.Dish_Type_ID '
            + '  join dbo.Vendor_Package_Master VCM on VCM.Vendor_Id = VM.Vendor_Id '
            + '  join dbo.Vendor_Caterer_Package_Menu PC on PC.Dish_ID = DM.Dish_ID and PC.Vender_Pkg_Mst_Id = VCM.Vender_Pkg_Mst_Id '
            + '  join Course_Type CT on DM.Course_Type_ID = CT.Course_Type_ID '
      + '  join Vendor_Caterer_Package_Course VPC on VPC.Vender_Pkg_Mst_Id=PC.Vender_Pkg_Mst_Id and VPC.Course_Type_ID=CT.Course_Type_ID '
          , function (err, recordset) {

      if (err) console.log(err)

      // send records as a response
      res.send(recordset.recordsets);

    });
  });
});



var server = app.listen(5000, function () {
    console.log('Server is running..');
});
