// app.ts
App<IAppOption>({
  globalData: {
    username: "admin",
    avatar:"https://lar-blog.oss-cn-nanjing.aliyuncs.com/picGo_img/miniprogram/images/101.png",
    sign: "这个njuer很懒，啥都没写~"
  },
  onLaunch() {
    // 展示本地存储能力
    const logs = wx.getStorageSync('logs') || []
    logs.unshift(Date.now())
    wx.setStorageSync('logs', logs)

    // 登录
    wx.login({
      success: res => {
        console.log(res.code)
        // 发送 res.code 到后台换取 openId, sessionKey, unionId
      },
    })
  },
})