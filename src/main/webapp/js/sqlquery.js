function getData()
{
    //创建新连接
    var ConnDB = new ActiveXObject("ADODB.Connection");
    //连接用户名账号密码
    ConnDB.open("Provider=MSDAORA.1;Password='liujj_123';User ID='liujj';Data Source='(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 10.128.21.89)(PORT = 15500)))(CONNECT_DATA =(SERVICE_NAME = essdb)))';Persist Security Info=True");
    var rs = new ActiveXObject("ADODB.Recordset");
    rs.open("select * from user", con);
}