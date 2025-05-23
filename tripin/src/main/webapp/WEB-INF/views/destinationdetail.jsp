<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="loginUserId" value="${sessionScope.loginUser.userId}" />
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <title>Tripin - 여행지 상세</title>

  <!-- 공통 CSS: Tailwind + 외부 css -->

  <!-- 외부 CSS -->
  <link href="/tripin/resources/css/destinationdetail.css" rel="stylesheet" type="text/css">

  <!-- 구글 폰트 -->
  <link href="https://fonts.googleapis.com/css2?family=Pacifico&display=swap" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400;500;700&display=swap" rel="stylesheet">

  <!-- 아이콘 -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/remixicon/4.6.0/remixicon.min.css">

  <!-- jQuery -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

  <!-- 외부 JS -->
  <script type="text/javascript" src="/tripin/resources/js/destinationdetail.js" defer></script>
  
    <script src="https://cdn.tailwindcss.com/3.4.16"></script>
    
   
  <script>
    tailwind.config = {
      theme: {
        extend: {
          colors: {
            primary: '#4F46E5',
            secondary: '#10B981'
          },
          borderRadius: {
            'none': '0px',
            'sm': '4px',
            DEFAULT: '8px',
            'md': '12px',
            'lg': '16px',
            'xl': '20px',
            '2xl': '24px',
            '3xl': '32px',
            'full': '9999px',
            'button': '8px'
          }
        }
      }
    }
  </script>
</head>
<body class="bg-white font-['Noto Sans KR']"
      data-name="${fn:escapeXml(name)}" data-contentid="${fn:escapeXml(contentId)}" data-context-path="${pageContext.request.contextPath}"    data-login-user-id="${loginUserId}">

  <!-- ✅ 상단 고정 네비게이션 -->
   <header class="bg-white shadow-sm sticky top-0 z-50">
        <div class="container mx-auto px-4 py-3 flex items-center justify-between">
            <div class="flex items-center">
                <a href="${pageContext.request.contextPath}/mainpage" class="font-['Pacifico'] text-primary text-2xl">Tripin</a>
                <nav class="ml-8 hidden md:flex">
                    <a href="${pageContext.request.contextPath}/mainpage" 
   class="px-4 py-2 text-gray-700 font-medium "> 홈</a>
                    <a href="#" class="px-4 py-2 text-gray-700 hover:text-primary font-medium">트리비와 대화하기</a>
                    <a href="#" class="px-4 py-2 text-gray-700 hover:text-primary font-medium">테마여행</a>
                    <a href="${pageContext.request.contextPath}/destinationdetail" class="px-4 py-2 text-primary hover:text-primary font-semibold border-b-2 border-primary hover:text-primary">여행지 상세</a>
              
                </nav>
            </div>
            <div class="flex items-center space-x-4">
                <div class="relative hidden md:block">
                    <input type="text" class="search-input bg-gray-100 pl-10 pr-4 py-2 rounded-full text-sm border-none w-64" placeholder="여행지, 테마 검색">
                    <div class="absolute left-3 top-1/2 transform -translate-y-1/2 w-5 h-5 flex items-center justify-center text-gray-500">
                        <i class="ri-search-line"></i>
                    </div>
                </div>
                <a href="#" class="text-gray-700 hover:text-primary">
                    <div class="w-10 h-10 flex items-center justify-center">
                        <i class="ri-user-line ri-lg"></i>
                    </div>
                </a>
                <button class="bg-primary text-white px-4 py-2 !rounded-button whitespace-nowrap hidden md:block">로그인</button>
                <div class="w-10 h-10 flex items-center justify-center md:hidden text-gray-700">
                    <i class="ri-menu-line ri-lg"></i>
                </div>
            </div>
        </div>
    </header>

  <!-- ✅ 메인 검색 화면 -->
  <section id="searchSection" class="relative z-10 flex flex-col items-center justify-center h-screen">
    <img src="${pageContext.request.contextPath}/resources/images/sky1.jpg" alt="배경 이미지" class="absolute inset-0 w-full h-full object-cover z-0" />
    <div class="absolute inset-0 bg-white/40 backdrop-blur-sm z-0"></div>

    <img src="${pageContext.request.contextPath}/resources/images/tripin_logo.png" alt="Tripin 로고" class="w-[300px] mb-10 z-10" />
    <div class="relative w-full max-w-[900px] z-10">
      <input id="mainSearch" type="text" placeholder="상세 여행지를 입력하세요." class="w-full px-8 py-5 text-xl border border-gray-300 rounded-full shadow text-center focus:outline-none focus:ring-2 focus:ring-primary pr-16" />
      <button id="searchBtn" class="absolute right-4 top-1/2 transform -translate-y-1/2 text-gray-500 hover:text-primary">
        <i class="ri-search-line text-2xl"></i>
      </button>
    </div>
    <div class="mt-8 flex flex-wrap justify-center gap-4 z-10">
      <a href="#" class="px-5 py-2 bg-primary text-white rounded-full hover:bg-primary/90">#경복궁</a>
      <a href="#" class="px-5 py-2 bg-primary text-white rounded-full hover:bg-primary/90">#제주도</a>
      <a href="#" class="px-5 py-2 bg-primary text-white rounded-full hover:bg-primary/90">#해운대</a>
      <a href="#" class="px-5 py-2 bg-primary text-white rounded-full hover:bg-primary/90">#남산타워</a>
      <a href="#" class="px-5 py-2 bg-primary text-white rounded-full hover:bg-primary/90">#전주한옥마을</a>
      <a href="#" class="px-5 py-2 bg-primary text-white rounded-full hover:bg-primary/90">#강릉</a>
      <a href="#" class="px-5 py-2 bg-primary text-white rounded-full hover:bg-primary/90">#속초</a>
    </div>
  </section>

 
  <!-- ✅ 여행지 상세 화면 (숨겨진 영역, JS로 전환) -->
 
  <section id="detailSection" class="w-full bg-white py-12 hidden">
 <div class="max-w-screen-lg mx-auto px-4 relative">


