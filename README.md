# iOS设计模式浅谈
个人浅见，有误请指出，轻喷，谢谢~

- 前言
  1. iOS设计模式中，常见的有MVC,MVP,MVVM,VIPER,SO这几种设计模式网上各有说法，浅谈一下个人浅见 。
  2. 本篇主要学习使用VIPER设计模式来做一个demo
  3. （本人以前喜欢玩DOTA2，一看到Viper，就想到一个英雄，叫蝮蛇，Viper翻译过来也是蝮蛇，毒蛇的意思。）
  4. 这种设计模式学习成本较大，但是这种架构也是很厉害，就像毒蛇一样，对于大型项目，就像蟒蛇吞象一样，或者说，VIPER更适合于大型项目，个人就给VIPER设计模式取个中文名叫--"蝮蛇"
  5. SO - Serveice Oriented（面向服务设计模式）

  ##### 1. MVC（50余年历史）
  - 优点：小项目中，层次分明，架构精简
  - 缺点：大项目中，ViewController臃肿，逻辑混乱，难以维护
  - 总结一句话比喻其优缺点：ViewController又当爹，又当妈，孩子还小的时候，还能负担的起，也方便；孩子一旦大了，ViewController要累死了


<img width="778" alt="image" src="https://user-images.githubusercontent.com/18459414/176925795-52fd3168-060c-4d0b-ac32-b73173ad1c94.png">


        苹果官方推荐的设计模式，个人认为适用于小型的APP。
        在当下内卷严重的时代，APP功能也越来越卷，我觉得MVC已经不太适合了。
        但是其思想还是值得我们进一步学习和思考的。
        
##### 2. MVVM（40余年历史）
- 优点：剥离了一部分ViewController中的View相关的处理逻辑
- 缺点：
  1. View的可复用性变差
  2. 单元测试难以编写
  3. 违背单一职责设计原则
总结一句话比喻其优缺点：厨房的抽屉很乱，我让你去打扫，你却把上面的抽屉里的部分垃圾，倒入下面一层抽屉里去了，然后你跟我说你打扫了抽屉

<img width="801" alt="image" src="https://user-images.githubusercontent.com/18459414/176926989-1e5d1e6f-93de-4cb1-8459-3b7e3578ec95.png">


        当大家发现MVC的臃肿，就会想办法把ViewController中的View相关逻辑抽离出来
        实际上，到最后会发现，治标不治本。
        
##### 3. MVP（17余年历史）
- 优点：加强了presenter的地位，降低了ViewController的地位，也就意味着，减轻了ViewController的大部分业务逻辑
- 缺点：ViewController仍然要处理大部分View相关的视图逻辑，在复杂度剧增的APP时代，ViewController依然容易超过上千行代码。

<img width="787" alt="image" src="https://user-images.githubusercontent.com/18459414/176929574-98722734-9ae7-4b31-ab07-3fb9f23edd72.png">

##### 4. VIPER（10余年历史）
先阐述一下相关名词意思

V：View(视图)
I:Interactor(沟通者)
P:Presenter(主持者)
E:Entity(数据实体)
R:Router(路由器)

- 优点：
1. 层次更加分明
2. 更加符合单一职责原则
3. 高解耦、低耦合，易于维护
4. 可复用性强
- 缺点：
1. 上手成本高
2. 对于小项目来说，不符合这种架构，分工太多，有点得不偿失的感觉
<img width="755" alt="image" src="https://user-images.githubusercontent.com/18459414/176932726-5bbb1d74-de87-4672-bbbe-9c15e6efc358.png">


##### 5. SO（5年历史-https://tech.glowing.com/cn/service-oriented-ios-architecture/）
- 优点：在研究中
- 缺点：在研究中
- 架构图：在研究中


