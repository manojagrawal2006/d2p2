var express   =    require("express");
var mysql     =    require('mysql');
var app       =    express();

var pool      =    mysql.createPool({
    connectionLimit : 100, //important
    host     : 'localhost',
    user     : 'root',
    password : 'admin',
    database: 'deals2partyDB',
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
            'select '
        + '  Distinct VPC.pkg_Course_Max_Selection maxselection, PC.Vender_Pkg_Mst_Id, DM.Dish_Id, DM.Description DishName, CT.Description CourseType , DM.Course_Type_ID, DM.Price, DT.Description DishType , case when PC.Dish_ID > 0 then 1 else 0 end DishSelected '
            + '  from Dishes_Master DM  '
            + '  join Vendor_Master VM on DM.Vendor_Id = VM.Vendor_Id '
            + '  join Dishes_Type DT on DT.Dish_Type_Id = DM.Dish_Type_ID '
            + '  join Vendor_Package_Master VCM on VCM.Vendor_Id = VM.Vendor_Id '
            + '  join Vendor_Caterer_Package_Menu PC on PC.Dish_ID = DM.Dish_ID and PC.Vender_Pkg_Mst_Id = VCM.Vender_Pkg_Mst_Id '
            + '  join Course_Type CT on DM.Course_Type_ID = CT.Course_Type_ID '
      + '  join Vendor_Caterer_Package_Course VPC on (VPC.Vender_Pkg_Mst_Id=PC.Vender_Pkg_Mst_Id and VPC.Course_Type_ID=CT.Course_Type_ID) '
            , req, res);
});

var server = app.listen(3000, function () {
    console.log('Server is running..');
});
