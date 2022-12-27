// pages/computer/computer.ts

import {Books} from '../../model/book'
const bookApi = new Books()

Page({
    /**
     * 页面的初始数据
     */
    data: {
        type:"default",
        list:[
            {
                id: 0,
                title:"chy的伟大著作第一部",
                type: "计算机",
                details:"点进来干嘛！~",
                image:'https://lar-blog.oss-cn-nanjing.aliyuncs.com/picGo_img/截屏2022-12-13 下午6.37.04.png',
                author: "chy",
                info:"chy不想写简介",
                level:"神话"
            }
        ]
    },
    /**
     * 生命周期函数--监听页面加载
     */
    onLoad: function (options) {
        this.setData({
            type : options.type
        })
        console.log(this.data.type)
        console.log("调用onLoad")
        this.UpdateBooks()
    },
    
    UpdateBooks(){
        let params = {}
        var that = this
        // that.setData({ 
        //     article: []
        // })
        bookApi.updateBooks(params).then(res=>{
        for (var i = 0; i < res.length; i++) { 
            var newBooks = {
                id: res[i].id,
                title: res[i].name,
                type: res[i].type,
                details: res[i].details,
                image:res[i].img,
                author: res[i].author,
                info: res[i].brief,
                level: res[i].level
            }
            if(newBooks.type == that.data.type)
                that.data.list.push(newBooks)
            }
            that.setData({ // 只有setdata才能双向绑定？
            list: that.data.list
        })
        }).catch(err=>{
            console.log(err)
        })
    },
    /**
     * 生命周期函数--监听页面初次渲染完成
     */
    onReady() {

    },

    /**
     * 生命周期函数--监听页面显示
     */
    onShow() {

    },

    /**
     * 生命周期函数--监听页面隐藏
     */
    onHide() {

    },

    /**
     * 生命周期函数--监听页面卸载
     */
    onUnload() {

    },

    /**
     * 页面相关事件处理函数--监听用户下拉动作
     */
    onPullDownRefresh() {

    },

    /**
     * 页面上拉触底事件的处理函数
     */
    onReachBottom() {

    },

    /**
     * 用户点击右上角分享
     */
    onShareAppMessage() {

    }
})