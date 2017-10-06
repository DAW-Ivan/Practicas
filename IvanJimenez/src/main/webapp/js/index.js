/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


function registro(){
	var dia=null;
	var a=null;
	for (var i = 1; i <= 31; i++) {
		dia+='<option value="'+i+'">'+i+'</option>';
	}
	document.getElementById("dia").innerHTML=dia;

	for(var i = 1950;i <= 2002; i++){
		a+='<option value="'+i+'">'+i+'</option>';
	}
	document.getElementById("año").innerHTML=a;

}