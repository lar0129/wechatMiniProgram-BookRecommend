// index.js
// 获取应用实例
const app = getApp()
var index = require("../comment/comment")
import {Comments} from '../../model/comment'
const commentApi = new Comments()

Page({
  data: {
    pageIndex:1,
    pageSize:2,
    praiseImage: './image/点赞.png',
    havePraise: './image/已点赞.png',
    transferImage: './image/转发.png',
    haveTransfer: './image/已转发.png',
    motto: 'Hello World',
    userInfo: {},
    hasUserInfo: false,
    canIUse: wx.canIUse('button.open-type.getUserInfo'),
    canIUseGetUserProfile: false,
    canIUseOpenData: wx.canIUse('open-data.type.userAvatarUrl') && wx.canIUse('open-data.type.userNickName') ,// 如需尝试获取用户信息可改为false
    article:[
      {
        userInfo:{
          name:"Bob",
          imgSrc:"./image/1.png",
          sign:"车水马龙游刃有余"
        },
        content:"aaaaaaaaaaaaaaaaaaaaaaaaa",
        praise:5,
        view:10,
        transfer:3,
        isPraise:true,
        isTransfer:true
      },{
        userInfo:{
          name:"Tom",
          imgSrc:"./image/2.png",
          sign:"声嘶力竭地假装呐喊"
        },
        content:"BBBBBBBBBBBBBBBBBBBBBBBB",
        praise:5,
        view:10,
        transfer:3,
        isPraise:false,
        isTransfer:false
      }
    ]
  },
  praise(e){
    console.log(e.target);
  },

  moreArticle(e){
    console.log ("moreArticle: 加载更多");
    console.log("moreArticle: pageIndex: " + e.currentTarget.dataset.pageIndex);
    wx.showNavigationBarLoading();
    var first = (this.data.pageIndex) * this.data.pageSize;
    this.getArticle(first);
  },

  getArticle:function(first) {
    console.info(first);
    if ( (first == "undefined") || (first == null) ) {
      first = 1;
    }
    if (first > index.articles.length) {
      wx.hideNavigationBarLoading();
      return
    }
    var end = first + this.data.pageSize;
    if (end > index.articles.length) {
        end = index.articles.length;
    }
    var newArticle = index.articles.slice(first, end);
    this.setData({
      articles:this.data.articles.concat(newArticle),
      pageIndex:parseInt(this.data.pageIndex)+1
    });
    wx.hideNavigationBarLoading();
  },
  // 事件处理函数
  bindViewTap() {
    wx.navigateTo({
      url: '../logs/logs'
    })
  },

  onLoad() {
    if (wx.getUserProfile) {
      this.setData({
        canIUseGetUserProfile: true
      })
    }
    let params = {}
    var that = this
    commentApi.getComments(params).then(res=>{
      for (var i = 0; i < res.length; i++) { 
        var newComment = {
          userInfo:{
            name: res[i].name,
            imgSrc:"./image/1.png",
            sign:"后端真难写"
          },
          content:res[i].icon,
          praise:res[i].sale,
          view:10,
          transfer:3,
          isPraise:true,
          isTransfer:true
          }
          console.log(newComment)
          that.data.article.push(newComment)
        }
        console.log(that.data.article)
        that.setData({ // 只有setdata才能双向绑定？
          article: that.data.article
        })
      }).catch(err=>{
        console.log(err)
      })
  },

  getUserProfile(e) {
    // 推荐使用wx.getUserProfile获取用户信息，开发者每次通过该接口获取用户个人信息均需用户确认，开发者妥善保管用户快速填写的头像昵称，避免重复弹窗
    wx.getUserProfile({
      desc: '展示用户信息', // 声明获取用户个人信息后的用途，后续会展示在弹窗中，请谨慎填写
      success: (res) => {
        console.log(res)
        this.setData({
          userInfo: res.userInfo,
          hasUserInfo: true
        })
      }
    })
  },
  getUserInfo(e) {
    // 不推荐使用getUserInfo获取用户信息，预计自2021年4月13日起，getUserInfo将不再弹出弹窗，并直接返回匿名的用户个人信息
    console.log(e)
    this.setData({
      userInfo: e.detail.userInfo,
      hasUserInfo: true
    })
  }
})