<div class="mt-24 mb-12 text-center space-y-4 -translate-y-16">
  <!-- 검색창 -->
  <div class="relative w-full mt-20">
    <input id="mainSearch" type="text" placeholder="상세 여행지를 입력하세요."
      class="w-full px-8 py-5 text-xl border border-gray-300 rounded-full shadow text-center focus:outline-none focus:ring-2 focus:ring-primary pr-16 bg-white" />
    <button id="searchBtn"
      class="absolute right-4 top-1/2 transform -translate-y-1/2 text-gray-500 hover:text-primary">
      <i class="ri-search-line text-2xl"></i>
    </button>
  </div>

  <!-- ✅ 해시태그도 같이 안에 포함 (relative 아님) -->
  <div class="!mt-16 flex flex-wrap justify-center gap-3">
    <a href="#" class="px-5 py-2 bg-primary text-white rounded-full hover:bg-primary/90">#광주</a>
    <a href="#" class="px-5 py-2 bg-primary text-white rounded-full hover:bg-primary/90">#경복궁</a>
    <a href="#" class="px-5 py-2 bg-primary text-white rounded-full hover:bg-primary/90">#제주도</a>
    <a href="#" class="px-5 py-2 bg-primary text-white rounded-full hover:bg-primary/90">#해운대</a>
    <a href="#" class="px-5 py-2 bg-primary text-white rounded-full hover:bg-primary/90">#남산타워</a>
    <a href="#" class="px-5 py-2 bg-primary text-white rounded-full hover:bg-primary/90">#전주한옥마을</a>
    <a href="#" class="px-5 py-2 bg-primary text-white rounded-full hover:bg-primary/90">#강릉</a>
    <a href="#" class="px-5 py-2 bg-primary text-white rounded-full hover:bg-primary/90">#속초</a>
  </div>
</div>
<!-- 상단 탭 배너 -->
<div class="w-full border-b border-gray-300 mb-8">
  <div class="grid grid-cols-3 text-center text-lg font-medium text-gray-600">
    
    <button onclick="scrollToSection('infoSection')" id="tab-info"
      class="py-3 tab-btn-style border-b-2 border-black text-black font-bold">
      여행지 위치
    </button>
    
    <button onclick="scrollToSection('reviewList')" id="tab-review"
      class="py-3 tab-btn-style border-l border-r border-gray-300 hover:text-primary">
      여행지 후기
    </button>
    
    <button onclick="scrollToSection('revwriteSection')" id="tab-revwrite"
      class="py-3 tab-btn-style hover:text-primary">
      리뷰작성
    </button>
    
  </div>
</div>

    <!-- ⭐ 이미지 + 지도 -->
   <!-- 📸 사진 (지도 영역까지 확장) -->
