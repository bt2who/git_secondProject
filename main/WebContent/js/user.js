//중복아이디체크
$('#id').focusout(function(){
	
	 var id = $("#id").val();
	
	 if(!$('#id').val()){
			$('#idDiv').html("아이디 입력");
			$('#idDiv').css('color','red');
			$('#idDiv').css('font-size','8pt');
			$('#idDiv').css('font-weight','bold');
	}else if(id.length < 3 || id.length > 10)
		
	{		$('#idDiv').html("아이디4자리 이상 10자리 이하 입력");
			$('#idDiv').css('color','red');
			$('#idDiv').css('font-size','8pt');
			$('#idDiv').css('font-weight','bold');
			}else{
				$.ajax({
					url: '/main/user/checkId.jsp',
					type:'post',
					data: 'id='+$('#id').val(),
					dataType:'text',
					success: function(data){
						data= data.trim();
						if(data == 'exist'){
							$('#idDiv').text("중복된 아이디"); /*html도 되는데 한번물어봐야됨*/
							$('#idDiv').css('color','red');
							$('#idDiv').css('font-size','8pt');
							$('#idDiv').css('font-weight','bold');
						}else if(data =='non_exist'){
							
							$('#check').val($('#id').val());   //중복체크안할시
							
							$('#idDiv').text("사용 가능");
							$('#idDiv').css('color','blue');
							$('#idDiv').css('font-size','8pt');
							$('#idDiv').css('font-weight','bold');
						}
					},
					error: function(err){
					console.log(err);
				} 
		});		
	}
});

//회원가입
$('#writeBtn').click(function(){

	$('#idDiv').empty();
	$('#pwdDiv').empty();
	$('#nameDiv').empty();
	
		if($('input[name=id]').val() =='' ){
		$('#idDiv').html("아이디 입력");
		$('#idDiv').css('color','red');
		$('#idDiv').css('font-size','8pt');
		$('#idDiv').css('font-weight','bold');
			}
			else if($('input[name=pwd]').val() =='' ){
			$('#pwdDiv').html("비밀번호 입력");
			$('#pwdDiv').css('color','red');
			$('#pwdDiv').css('font-size','8pt');
			$('#pwdDiv').css('font-weight','bold');
				}
				else if($('input[name=pwd]').val() !=$('input[name=repwd]').val() ){
				$('#pwdDiv').html("비밀번호 불일치");
				$('#pwdDiv').css('color','red');
				$('#pwdDiv').css('font-size','8pt');
				$('#pwdDiv').css('font-weight','bold');
					}
					else if($('input[name=name]').val() ==''){
			$('#nameDiv').html("이름 입력");
			$('#nameDiv').css('color','red');
			$('#nameDiv').css('font-size','8pt');
			$('#nameDiv').css('font-weight','bold');
		}
					else if($('input[name=id]').val() !=$('input[name=check]').val() ){
					$('#idDiv').html("중복체크 요망");
					$('#idDiv').css('color','red');
					$('#idDiv').css('font-size','8pt');
					$('#idDiv').css('font-weight','bold');
	
	
						}else{
							alert('유효성 검사 완료.'+'\n'+'index.jsp로 이동하겠습니다.');
							$('form[name=create]').submit();
						
						}
						
});

    