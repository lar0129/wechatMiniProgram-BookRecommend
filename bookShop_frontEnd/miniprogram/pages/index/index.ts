// pages/index/index.ts
Page({

    /**
     * 页面的初始数据
     */
    data: {
        sayings:[
            {   
                id:0,
                type:"培根",
                img:"https://lar-blog.oss-cn-nanjing.aliyuncs.com/picGo_img/培根.png",
                title:"培根论读书",
                info:"\n其怡情也，最见于独处幽居之时；其博才也，最见于高谈阔论之中；其长才也，最见于处世判事之际......"
            },
            {   
                id:1,
                type:"朱光潜",
                img:"https://lar-blog.oss-cn-nanjing.aliyuncs.com/picGo_img/朱光潜.png",
                title:"朱光潜谈读书",
                info:"\n不但可以得到较真确的知识，而且可以于无形中吸收大学者治学的精神和方法......"
            },
            {   
                id:2,
                img:"https://lar-blog.oss-cn-nanjing.aliyuncs.com/picGo_img/萧统.png",
                title:"萧统文选序",
                info:"\n观乎天文，以察时变；观乎人文，以化成天下......"
            },
            {   
                id:3,
                img:"https://lar-blog.oss-cn-nanjing.aliyuncs.com/picGo_img/陆机.png",
                title:"陆机文赋",
                info:"\n恢万里而无阂，通亿载而为津。俯殆则于来叶，仰观象乎古人。......"
            },
        ]
        
    },
    swiperChange:function(e: { detail: { current: any } }){
        this.setData({
            currentIndex:e.detail.current
        })
    },

    /**
     * 生命周期函数--监听页面加载
     */
    onLoad() {

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