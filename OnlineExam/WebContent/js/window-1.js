
            function mAlert(str){
            var msgw,msgh,bordercolor;
            msgw=50;//提示窗口的宽度
            msgh=50;//提示窗口的高度
            bordercolor="#336699";//提示窗口的边框颜色
            titlecolor="#99CCFF";//提示窗口的标题颜色
            var sWidth,sHeight;
            sWidth=document.body.offsetWidth;
            sHeight=document.body.offsetHeight;
            var bgObj=document.createElement("div");
            bgObj.setAttribute('id','bgDiv');
            bgObj.style.position="absolute";
            bgObj.style.top="10";
            bgObj.style.background="#777";
            bgObj.style.filter="progid:DXImageTransform.Microsoft.Alpha(style=3,opacity=25,finishOpacity=75";
            bgObj.style.opacity="0.6";
            bgObj.style.left="80";
            bgObj.style.width=sWidth + "px";
            bgObj.style.height=sHeight + "px";
            document.body.appendChild(bgObj);
            var msgObj=document.createElement("div")
            msgObj.setAttribute("id","msgDiv");
            msgObj.setAttribute("align","center");
            msgObj.style.position="absolute";
            msgObj.style.background="white";
            msgObj.style.font="12px/1.6em Verdana, Geneva, Arial, Helvetica, sans-serif";
            msgObj.style.border="1px solid " + bordercolor;
            msgObj.style.width=msgw + "px";
            msgObj.style.height=msgh + "px";
          msgObj.style.top=(document.documentElement.scrollTop + (sHeight-msgh)/2) + "px";
          msgObj.style.left=(sWidth-msgw)/2 + "px";
          var title=document.createElement("h4");
          title.setAttribute("id","msgTitle");
          title.setAttribute("align","right");
          title.style.margin="0";
          title.style.padding="3px";
          title.style.background=bordercolor;
          title.style.filter="progid:DXImageTransform.Microsoft.Alpha(startX=20, startY=20, finishX=100, finishY=100,style=1,opacity=75,finishOpacity=100);";
          title.style.opacity="0.75";
          title.style.border="1px solid " + bordercolor;
          title.style.height="18px";
          title.style.font="12px Verdana, Geneva, Arial, Helvetica, sans-serif";
          title.style.color="white";
          title.style.cursor="pointer";
          title.innerHTML="关闭";
          title.onclick=function(){
            document.body.removeChild(bgObj);
        document.getElementById("msgDiv").removeChild(title);
        document.body.removeChild(msgObj);
        }/*标题内容*/
          document.body.appendChild(msgObj);
          document.getElementById("msgDiv").appendChild(title);
          var txt=document.createElement("p");
          txt.style.margin="1em 0"
          txt.setAttribute("id","msgTxt");
          txt.style.cursor="pointer";
          txt.innerHTML=str;
          txt.onclick=function(){
              document.body.removeChild(bgObj);
          document.getElementById("msgDiv").removeChild(txt);
          document.body.removeChild(msgObj);
          }/*文本内容*/
      document.getElementById("msgDiv").appendChild(txt);
	  document.getElementById("msgDiv").style.fontSize="16px";
document.getElementById("msgDiv").style.color="#f43b3b";
    

      }