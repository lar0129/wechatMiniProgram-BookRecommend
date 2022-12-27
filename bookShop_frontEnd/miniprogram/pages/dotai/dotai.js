// pages/dotai/dotai.js
var app = getApp()

Page({

  /**
   * 页面的初始数据
   */
  data: {
    username:'admin',
    sign: app.globalData.sign,
    bg_image:'images/页面背景.png',
    avator: app.globalData.avatar,
    pageIndex:1,
    pageSize:2,

  },
  gotoPage_mycommens: function (options) {   
    wx.navigateTo({      
        url: '../dotai/mycommens/mycomments',    //要跳转到到我的评论
     })  
  },
  gotoPage_postsign: function (options) {   
    wx.navigateTo({      
      url: '../dotai/postsign/postsign',    //要跳转到修改签名
    })  
  },  
  gotoPage_postcommens: function (options) {   
    wx.navigateTo({      
      url: '../dotai/postcommens/postcommens',    //要跳转到发表评论
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
    console.log("调用发帖onshow")
    console.log(app.globalData)
    this.setData({
        sign: app.globalData.sign,
        username: app.globalData.username,
        avator: app.globalData.avatar
    })
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