<div class="w-full h-[600px] rounded-xl shadow overflow-hidden mb-10">
  <div id="mainImageSlider" class="flex transition-transform duration-500 ease-in-out">
    <img src="https://images.unsplash.com/photo-1684042229029-8a899193a8e4" class="main-photo w-full h-full object-cover snap-center cursor-pointer" />
    <img src="https://plus.unsplash.com/premium_photo-1661886323367-fc6579695eba?q=80&w=2670&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" class="main-photo w-full h-full object-cover snap-center cursor-pointer" />
    <img src="/resources/images/trip3.jpg" class="main-photo w-full h-full object-cover snap-center cursor-pointer" />
  </div>
  
</div>

<!-- 📝 설명 + 탭 -->
<div class="space-y-4 mb-12">
  <div class="flex items-center gap-2">
    <h2 class="text-3xl font-bold text-gray-900">tour api</h2>
    <button id="likeBtn" class="text-red-500 hover:text-red-600 text-2xl leading-none focus:outline-none">
      <i id="likeIcon" class="ri-heart-line align-middle"></i>
    </button>
  </div>

  <div id = "infoSection" class="flex items-center text-yellow-400 text-xl">
    <i class="ri-star-fill"></i><i class="ri-star-fill"></i><i class="ri-star-fill"></i><i class="ri-star-fill"></i><i class="ri-star-half-fill"></i>
    <span class="ml-2 text-sm text-gray-600 font-semibold">4.5</span>
  </div>

  <div class="flex space-x-6 border-b text-sm font-medium pb-4">
    <button class="tab-btn text-gray-500 hover:text-primary" data-tab="info">기본정보</button>
    <button class="tab-btn text-gray-500 hover:text-primary" data-tab="guide">이용안내</button>
    <button class="tab-btn text-gray-500 hover:text-primary" data-tab="detail">상세정보</button>
  </div>

  <div class="bg-gray-50 border rounded-lg p-4 h-48 overflow-y-auto text-sm text-gray-700">
    <div id="tab-info" class="tab-content block">나중에 tour api에서 불러올 정보</div>
    <div id="tab-guide" class="tab-content hidden">운영시간 등 안내 정보</div>
    <div id="tab-detail" class="tab-content hidden">세부 정보</div>
  </div>
</div>

<!-- 🗺️ 지도 -->
<div class="rounded-xl shadow overflow-hidden w-full h-[400px] mt-8 mb-24">
  <iframe src="https://www.google.com/maps?q=경포대&output=embed"
          width="100%" height="100%" style="border:0;" allowfullscreen loading="lazy"
          referrerpolicy="no-referrer-when-downgrade"></iframe>
</div>

<div class="mt-16 mb-6">
  <div class="flex items-center justify-between mb-3">
    <h3 class="text-2xl font-bold text-gray-800">
      여행지 후기
    </h3>

    <!-- 정렬 버튼 -->
    <div class="flex gap-2">
      <button class="sort-btn px-3 py-1 border rounded-full text-sm text-gray-600 hover:bg-primary hover:text-white transition"
              data-sort="lastest">최신순</button>
      <button class="sort-btn px-3 py-1 border rounded-full text-sm text-gray-600 hover:bg-primary hover:text-white transition"
              data-sort="rating">별점순</button>
    </div>
  </div>

  <!-- 분리된 줄 -->
 <div class="border-t border-gray-200 w-full"></div>
</div>

    <!-- ⭐ 리뷰 목록 + 댓글 작성 -->
   <!-- 리뷰 반복 출력 -->
<!-- ⭐ 리뷰 목록 -->
<div id="reviewList" class="mt-24 space-y-10">
  <c:forEach var="review" items="${reviewList}">
    <div class="review-card bg-white shadow rounded-xl p-6 space-y-4 relative" id="review-${review.reviewId}">

      <div class="view-mode space-y-2">
  <!-- 상단: 회원 ID + 수정/삭제 -->
  <div class="flex justify-between items-start">
    <div class="text-sm font-semibold text-gray-800">회원 ID: ${review.userId}</div>
    <c:if test="${review.userId == loginUserId or review.userId eq loginUserId}">
  <div class="flex gap-2">
    <button onclick="editReview(${review.reviewId})"
            class="flex items-center gap-1 text-blue-600 hover:text-primary text-sm font-medium">
      <img src="https://cdn-icons-png.flaticon.com/512/84/84380.png" class="w-4 h-4" />수정
    </button>
    <button onclick="deleteReview(${review.reviewId})"
            class="flex items-center gap-1 text-red-500 hover:text-red-700 text-sm font-medium">
      <img src="https://cdn-icons-png.flaticon.com/512/6861/6861362.png" class="w-4 h-4" />삭제
    </button>
  </div>
