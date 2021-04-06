<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 한글 폰트 -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Black+And+White+Picture&family=Black+Han+Sans&family=Cute+Font&family=Do+Hyeon&family=Dokdo&family=East+Sea+Dokdo&family=Gaegu&family=Gamja+Flower&family=Gothic+A1:wght@200&family=Gugi&family=Hi+Melody&family=Jua&family=Kirang+Haerang&family=Nanum+Brush+Script&family=Nanum+Gothic&family=Nanum+Gothic+Coding&family=Nanum+Myeongjo&family=Nanum+Pen+Script&family=Noto+Sans+KR:wght@300&family=Noto+Serif+KR:wght@300&family=Poor+Story&family=Single+Day&family=Song+Myung&family=Stylish&family=Sunflower:wght@300&family=Yeon+Sung&display=swap" rel="stylesheet">
	<script class="u-script" type="text/javascript" src="<%=request.getContextPath()%>/resources/js/easyPieChart.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script> 
    
    <!-- template3 css -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/template3.css?ver=3">
    <title>portfolio</title>
    
</head>
<body>
<div class="wrap">
    <!--전체 body-->
    <div class="container">
        <!--div1(left box)-->
        <div class="left">
            <!-- 개인정보, 관심분야, 장점, 자기소개 -->
            <div class="myInfo">
                <div class="myInfo_upper">
                    <!-- 사진 div -->
                    <div class="picBox">
                        <img src="#">
                    </div>
                    <!-- 개인정보 div -->
                    <div class="infoBox">
                        <!-- 이름 -->
                        <div class="name"> 
                            <div><h3>홍길동</h3></div>
                        </div>
                        <!-- contact -->
                        <div class="contact">
                            <div><p><span><img class="contactIcon" src="<%=request.getContextPath()%>/resources/images/phone2.png" alt="default_img"></span>서울특별시</p></div>
                            <div><p>github.com/gd123456</p></div>
                            <div><p>blog.naver.com/rlfehd1234</p></div>
                            <div><p>217000000@handong.edu</p></div>
                            <div><p>010.1234.1234</p></div>
                        </div>
                    </div>
                </div>
                <!-- 관심분야,장점,자기소개 -->
                <div class="myInfo_under">
                    <!-- 관심분야 -->
                    <div class="interest">
                        <h6>관심분야</h6>
                        <div> <p>FrontEnd</p> </div>
                        <div> <p>Server</p> </div>
                        <div> <p>BackEnd</p> </div>
                    </div>
                    <!-- 장점 -->
                    <div class="advantage">
                        <div> <p>#자신감</p> </div>
                        <div> <p>#책임감</p> </div>
                        <div> <p>#꼼꼼함</p> </div>
                        <div> <p>#밝음</p> </div>
                        <div> <p>#용기있음</p> </div>
                    </div>
                    <!-- 자기소개 -->
                    <div class="introduce">
                        <div>
                            <p>안녕하세요.저는 디자인 감성을 가진 개발자 이주연입니다. 웹/앱 프론트엔드 개발과 UX/UI 디자인에 관심이 있습니다. 저는 도전을 두려워하지 않는 개발자가 되고 싶습니다.</p>
                        </div>
                    </div>
                </div>
            </div>
            <!-- skill,graduation,ceritificate, award -->
            <div class="sgca">
                <div class="skill">
                    <h6>SKILL</h6>
                    <div class="skill_content">
                       <div>
                            <div class="rangeName"><p>C</p></div>
                            <div class="rangeBox"><input type="range" min="0" max="100" value="75" class="range" /></div>
                            <div><p>75%</p></div>
                        </div>
                        <div>
                            <div class="rangeName"><p>Java</p></div>
                            <div class="rangeBox"><input type="range" min="0" max="100" value="75" class="range" /></div>
                            <div><p>75%</p></div>
                        </div>
                        <div>
                            <div class="rangeName"><p>ANDROID</p></div>
                            <div class="rangeBox"><input type="range" min="0" max="100" value="75" class="range" /></div>
                            <div><p>75%</p></div>
                        </div>
                        <div>
                            <div class="rangeName"><p>PHP</p></div>
                            <div class="rangeBox"><input type="range" min="0" max="100" value="75" class="range" /></div>
                            <div><p>75%</p></div>
                        </div>
                        <div>
                            <div class="rangeName"><p>JAVASCRIPT</p></div>
                            <div class="rangeBox"><input type="range" min="0" max="100" value="75" class="range" /></div>
                            <div><p>75%</p></div>
                        </div> 
                    </div>
                </div>
                <div class="graduation">
                    <h6>GRADUATION</h6>
                    <div class="graduation_content">
                        <div>
                            <div><p>2017/03 ~ 2021/08</p></div>
                            <div><p>한동대학교</p></div>
                            <div><p>컴퓨터 공학+UX 공학</p></div>
                        </div>
                        <div>
                            <div><p>2017/03 ~ 2021/08</p></div>
                            <div><p>한동대학원</p></div>
                        </div>
                    </div>
                </div>
                <!-- ceritificate, award -->
                <div class="caBox">
                    <div class="ceritificate">
                        <h6>CERITIFICATE</h6>
                        <div class="ceritificate_content">
                            <div>
                                <div><p>2019/07<p></div>
                                <div><p>TOEIC</p></div>
                                <div><p>800</p></div>
                            </div>
                            <div>
                                <div><p>2019/07</p></div>
                                <div><p>Illustrator</p></div>
                                <div><p>900</p></div>
                            </div>
                            <div>
                                <div><p>2019/07</p></div>
                                <div><p>Photoshop</p></div>
                                <div><p>900</p></div>
                            </div>
                        </div>
                    </div>
                    <div class="award">
                        <h6>AWARD</h6>
                        <div class="award_content">
                            <div>
                                <div><p>2019/07</p></div>
                                <div><p>SW페스티벌</p></div>
                                <div><p>우수상</p></div>
                            </div>
                            <div>
                                <div><p>2019/07</p></div>
                                <div><p>AppDev</p></div>
                                <div><p>장려상</p></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <div class="line"> </div>
        <!-- div 2(right box) -->
        <div class="right">
            <!-- activity div -->
            <div class="activity">
                <h6>CAREER / ACTIVITY</h6>
                <div class="activity_content">
                    <div>
                        <div>
                            <div><p>SBS A&T</p></div>
                            <div><p>인턴</p></div>
                            <div><p>2020/06 ~ 2020/08</p></div>
                            <div>
                                <p>동상이몽2/런닝맨 CG 작업을 했고, 시흥 웨이브파크 펍브랜딩을 했습니다. 정글의 법칙 테마파크 MD 상품기획 + 디자인을 했습니다. 동상이몽2/런닝맨 CG 작업을 했고, 시흥 웨이브파크 펍브랜딩을 했습니다.</p>
                            </div>
                        </div>
                        <div>
                            <div><p>소울</p></div>
                            <div><p>동아리</p></div>
                            <div><p>2020/06 ~ 2020/08</p></div>
                            <div>
                                <p>동상이몽2/런닝맨 CG 작업을 했고, 시흥 웨이브파크 펍브랜딩을 했습니다. </p>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div>
                            <div><p>SW봉사단</p></div>
                            <div><p>봉사활동</p></div>
                            <div><p>2020/06 ~ 2020/08</p></div>
                            <div>
                                <p>동상이몽2/런닝맨 CG 작업을 했고, 시흥 웨이브파크 펍브랜딩을 했습니다. 정글의 법칙 테마파크 MD 상품기획 + 디자인을 했습니다. </p>
                            </div>
                        </div>
                        <div>
                            <div><p>HARVARD</p></div>
                            <div><p>교환학생</p></div>
                            <div><p>2020/06 ~ 2020/08</p></div>
                            <div>
                                <p>동상이몽2/런닝맨 CG 작업을 했고, 시흥 웨이브파크 펍브랜딩을 했습니다. 정글의 법칙 테마파크 MD 상품기획 + 디자인을 했습니다. 동상이몽2/런닝맨 CG 작업을 했고, 시흥 웨이브파크 펍브랜딩을 했습니다.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- project div -->
	        <div class="project">
                <h6>PROJECT</h6>
                <div class="project_content">
                    <div>
                        <div>
                            <div><p>Online Application System</p></div>
                            <div><p>2020/06 ~ 2020/08</p></div>
                            <div class="project_skill">
                                <div><p>Java</p></div>
                                <div><p>Spring</p></div>
                                <div><p>JAVASCRIPT</p></div>
                            </div>
                            <div>
                                <p>OAS는 SW 사업단을 위해 만든 신청폼 관리 서비스입니다. 관리자는 한번에 신청폼과 제출자를 관리할 수 있습니다. OAS는 SW 사업단을 위해 만든 신청폼 관리 서비스입니다. 관리자는 한번에 신청폼과 과제를 관리할 수 있습니다.</p>
                            </div>
                        </div>
                        <div>
                            <div><p>Online Application System<span><a href="https://www.naver.com/"><img class="urlIcon" src="<%=request.getContextPath()%>/resources/images/phone2.png" alt="default_img"></a></span></p></div>
                            <div><p>2020/06 ~ 2020/08</p></div>
                            <div class="project_skill">
                                <div><p>Java</p></div>
                                <div><p>Spring</p></div>
                                <div><p>JAVASCRIPT</p></div>
                            </div>
                            <div>
                                <p>OAS는 SW 사업단을 위해 만든 신청폼 관리 서비스입니다. 관리자는 한번에 신청폼과 제출자를 관리할 수 있습니다. OAS는 SW 사업단을 위해 만든 신청폼 관리 서비스입니다. 관리자는 한번에 신청폼과 과제를 관리할 수 있습니다.</p>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div>
                            <div><p>Online Application System</p></div>
                            <div><p>2020/06 ~ 2020/08</p></div>
                            <div class="project_skill">
                                <div><p>Java</p></div>
                                <div><p>Spring</p></div>
                                <div><p>JAVASCRIPT</p></div>
                            </div>
                            <div>
                                <p>OAS는 SW 사업단을 위해 만든 신청폼 관리 서비스입니다. 관리자는 한번에 신청폼과 제출자를 관리할 수 있습니다. OAS는 SW 사업단을 위해 만든 신청폼 관리 서비스입니다. 관리자는 한번에 신청폼과 과제를 관리할 수 있습니다.</p>
                            </div>
                        </div>
                        <div>
                            <div><p>Online Application System</p></div>
                            <div><p>2020/06 ~ 2020/08</p></div>
                            <div class="project_skill">
                                <div><p>Java</p></div>
                                <div><p>Spring</p></div>
                                <div><p>JAVASCRIPT</p></div>
                            </div>
                            <div>
                                <p>OAS는 SW 사업단을 위해 만든 신청폼 관리 서비스입니다. 관리자는 한번에 신청폼과 제출자를 관리할 수 있습니다. OAS는 SW 사업단을 위해 만든 신청폼 관리 서비스입니다. 관리자는 한번에 신청폼과 과제를 관리할 수 있습니다.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    <!--/ 전체 body -->
    </div> 
    
</div>
</body>
</html>