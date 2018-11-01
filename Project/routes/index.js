//引入所需要的express包
const express=require("express");
//引入连接池模块
const pool=require("../pool.js");
//使用express创建路由 
const router=express.Router();
//创建路由
router.get("/",(req,res)=>{
    var sql = `SELECT * FROM s_product`;
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send(result);
    });
});
router.get("/list",(req,res)=>{
    var sql = `SELECT * FROM s_info`;
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send(result);
    });
});

//导出路由
module.exports=router;


