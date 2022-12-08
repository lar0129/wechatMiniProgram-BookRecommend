import {Request} from '../utils/request'

class Comments extends Request{
  constructor(){
    super(); // 调用父类函数
  }

  // 获得所有评论
  getComments(options){
    return new Promise((resolve,reject) =>{
      let props = {
        url:"/comment/list",
        data:options.data,
        type:"GET",
        sCallBack:res=>{ // 匿名函数
          resolve(res)
        },
        eCallBack:res=>{
          reject(res)
        }
      }
      this.request(props)
    })
  }
  //获得评论详情
  addComments(options){
    return new Promise((resolve,reject) =>{
      let props = {
        url:"/add",
        data:options.data,
        type:"POST",
        sCallBack:res=>{ // 匿名函数
          resolve(res)
        },
        eCallBack:res=>{
          reject(res)
        }
      }
      this.request(props)
    })
  }
}
export{Comments}