
// pages/dotai/dotai.js
import {Comments} from '../../model/comment'
const commentApi = new Comments()

Page({

  /**
   * 页面的初始数据
   */
  data: {
    isinput: true,
    postingtext:'',
    posttext:'',
    maxposttext:500,
    textholder:'今日份想法...',
  },

  needpost(e){
    this.setData({
      isinput: this.data.isinput ? false:true,
      postingtext:'',
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
      //posttext:e.detail.value, 出错了
      postingtext:'',
      textholder:'发布完成.'
  })
  let params = {}
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