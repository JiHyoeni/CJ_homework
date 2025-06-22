# CJ_Homework
- 빌드 및 실행 방법
 : 데이터 수정
    > /CJ_Homework/Data/products.json 데이터 수정
 : 앱 실행
    > cmd+R
 : 테스트 실행
    > cmd+U

- UnitTest
 ProductViewModel Unit Test
 : Decoding case fail
    > CJ_HomeworkTests/CJ_HomeworkTests.swift > 15 line json 수정하여 fail case 확인
 : testGetRandomProducts case fail
    > CJ_HomeworkTests/CJ_HomeworkTests.swift > Product의 id로 중복 체크하기 때문에 id 변경 후 테스트
    
- UITest
 ProductDetail에 웹뷰가 로드 되었는지 확인
 ProductDetail에 뒤로가기 버튼이 있는지 확인(accessibilityLabel로 확인)
 : ProductDetail에 웹뷰가 로드 되었는지 확인
    > /CJ_Homework/Data/products.json 파일 이름을 변경 (json 데이터를 읽어오지 못하도록)
 : ProductDetail에 뒤로가기 버튼이 있는지 확인
    > /CJ_Homework/View/ProductDetail.swift 33 line accessibilityLabel 이름 변경 (accessibilityLabel 로 UI 있는지 체크하기 때문)
    
- 사용한 기술/패턴/라이브러리
 : SwiftUI
 : MVVM
 : WebKit
 : XCTest
 
- 개발 시간
 1. 필수요구사항
    :   약 2시간
 2. 가산점 항목(UnitTest, UITest, UI)
    :   약 1시간
