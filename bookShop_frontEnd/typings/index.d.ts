/// <reference path="./types/index.d.ts" />

interface IAppOption {
  globalData: {
    userInfo?: WechatMiniprogram.UserInfo,
    username?: string,
    avatar?: string,
    sign?: string
  }
  userInfoReadyCallback?: WechatMiniprogram.GetUserInfoSuccessCallback,
}