</c:if>
  </div>

  <!-- 이미지 -->
<c:if test="${not empty review.imagePath and fn:length(review.imagePath) > 0}">
  <div class="grid grid-cols-2 gap-4 mt-2">
  
    
    <c:forEach var="img" items="${fn:split(review.imagePath, ',')}" varStatus="status">
      <c:if test="${status.index lt 2 and not empty img}">
        <img src="${pageContext.request.contextPath}${img}"
             class="w-full h-[250px] object-cover rounded-xl shadow cursor-pointer review-image"
             alt="리뷰 이미지" />
      </c:if>
    </c:forEach>

    
    <c:forEach var="img" items="${fn:split(review.imagePath, ',')}" varStatus="status">
      <c:if test="${status.index ge 2 and not empty img}">
        <img src="${pageContext.request.contextPath}${img}"
             class="hidden review-image"
             alt="리뷰 이미지 (숨김)" />
      </c:if>
    </c:forEach>
    
  </div>
</c:if>


  <!-- 별점 -->
  <div class="flex text-yellow-400 text-base mt-2">
    <c:forEach begin="1" end="${review.fullStars}"><i class="ri-star-fill"></i></c:forEach>
    <c:if test="${review.halfStar}"><i class="ri-star-half-fill"></i></c:if>
    <c:forEach begin="1" end="${review.emptyStars}"><i class="ri-star-line"></i></c:forEach>
  </div>

  <!-- 내용 -->
  <p class="text-sm text-gray-900 whitespace-pre-line">${review.content}</p>

  <!-- 하단 작성일 + 추천 + 신고 -->
  <div class="flex justify-between items-center mt-2">
    <p class="text-sm text-gray-400">작성일: ${review.createdAt}</p>
    <div class="flex items-center gap-2">
      <button class="text-sm text-gray-500 hover:text-primary px-2 py-1 rounded-full border text-xs">👍 추천</button>
      <button class="text-xs text-gray-400 hover:text-red-500">신고</button>
    </div>
  </div>
</div>


  <!-- 리뷰 내용 -->
  <p class="text-sm text-gray-900 whitespace-pre-line mt-1">${review.content}</p>
</div>


      <!-- ✅ 수정모드 -->
      <div class="edit-mode hidden">
        <input type="number" class="border rounded px-2 py-1 text-sm" name="rating" value="${review.rating}" min="0" max="5" step="0.5" />
        <textarea name="content" class="w-full mt-2 border p-2 rounded text-sm">${review.content}</textarea>

        <div class="grid grid-cols-2 gap-4 mt-3" id="edit-images-${review.reviewId}">
          <c:forEach var="img" items="${fn:split(review.imagePath, ',')}">
            <c:if test="${not empty img}">
              <div class="relative">
                <img src="${pageContext.request.contextPath}${img}" class="w-full h-[250px] object-cover rounded shadow" />
                <button type="button"
                        onclick="this.closest('div').remove();"
                        class="absolute top-2 right-2 bg-red-500 text-white w-6 h-6 rounded-full text-xs flex items-center justify-center">×</button>
              </div>   
            </c:if>
          </c:forEach>
        </div>
        </div>
        <div class="mt-2">
	  <label class="text-sm text-gray-600">이미지 추가:</label>
<input type="file" id="editFileInput" name="newImageFiles" multiple accept="image/*"
  class="mt-1 block w-full text-sm border rounded p-1" />
<div id="editPreviewContainer" class="mt-4 grid grid-cols-2 gap-4"></div>
	

        <div class="mt-4 flex gap-2">
          <button class="bg-primary text-white px-4 py-2 rounded text-sm" onclick="submitReviewEdit(${review.reviewId})">완료</button>
          <button class="bg-gray-300 text-gray-700 px-4 py-2 rounded text-sm" onclick="cancelReviewEdit(${review.reviewId})">취소</button>
        </div>
      </div>
    </div>
  </c:forEach>
</div>


