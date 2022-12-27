
const app = getApp()
var index = require("../../comment/comment")
import {Comments} from '../../../model/comment'
const commentApi = new Comments()

Page({
  data: {
    praiseImage: "../../comment/image/点赞.png",
    transferImage: '../../comment/image/浏览.png',
    userInfo: {},
    article:[
    ]
  },

  deletepost :function (e){
    //告知后端删去此评论
    const that = this
    console.log(this.data.article[e.currentTarget.dataset.no])
    var id = this.data.article[e.currentTarget.dataset.no].id
    commentApi.deleteComments(id).then(res=>{
        this.UpdateComment()
    }).catch(err=>{
        console.log(err)
    })
    //本地删除 e.no 指明为article中第几个元素

    // that.data.article.splice(e.currentTarget.dataset.no, 1)
    // this.setData({
    //   article: that.data.article
    //   })
      
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
 
  /**
   * 生命周期函数--监听页面初次渲染完成
   */
  onReady() {

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
        id: res[i].id,
        content:res[i].post,
        praise:res[i].likes,
        view:res[i].views,
        isPraise:false,
        }
        // 判断是否为自己评论
        //console.log(newComment.userInfo.imgSrc)
        //console.log(app.globalData.avatar)
        if(newComment.userInfo.imgSrc == app.globalData.avatar){
          newArticle.push(newComment)
        }
        }
        that.setData({ // 只有setdata才能双向绑定？
        article: newArticle,
    })
}).catch(err=>{
    console.log(err)
})
},

  /**
   * 生命周期函数--监听页面显示
   */
  onShow() {
      this.UpdateComment()
      console.log("调用onShow")
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
