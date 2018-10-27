//引入所需要的express包
const express=require("express");
//引入连接池模块
const pool=require("../pool.js");
//使用express创建路由 
const router=express.Router();

//创建路由
router.get("/",(req,res)=>{
    var sql = `SELECT * FROM s_details`;
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        var data = {}
        data.pno = req.query.pno;
        data.pageCount = Math.ceil(result.length/12);
        data.res=result.slice(data.pno*12,data.pno*12+12);
        res.send(data);
    });
});

//导出路由
module.exports=router;


