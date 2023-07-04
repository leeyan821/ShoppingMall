# ShoppingMall
사용자 입장 쇼핑몰 기본 기능
주제 : 쇼핑몰 // 
      사용자 입장의 쇼핑몰 // 
      기능 : 로그인, 아이디/비밀번호 찾기, 회원가입-아이디 중복 체크, 항목별 제품 조회.선택.구매, 회원정보 조회.수정, 장바구니 조회.삭제.구매, 주문내역 조회.주문취소.수정 // 
      소스 : 화면관련 - webcontent의 jsp/ webcontent의css,images/ webcontent의 result의 jsp // 
      내부 - shop.controller/ shop.dao / shop.service / shop.vo // 
      +) CartAddVO : 장바구니 추가 관련 CartVO : 장바구니 화면 관련 CustomVO : 주문제작 관련 MemberVO : 회원 관련 OrderVO : 구매 관련 ProdVO : 제품 관련 //
      +) MemberService : 회원 관련 - MemberDAO와 연결 MypageService : 마이페이지 관련 - MypageDAO와 연결 ProductService : 제품 관련 - ProductDAO와 연결 //
      
      -----------------------------------------------------------------------------------------------------------------------------------------------
      
      
      
      <shop.controller>
      CartController : 마이페이지 장바구니 상품 저장하여 나열하게 함(cart.jsp로 이동)
      CartDeleteController : 장바구니(삭제 후 장바구니 페이지로 이동), 주문상품 삭제(삭제 후 주문내역으로 이동)
      CartOrderController : 장바구니에 추가되어있는 선택 제품 정보, 주문인 정보 받아와서 결제창으로 이동
      CartPlusController : 로그인 했을 경우만 선택한 제품 장바구니에 추가, 선택한 제품의 정보 얻어 구매 결제창으로 전달(선택한 수량보다 보유한 수량이 적은 경우 추가, 구매불가)
      CustomPlusController : 커스텀 제품 구매
      CustomOrderController : 커스텀 제품 선택 시 오류 찾기 및 결제 화면으로 선택한 정보 전달.(cusOrderList.jsp로 이동 / 오류시 customOrder.jsp로 이동)
      IdChkController : 회원가입시 아이디 중복 체크
      JoinController : 회원가입 진행(중복 아이디 사용 시 가입 불가)
      LoginController : 로그인 진행(모두 입력하지 않은 경우, 가입하지 않은 경우 로그인 불가)
      LogoutController : 로그아웃 진행
      MailChkController : 이메일 입력하여 아이디/비밀번호 찾기 진행(가입한 이메일 아닐경우 사용 불가)
      MypageController : 마이페이지의 회원 정보, 회원정보 수정으로 회원 정보 전달하며 이동
      OrderUpdateController : 주문상품의 주소, 수량 변경한 정보 얻어와서 주문 정보 변경하기
      OrderController : 주문내역 선택 시 주문한 상품정보를 얻어와 주문내역에 나열하도록 전달/ 주문내역의 상품 수정 선택 시 선택 제품의 정보 얻어 전달
      OrderPlusController : 최종 결제( 결제 완료 되면 주문 수량만큼 보유 수량 감소),(결제 후 주문 내역으로 이동)
      ProdController : 카테고리 별 제품 정보 얻어 일반제품, 추가제품, 주문제작, 베스트 제품 페이지로 전달   
      ProdFindController : 제품 선택시 그 제품의 정보 얻어 전달
      UpdateController : 회원 정보 수정 및 수정한 회원 정보 전달

      <jsp>
      acc.jsp : 추가 제품 나열된 페이지
      best.jsp : 베스트 8 상품 나열된 페이지
      cart.jsp : 장바구니에 추가된 상품 나열된 페이지
      cusOrderList.jsp : 주문제작 상품 결제창
      custom.jsp : 주문제작 설명 페이지
      customOrder.jsp : 주문제작 상품 선택 페이지
      findMember.jsp : 아이디/비밀번호 찾는 페이지
      footer.jsp : 페이지 아래의 footer
      join.jsp : 회원가입 페이지
      joinagree.jsp : 약관 동의 페이지
      logIn.jsp : 로그인 페이지
      main.jsp : 메인 페이지
      mainHeader.jsp : 페이지 위의 header
      memberUpdate.jsp : 회원 정보 수정 페이지
      mypage.jsp : 마이페이지 첫 화면 - 회원 정보 페이지
      mypageHeader.jsp : 마이페이지 위의 header
      order.jsp : 제품 결제창
      orderList.jsp : 마이페이지의 주문내역 - 주문한 상품이 나열된 페이지
      orderUpdate.jsp : 주문 상품 정보 수정 - 주문 취소 및 배송지/수량 변경
      prodChoose.jsp : 선택한 상품의 설명 및 이 상품의 수량이나 추가 제품을 선택해 장바구니에 추가하거나 구매할 수 있는 페이지
      product.jsp : 일반 판매 제품이 나열된 페이지
      sale.jsp : 세일상품 페이지-현재 존재하지 않기에 none만 표시  

      /result/
      accError.jsp : 추가 상품 선택시 상품 수 부족할 경우 출력되는 페이지
      joinOutput.jsp : 존재하는 아이디로 가입할 경우, 가입이 완료된 경우의 결과를 보여주는 페이지
      orderDelete.jsp : 주문 취소하는 경우 출력되는 페이지
      prodAdd.jsp : 장바구니에 상품을 추가하는 경우, 로그인이 필요한 경우 출력되는 페이지
      purchase.jsp : 구매하려는 제품수가 부족한 경우, 결제가 완료된 경우 출력되는 페이지

      <shop.vo>
      CartAddVO : 장바구니 추가 관련 VO
      CartVO : 장바구니 화면 관련 VO
      CustomVO : 주문제작 관련 VO
      MemberVO : 회원 관련 VO
      OrderVO : 구매 관련 VO
      ProdVO : 제품 관련 VO

      <shop.service>
      MemberService : 회원 관련(로그인, 회원 정보 전달, 회원가입, 아이디/비밀번호 찾기) 
      MypageService : 마이페이지 관련(회원 정보 수정, 장바구니 제품정보 전달, 장바구니 삭제, 주문 취소, 주문내역 제품정보 전달,
                                      주문 상품 정보 변경, 주문내역 상품 선택시 선택한 상품 정보 전달)
      ProductService : 제품 관련 - ProductDAO와 연결

      <shop.dao>
      JdbdDAO : database 연결, close 설정

      MemberDAO : 로그인 결과 전달, 회원정보 전달, 작성된 정보로 회원가입, 입력된 메일을 지닌 회원의 아이디, 비밀번호 전달

      MypageDAO : 회원정보 수정, 장바구니에 표시될 제품 정보 전달, 장바구니 제품 삭제, 주문 제품 삭제(삭제 시 삭제 할 상품의 보유 수량 변경),
                  주문내역에 표시될 제품 정보 전달, 주문 제품의 주소와 수량 수정(수량 변경 시 제품의 보유수량도 변경),
                  주문 내역 제품 선택 시 선택한 제품 정보 전달

      ProductDAO : 일반 제품들의 정보 전달, 선택한 제품의 정보 전달, 마지막에 장바구니에 저장된 상품의 번호를 불러오고 그 다음번호로 장바구니 데이터에 제품 추가,
                   추가제품 선택 시 추가제품의 수량을 체크해서 수량이 있으면 추가제품의 정보 전달, 마지막에 주문된 상품의 번호를 불러오고 그 다음 번호로 주문 데이터에 제품 추가,
                   선택한 제품 수량만큼 보유 수량 수정, 추가제품들의 정보 전달, 구매된 상품의 수량이 많은 순으로 정보 전달, 구매된 수량이 많은 순으로 정렬된 리스트를 받아서
                   순서대로 8개의 상품 정보 전달, 주문제작 제품 정보 전달, 선택한 제품의 수량이 보유량보다 많은 경우와 아닌 경우 결과 전달, 주문제작 제품에서 선택한 제품의 정보 전달