<!-- 리뷰 작성 폼 -->
<form id="reviewForm" method="post" enctype="multipart/form-data" class="text-sm mt-8" >
  <div class="bg-white rounded-xl p-6 space-y-4 shadow-sm border border-gray-200">

    <!-- ✅ 작성자 -->
    <div class="flex items-center gap-2">
      <span class="w-20 text-sm text-gray-600 font-medium">작성자</span>
      <span class="text-sm font-semibold text-gray-800">회원1</span>
    </div>

    <!-- ✅ 숨겨진 필드들 -->
    <input type="hidden" name="userId" value="0" /> <!-- 임시 사용자 ID (세션에서 추후 대체) -->
    <input type="hidden" name="destId" value="0" />

    <!-- ⭐ 별점 -->
    <div id="starRating">
      <div class="base">
        <i class="ri-star-fill"></i>
        <i class="ri-star-fill"></i>
        <i class="ri-star-fill"></i>
        <i class="ri-star-fill"></i>
        <i class="ri-star-fill"></i>
      </div>
      <div id="starOverlay">
        <i class="ri-star-fill"></i>
        <i class="ri-star-fill"></i>
        <i class="ri-star-fill"></i>
        <i class="ri-star-fill"></i>
        <i class="ri-star-fill"></i>
      </div>
    </div>

    <div class="flex items-center gap-2">
      <label for="ratingInput" class="text-sm text-gray-700">별점 :</label>
      <input
  type="number"
  id="ratingInput"
  name="rating"
  min="0"
  max="5"
  step="0.5"
  value="0"
  class="w-16 border border-gray-300 rounded px-2 py-1 text-sm text-right"
/>		
		<span> 점</span>
      <span id="ratingDisplay" class="hidden"></span>
    </div>

    <!-- 💬 댓글 입력창 -->
    <textarea id="revwriteSection" name="content" placeholder="리뷰를 입력해주세요." rows="3"
      class="w-full border border-gray-300 rounded p-3 resize-none focus:outline-none focus:ring-1 focus:ring-primary text-sm"></textarea>

    <!-- 📎 파일 + 등록 버튼 -->
<div class="flex items-center justify-between gap-4 w-full">
  <!-- 파일 선택 input -->
  <input
  type="file"
  id="previewInput"
  name="imageFile"
  accept="image/*"
  multiple
  class="block text-sm text-gray-500 file:mr-4 file:py-1 file:px-2 file:rounded file:border-0 file:text-sm file:font-semibold file:bg-primary/10 file:text-primary hover:file:bg-primary/20"
/>
  <!-- 이미지 미리보기 (가로 정렬) -->
  <div id="previewContainer" class="flex flex-wrap gap-2"></div>

  <!-- 등록 버튼 -->
  <button type="submit" class="bg-primary text-white px-4 py-2 rounded-md hover:bg-primary/90 whitespace-nowrap">
    등록
  </button>
</div>


  </div>
</form>


</section>

  <!-- ✅ 플로팅 챗봇 -->
  <div class="fixed bottom-6 right-6 z-50">
    <button class="bg-primary text-white w-14 h-14 rounded-full shadow-lg flex items-center justify-center">
      <i class="ri-message-3-line ri-lg"></i>
    </button>
  </div>
  
<div id="imageModal" class="fixed inset-0 z-50  bg-neutral-800/50 backdrop-blur-sm hidden flex items-center justify-center text-white">
  <div class="relative max-w-5xl w-full px-4">
    <div class="relative overflow-hidden">
      <img id="modalImage" src="" class="max-h-[70vh] mx-auto rounded-lg object-contain transition duration-300" />

      <!-- 좌우 화살표 -->
      <button id="prevBtn" class="absolute top-1/2 left-0 transform -translate-y-1/2 text-white text-3xl px-4 hover:text-primary z-50">&#10094;</button>
      <button id="nextBtn" class="absolute top-1/2 right-0 transform -translate-y-1/2 text-white text-3xl px-4 hover:text-primary z-50">&#10095;</button>
    </div>

    <!-- 📝 추가된 설명 영역 -->
    <div class="mt-4 text-center">
       <p id="modalUser" class="text-sm opacity-90"></p>
   
    <p id="modalCreated" class="text-xs mt-1 opacity-60"></p>
    </div>

    <!-- 닫기 -->
     <button onclick="closeImageModal()" 
            class="absolute -top-6 -right-6 bg-black/70 text-white w-10 h-10 rounded-full flex items-center justify-center hover:bg-red-600 z-50 shadow-lg transition">
      <i class="ri-close-line text-xl"></i>
    </button>

  </div>
