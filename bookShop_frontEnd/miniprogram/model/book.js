import {Request} from '../utils/request'

//Comment对象和Book对象的网络请求
class Books extends Request{
  constructor(){
    super(); // 调用父类函数
  }

  // 获得所有书籍
  updateBooks(options){
    return new Promise((resolve,reject) =>{
      let props = {
        url:"/book/list",
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
}
export{Books}