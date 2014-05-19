(function(){"use strict";angular.module("angularOnCoffeeApp",["ngCookies","ngResource","ngSanitize","ngRoute","FBAngular","cfp.hotkeys","hljs"]).config(["$routeProvider","$locationProvider",function(a,b){return a.when("/",{templateUrl:"http://stepanic.github.io/angular-on-coffee/views/main.html",controller:"MainCtrl"}).when("/slide-:slide",{templateUrl:"http://stepanic.github.io/angular-on-coffee/views/slide.html",controller:"MainCtrl"}).otherwise({redirectTo:"/"}),b.html5Mode(!1)}])}).call(this),function(){"use strict";angular.module("angularOnCoffeeApp").controller("MainCtrl",["$scope","$route","$location","$http","$templateCache","Fullscreen","hotkeys","SlideRepo",function(a,b,c,d,e,f,g,h){var i,j,k,l,m,n,o,p,q;for(a.slide=null,m=h.maxId(),n=h.minId(),q=h.getAll(),o=0,p=q.length;p>o;o++)l=q[o],d.get(""+l.view,{cache:e});return a.editorOptions={lineWrapping:!0,lineNumbers:!0,readOnly:"nocursor",mode:"javascript",theme:"ambience"},i=function(b){return b&&!isNaN(b)&&(a.slide=h.getById(b),b>m&&c.path("/slide-"+m),n>b&&c.path("/slide-"+n),b!==parseInt(k.slide,10))?c.path(a.slide.route):void 0},j=function(b){var c;return null!==a.slide.id?(c=a.slide.id,"left"===b?c>n&&(c-=1):m>c&&(c+=1),i(c)):void 0},k=b.current.params,i(parseInt(k.slide,10)),g.add({combo:"ctrl+f",description:"Toggle fullscreen",callback:function(){return a.goFullscreen()}}),g.add({combo:"esc",description:"Toggle fullscreen",callback:function(){return a.goFullscreen()}}),g.add({combo:"left",description:"Navigate slides left (backward)",callback:function(){return j("left")}}),g.add({combo:"right",description:"Navigate slides right (forward)",callback:function(){return j("right")}}),a.goFullscreen=function(){return f.isEnabled()?f.cancel():f.all()}}])}.call(this),function(){"use strict";angular.module("angularOnCoffeeApp").service("SlideRepo",function(){var a;return a=[{id:1,route:"/slide-1",title:"CoffeeScript in general",view:"views/partial/slide-1.html"},{id:2,route:"/slide-2",title:"CoffeeScript - Motivation",view:"views/partial/slide-2.html"},{id:3,route:"/slide-3",title:"CoffeeScript - Useful things",view:"views/partial/slide-3.html"},{id:4,route:"/slide-4",title:"CoffeeScript - Functions",view:"views/partial/slide-4.html"},{id:5,route:"/slide-5",title:"CoffeeScript - Objects and Arrays",view:"views/partial/slide-5.html"},{id:6,route:"/slide-6",title:"CoffeeScript - If / Else",view:"views/partial/slide-6.html"},{id:7,route:"/slide-7",title:"CoffeeScript - Loops",view:"views/partial/slide-7.html"},{id:8,route:"/slide-8",title:"CoffeeScript - Operators",view:"views/partial/slide-8.html"},{id:9,route:"/slide-9",title:"CoffeeScript - The Existential Operator",view:"views/partial/slide-9.html"},{id:10,route:"/slide-10",title:"CoffeeScript - OOP",view:"views/partial/slide-10.html"},{id:11,route:"/slide-11",title:"CoffeeScript - Destructuring Assignment",view:"views/partial/slide-11.html"},{id:12,route:"/slide-12",title:"CoffeeScript - Switch/When/Else",view:"views/partial/slide-12.html"},{id:13,route:"/slide-13",title:"CoffeeScript - Strings",view:"views/partial/slide-13.html"},{id:14,route:"/slide-14",title:"CoffeeScript - finally few important things",view:"views/partial/slide-14.html"},{id:15,route:"/slide-15",title:"AngularJS - Introduction",view:"views/partial/slide-15.html"},{id:16,route:"/slide-16",title:"AngularJS - Arhitecture",view:"views/partial/slide-16.html"},{id:17,route:"/slide-17",title:"AngularJS - Bootstraping",view:"views/partial/slide-17.html"},{id:18,route:"/slide-18",title:"AngularJS - Templates and binding",view:"views/partial/slide-18.html"},{id:19,route:"/slide-19",title:"AngularJS - Two-way Data Binding",view:"views/partial/slide-19.html"},{id:20,route:"/slide-20",title:"AngularJS - Dependency Injection",view:"views/partial/slide-20.html"},{id:21,route:"/slide-21",title:"AngularJS - Routing & Multiple Views 1/2",view:"views/partial/slide-21.html"},{id:22,route:"/slide-22",title:"AngularJS - Routing & Multiple Views 2/2",view:"views/partial/slide-22.html"},{id:23,route:"/slide-23",title:"AngularJS - Tips and tricks 1/2",view:"views/partial/slide-23.html"},{id:24,route:"/slide-24",title:"AngularJS - Tips and tricks 2/2",view:"views/partial/slide-24.html"},{id:25,route:"/slide-25",title:"AngularJS - DEMO",view:"views/partial/slide-25.html"},{id:25,route:"/slide-25",title:"AngularJS - DEMO",view:"views/partial/slide-25.html"},{id:26,route:"/slide-26",title:"Development - Introduction",view:"views/partial/slide-26.html"},{id:27,route:"/slide-27",title:"Development - Yeoman.io - Install",view:"views/partial/slide-27.html"},{id:28,route:"/slide-28",title:"Development - Yeoman.io - From nothing",view:"views/partial/slide-28.html"},{id:29,route:"/slide-29",title:"Development - Yeoman.io - From GIT repo",view:"views/partial/slide-29.html"},{id:30,route:"/slide-30",title:"Technology used - Tnx to open-source",view:"views/partial/slide-30.html"},{id:31,route:"/slide-31",title:"Questions and answers",view:"views/partial/slide-31.html"},{id:32,route:"/slide-32",title:"Thank you for attention",view:"views/partial/slide-32.html"}],{minId:function(){return a[0].id},maxId:function(){return a[a.length-1].id},getById:function(b){return a.filter(function(a){return a.id===b})[0]},getAll:function(){return a}}})}.call(this),function(){"use strict";angular.module("angularOnCoffeeApp").filter("strReplace",function(){return function(a){return a.replace("CoffeeScript",'<img src="images/coffeescript.png" width="300">').replace("AngularJS",'<img src="images/angular.png" width="300">')}})}.call(this),function(){"use strict";angular.module("angularOnCoffeeApp").controller("DemoCtrl",["$scope","$interval","DemoREST",function(a,b,c){return a.awesomeThings=["CoffeeScript","AngularJS","HTML5 Boilerplate","Karma","Yeoman","Grunt","Bower","GitHub"],a.search="",a.model={allTasks:null},a.getAllTasks=function(b){return null==b&&(b="null"),"null"===b&&(b=c.getAllTasks()),a.model.allTasks=b},a.getAllTasks(),a.doTask=function(d){return angular.forEach(a.model.allTasks,function(a){var e;return a===d?(a.inProgress=!0,e=b(function(){return a.duration-=1,0===a.duration?(c.deleteTask(a.id),b.cancel(e)):void 0},1e3,0,!0)):void 0})},a.connectToSails=function(){var b,c;return b=io.connect("http://localhost:1337"),b.on("connect",c=function(){var c;return b.on("message",c=function(b){if(console.log(b),"task"===b.model){if("create"===b.verb)return a.$apply(function(){return a.model.allTasks.push(b.data)});if("destroy"===b.verb)return a.model.allTasks=a.model.allTasks.filter(function(a){return a.id!==b.id})}})}),b.get("/task",function(b){return a.$apply(function(){return a.getAllTasks(b)})})}}])}.call(this),function(){"use strict";angular.module("angularOnCoffeeApp").service("DemoREST",["$resource",function(a){var b,c;return c="http://localhost:1337",b=a(""+c+"/task/:id",{id:"@id"}),{getAllTasks:function(){return b.query(function(a){return a})},deleteTask:function(a){return b["delete"]({id:a})}}}])}.call(this);