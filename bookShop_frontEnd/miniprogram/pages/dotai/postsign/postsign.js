// pages/dotai/mycommens/mycomments.js
var app = getApp()

Page({

  /**
   * 页面的初始数据
   */
  data: {
    postingtext:'',
    maxposttext:50,
    textholder:'个性签名...',
  },
  
  nopost(e){
    this.setData({
      postingtext: '',
      textholder:'个性签名...',
    })
  },

  posting(e){
    this.setData({
      postingtext: e.detail.value,
    })
  },
  gotopost(e){
     //传给后端 postingtext
     app.globalData.sign = this.data.postingtext
    this.setData({
      postingtext:'',
      textholder:'修改完成.'
  })
},
  /**
   * 生命周期函数--监听页面加载
   */
  onLoad(options) {

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
