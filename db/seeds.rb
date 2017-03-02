# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Admin.create(admin_id:'kw8799', admin_pw:'12345')
Navigator.create(navi_name1:'홈', navi_name2:'소개', navi_name3:'서비스', 
                 navi_name4:'인터뷰', navi_name5:'미정', navi_name6:'미정', 
                 navi_name7:'미정', navi_name8:'만나는법')
Homepage.create(heading:'코드러그 4기 지원해주셔서 감사합니다!',
                animated:'조만간 개별적으로 연락드리겠습니다.', 
                button:'지원마감',
                ani_heading: 'bounceInDown',
                ani_animated: 'bounceInUp',
                ani_button: 'bounceInUp',
                link: '',
                picture_url:'')
Homepage.create(heading:'프로그래밍이 대세라던데',
                animated:'왜 대세인지는 모르겠고....', 
                button:'코드러그란',
                ani_heading: 'bounceInLeft',
                ani_animated: 'bounceInRight',
                ani_button: 'bounceInUp',
                link: '#about-us',
                picture_url:'')
Homepage.create(heading:'컴퓨터 하나도 몰라요ㅠ',
                animated:'울지마요ㅠ 다 가르쳐 드릴게요', 
                button:'팀인터뷰',
                ani_heading: 'bounceInDown',
                ani_animated: 'bounceInUp',
                ani_button: 'fadeIn',
                link: '#our-team',
                picture_url:'')
Homepage.create(heading:'이런거 왜 해요?',
                animated:'일단 한번 해보시죠', 
                button:'만나는법',
                ani_heading: 'bounceInRight',
                ani_animated: 'bounceInLeft',
                ani_button: 'bounceInUp',
                link: '#contact',
                picture_url:'')
                
Section.create(section_title: '코드러그?', section_content: '경희대학교(회기) 비전공자 중심의 공식 프로그래밍 동아리입니다.')
Section.create(section_title: '런칭 서비스', section_content: '코드러그 멤버가 만들거나 참여한 서비스')
Section.create(section_title: '인터뷰', section_content: '동아리원들의 교과서적인 짤막 인터뷰')
Section.create(section_title: '프레스', section_content: '언론 등 외부매체에 나타난 코드러그의 모습입니다.')
Section.create(section_title: 'Clients Say About Us', section_content: 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit. Lorem ipsum dolor sit amet, consectetuer adipiscing elit')
Section.create(section_title: 'Our Blog', section_content: 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.')
Section.create(section_title: '만나는 법', section_content: '마주치면 수줍게 인사해 보아요.')

Aboutwe.create(title_left: '뭐하는 곳이에요?', title_right: '뭘 배운다는거죠?')
# 좌우측 타이틀(1)
Aboutwe.create(icon_class: 'fa-chain-broken',
               sub_title: '했던거',
               sub_content: '2014년 시작된 코드러그는 웹서비스 런칭을 목표로 하여 비전공자들이 모이는 동아리입니다.
                            모임을 통해 프로그래밍 지식을 익히고 최신 경향을 공유하며, 이를 바탕으로 외부 컨퍼런스에 참여하여 지식을 나누어 왔습니다.',
               sub_picture_url: '',
               alt: 'whatwedid',
               link_id: 'about',
               interact_factor1: 'active',
               interact_factor2: 'in')
Aboutwe.create(icon_class: 'fa-th-large',
               sub_title: '하는거',
               sub_content: '1년 활동을 통해 웹사이트를 만들고 런칭하는 것이 기본 활동입니다. HTML, CSS 등의 기본적인 웹문서 지식부터 차근차근 공부하여 JavaScript, Ruby, Python와 같은 프로그래밍 언어까지 같이 공부합니다.',
               sub_picture_url: '',
               alt: 'whatwedo',
               link_id: 'mission')
Aboutwe.create(icon_class: 'fa-users',
               sub_title: '하고픈거',
               sub_content: '프로그래밍 공부 뿐만 아니라 커뮤니티 활동을 통해 저변을 넓혀 가는 것을 지향합니다. 혼자가 아닌 여럿은 즐거울 뿐 아니라 힘을 키워줍니다.',
               sub_picture_url: '',
               alt: 'whatwewill',
               link_id: 'community')
# 좌측 서브 메뉴들(2,3,4)
Aboutwe.create(language: 'HTML & CSS', data_percent: 50)
Aboutwe.create(language: 'JavaScript', data_percent: 70)
Aboutwe.create(language: 'Ruby on rails', data_percent: 85)
Aboutwe.create(language: 'Python', data_percent: 40)
# 학습언어들(5,6,7,8)

Service.create(svc_title: '소중이닷컴', svc_content: '대한민국 최초 성인용품 가격비교 사이트', svc_link: 'http://www.sojoong2.com', pic_url: '')
Service.create(svc_title: '꿀강', svc_content: '경희대 강의평가 사이트', svc_link: 'http://www.khulgang.xyz', pic_url: '')
Service.create(svc_title: '후나', svc_content: '경희대-외대 미팅 사이트', svc_link: '', pic_url: '')

Ourteam.create(name: '이기수', major: '경영학과', saying: '2017 차기 회장님 <br> 운영진 급구')
Ourteam.create(name: '최준호', major: '경영학과', saying: '뒷방할배
옷사러 오세요')
Ourteam.create(name: '김구경', major: '국문학과', saying: 'MT의 흥을 돋우기 위해 전직 회장이 직접 춤을 추고 있다.')
Ourteam.create(name: '박재은', major: '컨벤션경영학과', saying: '대학 생활의 시작과 끝, 코드러그.
르네상스 코드러그!!
#전전회장#건배사창시자#오글오글')
Ourteam.create(name: '오은주', major: '철학과', saying: '공자님께선 프로그래밍이 중요하다고 늘 강조하셨습니다.')
Ourteam.create(name: '곽규원', major: '관광학부', saying: '솔직히 프로그래밍이 폰게임보다 더 재미있다 ㅇㅈ?')
Ourteam.create(name: '장민설', major: '화학과', saying: '평소 인내심과 끈기가 부족했는데 코딩을 통해 많은 걸 배운 것 같아요!! 어렵지 않아요!')
Ourteam.create(name: '김태양', major: '경영학과', saying: '혼자 코딩공부를 했을땐 골 아파서 사진도 찍어놨는데 코드러그 만나서 다 나았어요! 고마워요 코드러그!')
Ourteam.create(name: '최준혁', major: '경제학과', saying: '너무 부담가지지 말고 못해도 가벼운 취미로 재밌게 할 수 있어요.')
Ourteam.create(name: '이우석', major: '경영학과', saying: '내가 다 먹을거야 건들지마! 
#동방에_있는_카탄_소유주')
Ourteam.create(name: '최아영', major: '언론정보학과', saying: '프로그래밍은 언론인으로서의 덕목입니다.')
Ourteam.create(name: '이호천', major: '경영학과', saying: '인생이 막막하다구요?? 저같은 놈도 코딩을 하명서 재활했답니다. 
도전해보세요!')

Contact.create(line_num1: 'CODRUG', line_num2: '코드러그', line_num3: '경희대학교 학생회관<br>7층 715호', line_num4: '( 서울 동대문구 경희대로 23, 학생회관 715호 )')
Contact.create(sns_link: 'http://www.facebook.com/codrug', sns_class: 'fa-facebook')
Contact.create(sns_link: '#', sns_class: 'fa-twitter')
Contact.create(sns_link: '#', sns_class: 'fa-google-plus')