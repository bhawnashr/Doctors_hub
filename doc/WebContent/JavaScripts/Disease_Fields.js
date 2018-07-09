
function validate(){  
var dise=document.form1.dise.value;  
if (dise==null || name==""){  
  alert("Please provide Disease name ");  
 return false;  
}  
}
function verifyUsername(txtUsername)
{
var x = txtUsername;

window.open('verify_disease.jsp?dise='+x,null,"height=300,width=400,status=yes,toolbar=no");}


