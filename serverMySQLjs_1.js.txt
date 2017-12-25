var express   =    require("express");
var mysql     =    require('mysql');
var app       =    express();

var pool      =    mysql.createPool({
    connectionLimit : 100, //important
    host     : 'd2p.cayzymtlzfaw.ap-south-1.rds.amazonaws.com',
    port	  : 3306,
    user     : 'D2P',
    password : 'password',
    database: 'D2P',
    debug    :  false
});

function handle_database(query,req,res) {
    pool.getConnection(function(err,connection){
        if (err) {
          res.json({"code" : 100, "status" : "Error in connection database"});
          return;
        }   
        console.log('connected as id ' + connection.threadId);
        connection.query(query,function(err,rows){
            connection.release();
            if(!err) {
                res.json(rows);
            }           
        });

        connection.on('error', function(err) {      
              res.json({"code" : 100, "status" : "Error in connection database"});
              return;     
        });
  });
}

app.get("/getCuisines_type",function(req,res){-
    handle_database(
    "select * from cuisines_type",
        req, res);
});
app.get("/getPackage_Master", function (req, res) {
    -
    handle_database(
        '    SELECT  VPO.Vendor_Caterer_Package_Offers, DT.description DishType, ct.Description  CuisinesType,   VM.*,  '
        + '  VPO.RangeFrom,VPO.RangeTo,VPO.Offer_Price  '
        + '      FROM Vendor_Caterer_Package_Master VM '
        + '    Left Join Vendor_Type VT on VM.Vendor_Type_CD = VT.Vendor_Type_CD  '
        + ' left join Vendor_Caterer_Package_Offers VPO  '
        + ' on VPO.Vender_Pkg_Mst_Id =VM.Vender_Pkg_Mst_Id '
        + ' left join Dishes_Type  DT on VM.Dish_Type_Id =DT.Dish_Type_Id '
        + ' left join Cuisines_Type CT on ct.Cuisines_Type_ID=VM.Cuisines_Type_ID '
        + ' where RangeFrom is not null and RangeTo is not null	'
        , req, res);
});

app.get("/getDishType", function (req, res) {-
        handle_database(
            ' select * from Dishes_Type	'
            ,req, res);
});
app.get("/getFacilities_Master", function (req, res) {
    -
    handle_database(
        ' select * from Facilities_Master	'
        , req, res);
});
app.get("/getCourse_Type", function (req, res) {
    -
        handle_database(
            ' select * from Course_Type	'
            , req, res);
});
app.get("/getvendor_Type", function (req, res) {
    -
        handle_database(
            ' select * from vendor_Type	'
            , req, res);
});
app.get("/getoccasion_type", function (req, res) {
    -
        handle_database(
            ' select * from occasion_type	'
            , req, res);
});
app.get("/getvenue_Type", function (req, res) {
    -
        handle_database(
            ' select * from Venue_Type	'
            , req, res);
});
app.get("/getPackageMenu", function (req, res) {
    -
        handle_database(
            'SELECT * FROM D2P.Course_Type'          
            , req, res);
});

var server = app.listen(3000, function () {
    console.log('Server is running..');
});
