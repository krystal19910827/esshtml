function showTime(){
    nowtime=new Date();
    year=nowtime.getFullYear();
    month=nowtime.getMonth()+1;
    date=nowtime.getDate();
    document.getElementById("mytime").innerText=year+"-"+month+"-"+date+" "+nowtime.toTimeString().substring(0, 9);
}

setInterval("showTime()",1000);