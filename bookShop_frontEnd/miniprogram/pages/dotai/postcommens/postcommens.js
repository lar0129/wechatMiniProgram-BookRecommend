// pages/dotai/mycommens/mycomments.js
import {Comments} from '../../../model/comment'
const commentApi = new Comments()
var app = getApp()

Page({

  /**
   * 页面的初始数据
   */
  data: {
    postingtext:'',
    maxposttext:500,
    textholder:'今日份想法...',
  },
  
  nopost(e){
    this.setData({
      postingtext: '',
      textholder:'今日份想法...',
    })
  },

  posting(e){
    this.setData({
      postingtext: e.detail.value,
    })
  },
  gotopost(e){
    console.log(e)
    this.setData({
      posttext:this.data.postingtext,
      postingtext:'',
      textholder:'发布完成.'
  })
  let params = {
    name: app.globalData.username,
    likes: 0,
    views: 0,
    sign : app.globalData.sign,
    post: this.data.posttext,
    avatar: app.globalData.avatar
  }
    commentApi.addComments(params).then(res=>{
      console.log(res)
      //var commentPage = require('../comment/comment.js')
      //  commentPage.Page.update
      }).catch(err=>{
        console.log(err)
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
