import {Request} from '../utils/request'

//Comment对象和Book对象的网络请求
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
        url:"/comment/add",
        data:options,
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

  deleteComments(id){
    return new Promise((resolve,reject) =>{
      let props = {
        url:"/comment/delete/"+id,
        data:{},
        type:"DELETE",
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

  updateComments(options){
    return new Promise((resolve,reject) =>{
      let props = {
        url:"/comment/update",
        data:options,
        type:"PUT",
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