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
    commentNum:0,
    praiseImage: './image/点赞.png',
    havePraise: './image/已点赞.png',
    transferImage: './image/转发.png',
    haveTransfer: './image/已转发.png',
    swiperImg1: 'https://lar-blog.oss-cn-nanjing.aliyuncs.com/picGo_img/冰岛.png',
    swiperImg2: 'https://lar-blog.oss-cn-nanjing.aliyuncs.com/picGo_img/资本论.png',
    swiperImg3: 'https://lar-blog.oss-cn-nanjing.aliyuncs.com/picGo_img/悲惨世界.png',
    bgImg: 'https://lar-blog.oss-cn-nanjing.aliyuncs.com/picGo_img/背景.png',
    motto: 'Hello World',
    userInfo: {},
    hasUserInfo: false,
    canIUse: wx.canIUse('button.open-type.getUserInfo'),
    canIUseGetUserProfile: false,
    canIUseOpenData: wx.canIUse('open-data.type.userAvatarUrl') && wx.canIUse('open-data.type.userNickName') ,// 如需尝试获取用户信息可改为false
    article:[
      {
        userInfo:{
          name:"6f",
          imgSrc: "https://lar-blog.oss-cn-nanjing.aliyuncs.com/picGo_img/剪辑/电影海报/index.jpg",
          sign:"一条签名"
        },
        content:"可以在发帖区发表你对书籍的看法~",
        praise:5,
        view:10,
        transfer:3,
        isPraise:false,
        isTransfer:true
      }
    ]
  },

  praise(e){
    console.log(e.currentTarget.dataset);
    
    var oldPost = this.data.article[e.currentTarget.dataset.no]
    var praisedPost = {
        id: oldPost.id,
        name: oldPost.userInfo.name,
        views: oldPost.view,
        likes: oldPost.praise + 1,
        post: oldPost.content,
        sign:oldPost.userInfo.sign,
        avatar:oldPost.userInfo.imgSrc
        }
    commentApi.updateComments(praisedPost).then(res=>{
        this.UpdateComment()
    }).catch(err=>{
        console.log(err)
    })
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
    console.log("调用onLoad")
    if (wx.getUserProfile) {
      this.setData({
        canIUseGetUserProfile: true
      })
    }
    //this.UpdateComment()
  },

    UpdateComment(e){
        let params = {}
        var that = this
        // that.setData({ 
        //     article: []
        // })
        var newArticle = []
        commentApi.getComments(params).then(res=>{
        for (var i = 0; i < res.length; i++) { 
            var newComment = {
            userInfo:{
                name: res[i].name,
                imgSrc: res[i].avatar,
                sign:res[i].sign
            },
            id:res[i].id,
            content:res[i].post,
            praise:res[i].likes,
            view:res[i].views,
            isPraise:false,
            }
            newArticle.push(newComment)
            }
            that.setData({ // 只有setdata才能双向绑定？
            article: newArticle
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
  },

  onShow:function(){
    for (var i = 0; i < this.data.article.length; i++) {
        var oldPost = this.data.article[i]
        var newPost = {
            id: oldPost.id,
            name: oldPost.userInfo.name,
            views: oldPost.view+1,
            likes: oldPost.praise,
            post: oldPost.content,
            sign:oldPost.userInfo.sign,
            avatar:oldPost.userInfo.imgSrc
            }
        commentApi.updateComments(newPost).then(res=>{
            //this.UpdateComment()
        }).catch(err=>{
            console.log(err)
        })
    }
    this.UpdateComment()
  }
})