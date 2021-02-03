
		//유효성 검사
		var empJ = /\s/g;
		var idJ= /^[a-z0-9]{4,12}$/;
		var pwdJ= /^[A-Za-z0-9]{4,12}$/; 
		var mailJ = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
		var phoneJ = /^01([0|1|6|7|8|9]?)?([0-9]{3,4})?([0-9]{4})$/;
		var nameJ = /^[가-힣A-Za-z]{2,10}$/;
		
		
		//아이디 중복 체크
		$('#user_id').blur(function(){
			var id=$('#user_id').val();
			
			$.ajax({
				url : 'idCheck?id='+id, 
				type: 'get',
				success : function(data){
					console.log('중복 o = 1 / 중복 x = 0 : '+ data);
					
					if(data==0){
						if(idJ.test(id)){
							$('#id_check').text('아이디를 사용하실 수 있습니다');
							$('#id_check').css('color','gray');
							//$('#reg_submit').attr('enabled','true');
						}
						else if(id==''){
							$('#id_check').text('아이디를 입력해주세요.');
							$('#id_check').css('color','red');
							//$('#reg_submit').attr('disabled','true');
						}
						else{
							$('#id_check').text('아이디는 소문자와 숫자 4~12자리만 가능합니다.');
							$('#id_check').css('color','red');
							//$('#reg_submit').attr('disabled','true');
						}
					}
					else{

						$('#id_check').text('사용중인 아이디입니다.');
						$('#id_check').css('color','red');
						//$('#reg_submit').attr('disabled','true');
					}
				},
				error : function(){
					console.log('error 발생');
				}
			});
		});
		
		
		//비밀번호 유효성 검사
		//올바르게 작성되었는지
		$('#pwd').blur(function(){
			if(pwdJ.test($('#pwd').val())){
				console.log('true');
				$('#pwd_check').text('');
			}
			else{
				console.log('false');
				$('#pwd_check').text('숫자 또는 문자로만 4~12자리 입력해주세요.');
				$('#pwd_check').css('color','red');
			}
		});
		//비밀번호 일치 확인
		$('#re_pwd').blur(function(){
			if($('#pwd').val() != $(this).val()){
				$('#re_pwd_check').text('비밀번호가 일치하지 않습니다.');
				$('#re_pwd_check').css('color','red');
			}
			else{
				$('#re_pwd_check').text('');
			}
		});
		
		// 휴대전화
		$('#phone').blur(function(){
			if(phoneJ.test($(this).val())){
				console.log(nameJ.test($(this).val()));
				$('#phone_check').text('');
			} else {
				$('#phone_check').text('휴대폰번호를 확인해주세요 :)');
				$('#phone_check').css('color', 'red');
			}
		});
		
		// 이름에 특수문자 들어가지 않도록 설정
		$('#name').blur(function() {
			if (nameJ.test($(this).val())) {
					console.log(nameJ.test($(this).val()));
					$('#name_check').text('');
			} else {
				$('#name_check').text('이름을 확인해주세요');
				$('#name_check').css('color', 'red');
			}
		});
		
		
		