</div>
<div id="mainImageModal" class="fixed inset-0 z-50 bg-black/70 backdrop-blur-sm hidden flex items-center justify-center text-white">
  <div class="relative max-w-5xl w-full px-4">
    <img id="mainModalImage" class="max-h-[70vh] mx-auto rounded-lg object-contain transition duration-300" />
    <button id="mainPrevBtn" class="absolute top-1/2 left-0 transform -translate-y-1/2 text-white text-3xl px-4">&#10094;</button>
    <button id="mainNextBtn" class="absolute top-1/2 right-0 transform -translate-y-1/2 text-white text-3xl px-4">&#10095;</button>
    <button onclick="closeMainImageModal()" class="absolute top-4 right-4 bg-white/10 w-10 h-10 rounded-full flex items-center justify-center hover:bg-red-600"><i class="ri-close-line text-xl"></i></button>
  </div>
</div>

<div id="deleteModal" class="fixed inset-0 bg-black/50 backdrop-blur-sm hidden flex items-center justify-center z-50">
  <div class="bg-white rounded-lg p-6 w-full max-w-sm shadow-lg">
    <h2 class="text-lg font-semibold text-gray-800 mb-4">리뷰 삭제 확인</h2>
    <p class="text-sm text-gray-600 mb-2">본인 확인을 위해 회원 ID를 입력하세요.</p>
    <input type="text" id="deleteUserIdInput" class="w-full border px-3 py-2 rounded text-sm mb-4" placeholder="회원 ID 입력" />
    <div class="flex justify-end gap-2">
      <button onclick="closeDeleteModal()" class="px-4 py-2 text-sm text-gray-600 hover:text-black">취소</button>
      <button id="confirmDeleteBtn" class="bg-gray-800 hover:bg-red-600 text-white px-4 py-2 text-sm rounded">삭제</button>
    </div>
  </div>
</div>

<div id="reportModal" class="hidden fixed inset-0 bg-black/50 backdrop-blur-sm flex items-center justify-center z-50">
  <div class="bg-white rounded-xl shadow p-6 w-80 space-y-4">
    <h2 class="text-lg font-bold text-gray-800 text-center">리뷰 신고</h2>
    <p class="text-sm text-gray-600 text-center">정말 이 리뷰를 신고하시겠습니까?</p>

    <div class="flex justify-center gap-4 pt-2">
      <button onclick="closeReportModal()" class="px-4 py-2 rounded bg-gray-300 text-gray-800 text-sm">취소</button>
      <button id="confirmReportBtn" class="px-4 py-2 rounded bg-red-600 text-white text-sm">신고</button>
    </div>
  </div>
</div>

<div id="toast"
     class="hidden fixed top-1/2 left-1/2 transform -translate-x-1/2 -translate-y-1/2 
            bg-black bg-opacity-70 text-white px-4 py-2 rounded shadow z-50 
            opacity-0 transition-opacity duration-500 text-sm text-center max-w-[80%]">
</div>
</body>

</html>


<%-- 
<c:forEach var="reply" items="${replyList}">
  <div class="pb-4 border-b flex items-start justify-between gap-4">
    <div class="flex-1">
      <div class="flex items-center text-yellow-400 text-sm mb-1">
        <c:forEach begin="1" end="${reply.rating}">
          <i class="ri-star-fill"></i>
        </c:forEach>
      </div>
      <p class="text-sm text-gray-800">${reply.commentText}</p>

      <!-- 첨부 이미지 썸네일 -->
      <c:if test="${not empty reply.imagePath}">
        <img src="${reply.imagePath}" alt="첨부 이미지"
             class="mt-2 w-20 h-20 object-cover rounded border border-gray-300">
      </c:if>

      <div class="text-xs text-gray-500 mt-2">– ${reply.writer}</div>
    </div>

    <!-- 본인 댓글이면 수정/삭제 -->
    <c:if test="${loginUser eq reply.writer}">
      <div class="flex gap-1 text-xs text-gray-400">
        <button class="hover:text-primary" onclick="editComment(${reply.id})">수정</button>
        <button class="hover:text-red-500" onclick="deleteComment(${reply.id})">삭제</button>
      </div>
    </c:if>
  </div>
</c:forEach> --%>