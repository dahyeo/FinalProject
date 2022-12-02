<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Dongle:wght@300&family=Gamja+Flower&family=Jua&family=Noto+Serif+KR&display=swap">
<link
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.5.0.js"></script>
<script src="https://kit.fontawesome.com/4f8084f592.js"
	crossorigin="anonymous"></script>
<title>키워드로 장소검색하고 목록으로 표출하기</title>

<style>
.map_wrap, .map_wrap * {
	margin: 0;
	padding: 0;
	font-family: 'Malgun Gothic', dotum, '돋움', sans-serif;
	font-size: 12px;
}

.map_wrap a, .map_wrap a:hover, .map_wrap a:active {
	color: #000;
	text-decoration: none;
}

.map_wrap {
	position: relative;
	width: 100%;
	height: 500px;
}

#menu_wrap {
	position: absolute;
	top: 0;
	left: 0;
	bottom: 0;
	width: 250px;
	margin: 10px 0 30px 10px;
	padding: 5px;
	overflow-y: auto;
	background: rgba(255, 255, 255, 0.7);
	z-index: 1;
	font-size: 12px;
	border-radius: 10px;
}

.bg_white {
	background: #fff;
}

#menu_wrap hr {
	display: block;
	height: 1px;
	border: 0;
	border-top: 2px solid #5F5F5F;
	margin: 3px 0;
}

#menu_wrap .option {
	text-align: center;
}

#menu_wrap .option p {
	margin: 10px 0;
}

#menu_wrap .option button {
	margin-left: 5px;
}

#placesList li {
	list-style: none;
}

#placesList .item {
	position: relative;
	border-bottom: 1px solid #888;
	overflow: hidden;
	cursor: pointer;
	min-height: 65px;
}

#placesList .item span {
	display: block;
	margin-top: 4px;
}

#placesList .item h5, #placesList .item .info {
	text-overflow: ellipsis;
	overflow: hidden;
	white-space: nowrap;
}

#placesList .item .info {
	padding: 10px 0 10px 55px;
}

#placesList .info .gray {
	color: #8a8a8a;
}

#placesList .info .jibun {
	padding-left: 26px;
	background:
		url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/places_jibun.png)
		no-repeat;
}

#placesList .info .tel {
	color: #009900;
}

#placesList .item .markerbg {
	float: left;
	position: absolute;
	width: 36px;
	height: 37px;
	margin: 10px 0 0 10px;
	background:
		url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png)
		no-repeat;
}

#placesList .item .marker_1 {
	background-position: 0 -10px;
}

#placesList .item .marker_2 {
	background-position: 0 -56px;
}

#placesList .item .marker_3 {
	background-position: 0 -102px
}

#placesList .item .marker_4 {
	background-position: 0 -148px;
}

#placesList .item .marker_5 {
	background-position: 0 -194px;
}

#placesList .item .marker_6 {
	background-position: 0 -240px;
}

#placesList .item .marker_7 {
	background-position: 0 -286px;
}

#placesList .item .marker_8 {
	background-position: 0 -332px;
}

#placesList .item .marker_9 {
	background-position: 0 -378px;
}

#placesList .item .marker_10 {
	background-position: 0 -423px;
}

#placesList .item .marker_11 {
	background-position: 0 -470px;
}

#placesList .item .marker_12 {
	background-position: 0 -516px;
}

#placesList .item .marker_13 {
	background-position: 0 -562px;
}

#placesList .item .marker_14 {
	background-position: 0 -608px;
}

#placesList .item .marker_15 {
	background-position: 0 -654px;
}

#pagination {
	margin: 10px auto;
	text-align: center;
}

#pagination a {
	display: inline-block;
	margin-right: 10px;
}

#pagination .on {
	font-weight: bold;
	cursor: default;
	color: #777;
}

/* 장소 설명 커스텀 */
.wrap {
	position: absolute;
	left: 0;
	bottom: 40px;
	width: 288px;
	height: 132px;
	margin-left: -144px;
	text-align: left;
	overflow: hidden;
	font-size: 12px;
	font-family: 'Malgun Gothic', dotum, '돋움', sans-serif;
	line-height: 1.5;
}

.wrap * {
	padding: 0;
	margin: 0;
}

.wrap .info {
	width: 286px;
	height: 120px;
	border-radius: 5px;
	border-bottom: 2px solid #ccc;
	border-right: 1px solid #ccc;
	overflow: hidden;
	background: #fff;
}

.wrap .info:nth-child(1) {
	border: 0;
	box-shadow: 0px 1px 2px #888;
}

.info .title {
	padding: 5px 0 0 10px;
	height: 30px;
	background: #eee;
	border-bottom: 1px solid #ddd;
	font-size: 18px;
	font-weight: bold;
}

.info .close {
	position: absolute;
	top: 8px;
	right: 10px;
	color: #888;
	width: 17px;
	height: 17px;
	background:
		url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/overlay_close.png');
}

.info .close:hover {
	cursor: pointer;
}

.info .body {
	position: relative;
	margin-top: 43px;
	overflow: hidden;
}

.info .desc {
	position: relative;
	margin: 13px 0 0 90px;
	height: 75px;
}

.desc .ellipsis {
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
}

.desc .jibun {
	font-size: 11px;
	color: #888;
	margin-top: -2px;
}

.info .img {
	position: absolute;
	top: 6px;
	left: 5px;
	width: 73px;
	height: 71px;
	border: 1px solid #ddd;
	color: #888;
	overflow: hidden;
}

.info:after {
	content: '';
	position: absolute;
	margin-left: -12px;
	left: 50%;
	bottom: 0;
	width: 22px;
	height: 12px;
	background:
		url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')
}

.info .link {
	color: #5085BB;
}
</style>
</head>
<body>
	<div class="map_wrap">
		<div id="map"
			style="width: 100%; height: 100%; position: relative; overflow: hidden;"></div>

		<div id="menu_wrap" class="bg_white">
			<div class="option">
				<div>
					<form onsubmit="searchPlaces(); return false;">
						키워드 : <input type="text" value="서울역" id="keyword" size="15">
						<button type="submit" class="btn btn-primary">검색</button>
					</form>
				</div>
			</div>
			<hr>
			<ul id="placesList"></ul>
			<div id="pagination"></div>
		</div>
	</div>

	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=dbdc0302f435eb97041037fa58e54f62&libraries=services"></script>
	<script>
		// 마커를 담을 배열입니다
		var markers = [];

		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		mapOption = {
			center : new kakao.maps.LatLng(37.566826, 126.9786567), // 지도의 중심좌표
			level : 3
		// 지도의 확대 레벨
		};

		// 지도를 생성합니다    
		var map = new kakao.maps.Map(mapContainer, mapOption);

		// 장소 검색 객체를 생성합니다
		var ps = new kakao.maps.services.Places();

		// 검색 결과 목록이나 마커를 클릭했을 때 장소명을 표출할 인포윈도우를 생성합니다
		var infowindow = new kakao.maps.InfoWindow({
			zIndex : 1
		});

		// 키워드로 장소를 검색합니다
		searchPlaces();

		// 키워드 검색을 요청하는 함수입니다
		function searchPlaces() {

			var keyword = document.getElementById('keyword').value;

			if (!keyword.replace(/^\s+|\s+$/g, '')) {
				alert('키워드를 입력해주세요!');
				return false;
			}

			// 장소검색 객체를 통해 키워드로 장소검색을 요청합니다
			ps.keywordSearch(keyword, placesSearchCB);
		}

		// 장소검색이 완료됐을 때 호출되는 콜백함수 입니다
		function placesSearchCB(data, status, pagination) {
			if (status === kakao.maps.services.Status.OK) {

				// 정상적으로 검색이 완료됐으면
				// 검색 목록과 마커를 표출합니다
				displayPlaces(data);

				// 페이지 번호를 표출합니다
				displayPagination(pagination);

			} else if (status === kakao.maps.services.Status.ZERO_RESULT) {

				alert('검색 결과가 존재하지 않습니다.');
				return;

			} else if (status === kakao.maps.services.Status.ERROR) {

				alert('검색 결과 중 오류가 발생했습니다.');
				return;

			}
		}

		// 검색 결과 목록과 마커를 표출하는 함수입니다
		function displayPlaces(places) {

			var listEl = document.getElementById('placesList'), menuEl = document
					.getElementById('menu_wrap'), fragment = document
					.createDocumentFragment(), bounds = new kakao.maps.LatLngBounds(), listStr = '';

			// 검색 결과 목록에 추가된 항목들을 제거합니다
			removeAllChildNods(listEl);

			// 지도에 표시되고 있는 마커를 제거합니다
			removeMarker();

			for (var i = 0; i < places.length; i++) {

				// 마커를 생성하고 지도에 표시합니다
				var placePosition = new kakao.maps.LatLng(places[i].y,
						places[i].x), marker = addMarker(placePosition, i), itemEl = getListItem(
						i, places[i]); // 검색 결과 항목 Element를 생성합니다

				// 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
				// LatLngBounds 객체에 좌표를 추가합니다
				bounds.extend(placePosition);

				// 마커와 검색결과 항목에 mouseover 했을때
				// 해당 장소에 인포윈도우에 장소명을 표시합니다
				// mouseout 했을 때는 인포윈도우를 닫습니다
				(function(marker, title) {
					kakao.maps.event.addListener(marker, 'mouseover',
							function() {
								displayInfowindow(marker, title);
							});

					kakao.maps.event.addListener(marker, 'mouseout',
							function() {
								infowindow.close();
							});

					itemEl.onmouseover = function() {
						displayInfowindow(marker, title);
					};

					itemEl.onmouseout = function() {
						infowindow.close();
					};
				})(marker, places[i].place_name);

				fragment.appendChild(itemEl);
			}

			// 검색결과 항목들을 검색결과 목록 Elemnet에 추가합니다
			listEl.appendChild(fragment);
			menuEl.scrollTop = 0;

			// 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
			map.setBounds(bounds);
		}

		// 검색결과 항목을 Element로 반환하는 함수입니다
		function getListItem(index, places) {

			var el = document.createElement('li'), itemStr = '<span class="markerbg marker_'
					+ (index + 1)
					+ '"></span>'
					+ '<div class="info">'
					+ '   <h5>' + places.place_name + '</h5>';

			if (places.road_address_name) {
				itemStr += '    <span>' + places.road_address_name + '</span>'
						+ '   <span class="jibun gray">' + places.address_name
						+ '</span>';
			} else {
				itemStr += '    <span>' + places.address_name + '</span>';
			}

			itemStr += '  <span class="tel">' + places.phone + '</span>'
					+ '</div>';

			el.innerHTML = itemStr;
			el.className = 'item';

			return el;
		}

		// 마커를 생성하고 지도 위에 마커를 표시하는 함수입니다
		function addMarker(position, idx, title) {
			var imageSrc = 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png', // 마커 이미지 url, 스프라이트 이미지를 씁니다
			imageSize = new kakao.maps.Size(36, 37), // 마커 이미지의 크기
			imgOptions = {
				spriteSize : new kakao.maps.Size(36, 691), // 스프라이트 이미지의 크기
				spriteOrigin : new kakao.maps.Point(0, (idx * 46) + 10), // 스프라이트 이미지 중 사용할 영역의 좌상단 좌표
				offset : new kakao.maps.Point(13, 37)
			// 마커 좌표에 일치시킬 이미지 내에서의 좌표
			}, markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize,
					imgOptions), marker = new kakao.maps.Marker({
				position : position, // 마커의 위치
				image : markerImage
			});

			marker.setMap(map); // 지도 위에 마커를 표출합니다
			markers.push(marker); // 배열에 생성된 마커를 추가합니다

			return marker;
		}

		// 지도 위에 표시되고 있는 마커를 모두 제거합니다
		function removeMarker() {
			for (var i = 0; i < markers.length; i++) {
				markers[i].setMap(null);
			}
			markers = [];
		}

		// 검색결과 목록 하단에 페이지번호를 표시는 함수입니다
		function displayPagination(pagination) {
			var paginationEl = document.getElementById('pagination'), fragment = document
					.createDocumentFragment(), i;

			// 기존에 추가된 페이지번호를 삭제합니다
			while (paginationEl.hasChildNodes()) {
				paginationEl.removeChild(paginationEl.lastChild);
			}

			for (i = 1; i <= pagination.last; i++) {
				var el = document.createElement('a');
				el.href = "#";
				el.innerHTML = i;

				if (i === pagination.current) {
					el.className = 'on';
				} else {
					el.onclick = (function(i) {
						return function() {
							pagination.gotoPage(i);
						}
					})(i);
				}

				fragment.appendChild(el);
			}
			paginationEl.appendChild(fragment);
		}

		// 검색결과 목록 또는 마커를 클릭했을 때 호출되는 함수입니다
		// 인포윈도우에 장소명을 표시합니다
		function displayInfowindow(marker, title) {
			var content = '<div style="padding:5px;z-index:1;">' + title
					+ '</div>';

			infowindow.setContent(content);
			infowindow.open(map, marker);
		}

		// 검색결과 목록의 자식 Element를 제거하는 함수입니다
		function removeAllChildNods(el) {
			while (el.hasChildNodes()) {
				el.removeChild(el.lastChild);
			}
		}

		/* 장소 설명 커스텀 */
		var mapContainer = document.getElementById('map'), // 지도의 중심좌표
		mapOption = {
			center : new kakao.maps.LatLng(37.4872296, 126.989251), // 지도의 중심좌표
			level : 3
		// 지도의 확대 레벨
		};

		var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

		// 지도에 마커를 표시합니다 
		var marker = new kakao.maps.Marker({
			map : map,
			position : new kakao.maps.LatLng(37.4872296, 126.989251)
		});

		// 커스텀 오버레이에 표시할 컨텐츠 입니다
		// 커스텀 오버레이는 아래와 같이 사용자가 자유롭게 컨텐츠를 구성하고 이벤트를 제어할 수 있기 때문에
		// 별도의 이벤트 메소드를 제공하지 않습니다 
		var content = '<div class="wrap">'
				+ '    <div class="info">'
				+ '        <div class="title">'
				+ '            🐶샵세린파크🐶'
				+ '            <div class="close" onclick="closeOverlay()" title="닫기"></div>'
				+ '        </div>'
				+ '        <div class="body">'
				+ '            <div class="img">'
				+ '                <img src="https://dugs12pdb1jsf.cloudfront.net/groomingshop/d188e9823e8c48fb9c19b9c43cc3fccb.jpg" width="73" height="70">'
				+ '           </div>'
				+ '            <div class="desc">'
				+ '                <div class="ellipsis">서울특별시 서초구 방배중앙로 88</div>'
				+ '                <div class="jibun ellipsis" style="color: green; font-weight:bold;"> <br>💸WAYO 포인트 사용가능지점 </div>'
				+ '                <div class="jibun ellipsis" style="color: blue; font-weight:bold;"> 예약가능 </div>'
				+ '            </div>' + '        </div>' + '    </div>'
				+ '</div>';

		// 마커 위에 커스텀오버레이를 표시합니다
		// 마커를 중심으로 커스텀 오버레이를 표시하기위해 CSS를 이용해 위치를 설정했습니다
		var overlay = new kakao.maps.CustomOverlay({
			content : content,
			map : map,
			position : marker.getPosition()
		});

		// 마커를 클릭했을 때 커스텀 오버레이를 표시합니다
		kakao.maps.event.addListener(marker, 'click', function() {
			overlay.setMap(map);
		});

		// 맵을 클릭했을 때 커스텀 오버레이를 닫습니다.
		kakao.maps.event.addListener(map, 'click', function() {
			overlay.setMap(null);
		});
	</script>

	<!-- 미용샵 -->
	<div id="groomer-container">
		<div class="desktop hidden-s">
			<!-- <div style="padding-top: 235px; width: 1000px; margin: 0px auto">
				<h1 style="font-size: 50px; font-weight: 600; color: #555555">미용샵을
					둘러보세요</h1>
				<p style="font-size: 17px; color: #333333; margin-top: 26px">우리
					동네 반려동물 미용샵을 찾아보세요</p>
			</div> -->
			<div
				style="width: 100%; display: flex; flex-direction: column; justify-content: center; align-items: center; padding: 89px 220px 200px 220px; background-color: #F7F8FA">
				<div style="display: flex; width: 1000px">
					<p style="font-size: 17px; font-weight: 600; color: #555555">와요
						입점샵</p>
				</div>
				<div
					style="margin-top: 38px; width: 1000px; display: grid; grid-template-columns: repeat(2, 1fr); grid-gap: 38px">
					<div
						style="width: 480px; border: 1px solid #EBEBEB; display: flex; flex-direction: column; border-radius: 8px; box-shadow: 0px 0px 12px 0px rgba(0, 0, 0, 0.07); background-color: white; padding: 10px">
						<div style="position: relative; width: 460px; height: 265px">
							<div
								style="position: absolute; bottom: 15px; width: 460px; justify-content: center; align-content: center; z-index: 2">
								<div
									style="display: flex; justify-content: center; align-items: center">
									<div
										style="width: 10px; height: 10px; border-radius: 50%; background-color: white; margin-left: 4px; margin-right: 4px; z-index: 99999"></div>
									
								</div>
							</div>
							<div class="swiper-container">
								<div class="swiper-wrapper">
									<div class="swiper-slide">
										<img
											src="https://dugs12pdb1jsf.cloudfront.net/resized/groomingshop/b010413f3a7a4c94836af5a05440a9cc.png"
											style="width: 460px; height: 265px; object-fit: cover; border-radius: 5px; cursor: pointer" />
									</div>
								</div>
								<div class="swiper-pagination"></div>
							</div>
						</div>
						<div
							style="display: flex; flex-direction: column; cursor: pointer; padding: 38px 28px 28px 28px">
							<p style="color: #777777; font-size: 17px; font-weight: 500">서울
								강남구</p>
							<p
								style="color: #333333; font-size: 23px; font-weight: 500; margin-top: 12px; text-overflow:">그레이닝
								⚡️</p>
							<div style="margin-top: 24px; display: flex; align-items: center">
								<span
									style="position: relative; background: #FFCD41; border-radius: 5px; height: 28px; padding: 4px 8px; margin-right: 8px; width: 70px"><span
									style="position: absolute; bottom: 0; left: 0; background: #FFB609; opacity: 0.37; font-size: 15px; border-radius: 0 0 5px 5px; height: 14px; width: 100%; font-weight: 600"></span>
								<p
										style="position: absolute; color: #FFFFFF; font-weight: 600; font-size: 15px">피어프리</p></span><span
									style="background: #F8F8F8; color: #999999; font-size: 15px; border-radius: 5px; height: 28px; padding: 4px 10px; margin-right: 8px; font-weight: 500">소형견</span><span
									style="background: #F8F8F8; color: #999999; font-size: 15px; border-radius: 5px; height: 28px; padding: 4px 10px; margin-right: 8px; font-weight: 500">중형견</span><span
									style="background: #F8F8F8; color: #999999; font-size: 15px; border-radius: 5px; height: 28px; padding: 4px 10px; margin-right: 8px; font-weight: 500">대형견</span>
							</div>
						</div>
					</div>
					<div
						style="width: 480px; border: 1px solid #EBEBEB; display: flex; flex-direction: column; border-radius: 8px; box-shadow: 0px 0px 12px 0px rgba(0, 0, 0, 0.07); background-color: white; padding: 10px">
						<div style="position: relative; width: 460px; height: 265px">
							
							<div
								style="position: absolute; bottom: 15px; width: 460px; justify-content: center; align-content: center; z-index: 2">
								<div
									style="display: flex; justify-content: center; align-items: center">
									<div
										style="width: 10px; height: 10px; border-radius: 50%; background-color: white; margin-left: 4px; margin-right: 4px; z-index: 99999"></div>
									
								</div>
							</div>
							<div class="swiper-container">
								<div class="swiper-wrapper">
									<div class="swiper-slide">
										<img
											src="https://dugs12pdb1jsf.cloudfront.net/groomingshop/73a7f267c02a491c836ba7f719c336b0.jpeg"
											style="width: 460px; height: 265px; object-fit: cover; border-radius: 5px; cursor: pointer" />
									</div>
									
								</div>
								<div class="swiper-pagination"></div>
							</div>
						</div>
						<div
							style="display: flex; flex-direction: column; cursor: pointer; padding: 38px 28px 28px 28px">
							<p style="color: #777777; font-size: 17px; font-weight: 500">경기
								성남시</p>
							<p
								style="color: #333333; font-size: 23px; font-weight: 500; margin-top: 12px; text-overflow:">겟베럴
								⚡️</p>
							<div style="margin-top: 24px; display: flex; align-items: center">
								<span
									style="position: relative; background: #FFCD41; border-radius: 5px; height: 28px; padding: 4px 8px; margin-right: 8px; width: 70px"><span
									style="position: absolute; bottom: 0; left: 0; background: #FFB609; opacity: 0.37; font-size: 15px; border-radius: 0 0 5px 5px; height: 14px; width: 100%; font-weight: 600"></span>
								<p
										style="position: absolute; color: #FFFFFF; font-weight: 600; font-size: 15px">피어프리</p></span><span
									style="background: #F8F8F8; color: #999999; font-size: 15px; border-radius: 5px; height: 28px; padding: 4px 10px; margin-right: 8px; font-weight: 500">소형견</span><span
									style="background: #F8F8F8; color: #999999; font-size: 15px; border-radius: 5px; height: 28px; padding: 4px 10px; margin-right: 8px; font-weight: 500">중형견</span><span
									style="background: #F8F8F8; color: #999999; font-size: 15px; border-radius: 5px; height: 28px; padding: 4px 10px; margin-right: 8px; font-weight: 500">대형견</span>
							</div>
						</div>
					</div>
					<div
						style="width: 480px; border: 1px solid #EBEBEB; display: flex; flex-direction: column; border-radius: 8px; box-shadow: 0px 0px 12px 0px rgba(0, 0, 0, 0.07); background-color: white; padding: 10px">
						<div style="position: relative; width: 460px; height: 265px">
							<div
								style="position: absolute; bottom: 15px; width: 460px; justify-content: center; align-content: center; z-index: 2">
								<div
									style="display: flex; justify-content: center; align-items: center">
									<div
										style="width: 10px; height: 10px; border-radius: 50%; background-color: white; margin-left: 4px; margin-right: 4px; z-index: 99999"></div>
									<div
										style="width: 8px; height: 8px; border-radius: 50%; background-color: rgba(255, 255, 255, 0.7); margin-left: 4px; margin-right: 4px; z-index: 99999"></div>
									<div
										style="width: 8px; height: 8px; border-radius: 50%; background-color: rgba(255, 255, 255, 0.7); margin-left: 4px; margin-right: 4px; z-index: 99999"></div>
									<div
										style="width: 4px; height: 4px; border-radius: 50%; background-color: rgba(255, 255, 255, 0.7); margin-left: 4px; margin-right: 4px; z-index: 99999"></div>
								</div>
							</div>
							<div class="swiper-container">
								<div class="swiper-wrapper">
									<div class="swiper-slide">
										<img
											src="https://dugs12pdb1jsf.cloudfront.net/groomingshop/46aa26f2a5544ebabf4e3f8d3375da27.png"
											style="width: 460px; height: 265px; object-fit: cover; border-radius: 5px; cursor: pointer" />
									</div>
									
								</div>
								<div class="swiper-pagination"></div>
							</div>
						</div>
						<div
							style="display: flex; flex-direction: column; cursor: pointer; padding: 38px 28px 28px 28px">
							<p style="color: #777777; font-size: 17px; font-weight: 500">서울
								서초구</p>
							<p
								style="color: #333333; font-size: 23px; font-weight: 500; margin-top: 12px; text-overflow:">샵세린파크
								⚡️</p>
							<div style="margin-top: 24px; display: flex; align-items: center">
								<span
									style="background: #F8F8F8; color: #999999; font-size: 15px; border-radius: 5px; height: 28px; padding: 4px 10px; margin-right: 8px; font-weight: 500">소형견</span><span
									style="background: #F8F8F8; color: #999999; font-size: 15px; border-radius: 5px; height: 28px; padding: 4px 10px; margin-right: 8px; font-weight: 500">중형견</span>
							</div>
						</div>
					</div>
					<div
						style="width: 480px; border: 1px solid #EBEBEB; display: flex; flex-direction: column; border-radius: 8px; box-shadow: 0px 0px 12px 0px rgba(0, 0, 0, 0.07); background-color: white; padding: 10px">
						<div style="position: relative; width: 460px; height: 265px">
							<img
								src="https://dugs12pdb1jsf.cloudfront.net/page/4d59f914530048e1b4ab4a62659449aa.jpg"
								style="width: 460px; height: 265px; object-fit: cover; cursor: pointer; border-radius: 5px" />
						</div>
						<div
							style="display: flex; flex-direction: column; cursor: pointer; padding: 38px 28px 28px 28px">
							<p style="color: #777777; font-size: 17px; font-weight: 500">서울
								관악구</p>
							<p
								style="color: #333333; font-size: 23px; font-weight: 500; margin-top: 12px; text-overflow:">디어몽
								⚡️</p>
							<div style="margin-top: 24px; display: flex; align-items: center">
								<span
									style="background: #F8F8F8; color: #999999; font-size: 15px; border-radius: 5px; height: 28px; padding: 4px 10px; margin-right: 8px; font-weight: 500">소형견</span><span
									style="background: #F8F8F8; color: #999999; font-size: 15px; border-radius: 5px; height: 28px; padding: 4px 10px; margin-right: 8px; font-weight: 500">중형견</span><span
									style="background: #F8F8F8; color: #999999; font-size: 15px; border-radius: 5px; height: 28px; padding: 4px 10px; margin-right: 8px; font-weight: 500">대형견</span>
							</div>
						</div>
					</div>
					<div
						style="width: 480px; border: 1px solid #EBEBEB; display: flex; flex-direction: column; border-radius: 8px; box-shadow: 0px 0px 12px 0px rgba(0, 0, 0, 0.07); background-color: white; padding: 10px">
						<div style="position: relative; width: 460px; height: 265px">
							<div
								style="position: absolute; bottom: 15px; width: 460px; justify-content: center; align-content: center; z-index: 2">
								<div
									style="display: flex; justify-content: center; align-items: center">
									<div
										style="width: 10px; height: 10px; border-radius: 50%; background-color: white; margin-left: 4px; margin-right: 4px; z-index: 99999"></div>
									<div
										style="width: 8px; height: 8px; border-radius: 50%; background-color: rgba(255, 255, 255, 0.7); margin-left: 4px; margin-right: 4px; z-index: 99999"></div>
									<div
										style="width: 8px; height: 8px; border-radius: 50%; background-color: rgba(255, 255, 255, 0.7); margin-left: 4px; margin-right: 4px; z-index: 99999"></div>
									<div
										style="width: 6px; height: 6px; border-radius: 50%; background-color: rgba(255, 255, 255, 0.7); margin-left: 4px; margin-right: 4px; z-index: 99999"></div>
									<div
										style="width: 4px; height: 4px; border-radius: 50%; background-color: rgba(255, 255, 255, 0.7); margin-left: 4px; margin-right: 4px; z-index: 99999"></div>
								</div>
							</div>
							<div class="swiper-container">
								<div class="swiper-wrapper">
									<div class="swiper-slide">
										<img
											src="https://dugs12pdb1jsf.cloudfront.net/resized/groomingshop/5aebdaf9860b4be98328336e014718a6.jpeg"
											style="width: 460px; height: 265px; object-fit: cover; border-radius: 5px; cursor: pointer" />
									</div>
									<div class="swiper-slide">
										<img
											src="https://dugs12pdb1jsf.cloudfront.net/resized/groomingshop/9f7b01ae9bcd46ec81b5a2e73ae653ee.jpeg"
											style="width: 460px; height: 265px; object-fit: cover; border-radius: 5px; cursor: pointer" />
									</div>
									
								</div>
								<div class="swiper-pagination"></div>
							</div>
						</div>
						<div
							style="display: flex; flex-direction: column; cursor: pointer; padding: 38px 28px 28px 28px">
							<p style="color: #777777; font-size: 17px; font-weight: 500">서울
								광진구</p>
							<p
								style="color: #333333; font-size: 23px; font-weight: 500; margin-top: 12px; text-overflow:">꿀강아지
								테리하우스 ⚡️</p>
							<div style="margin-top: 24px; display: flex; align-items: center">
								<span
									style="background: #F8F8F8; color: #999999; font-size: 15px; border-radius: 5px; height: 28px; padding: 4px 10px; margin-right: 8px; font-weight: 500">소형견</span><span
									style="background: #F8F8F8; color: #999999; font-size: 15px; border-radius: 5px; height: 28px; padding: 4px 10px; margin-right: 8px; font-weight: 500">중형견</span>
							</div>
						</div>
					</div>
					<div
						style="width: 480px; border: 1px solid #EBEBEB; display: flex; flex-direction: column; border-radius: 8px; box-shadow: 0px 0px 12px 0px rgba(0, 0, 0, 0.07); background-color: white; padding: 10px">
						<div style="position: relative; width: 460px; height: 265px">
							<img
								src="https://dugs12pdb1jsf.cloudfront.net/resized/groomingshop/1da8d8e297124d99b27abcb0b5723f67.jpeg"
								style="width: 460px; height: 265px; object-fit: cover; cursor: pointer; border-radius: 5px" />
						</div>
						<div
							style="display: flex; flex-direction: column; cursor: pointer; padding: 38px 28px 28px 28px">
							<p style="color: #777777; font-size: 17px; font-weight: 500">서울
								은평구</p>
							<p
								style="color: #333333; font-size: 23px; font-weight: 500; margin-top: 12px; text-overflow:">댕댕이
								미용실 ⚡️</p>
							<div style="margin-top: 24px; display: flex; align-items: center">
								<span
									style="background: #F8F8F8; color: #999999; font-size: 15px; border-radius: 5px; height: 28px; padding: 4px 10px; margin-right: 8px; font-weight: 500">소형견</span><span
									style="background: #F8F8F8; color: #999999; font-size: 15px; border-radius: 5px; height: 28px; padding: 4px 10px; margin-right: 8px; font-weight: 500">중형견</span><span
									style="background: #F8F8F8; color: #999999; font-size: 15px; border-radius: 5px; height: 28px; padding: 4px 10px; margin-right: 8px; font-weight: 500">대형견</span>
							</div>
						</div>
					</div>
					<div
						style="width: 480px; border: 1px solid #EBEBEB; display: flex; flex-direction: column; border-radius: 8px; box-shadow: 0px 0px 12px 0px rgba(0, 0, 0, 0.07); background-color: white; padding: 10px">
						<div style="position: relative; width: 460px; height: 265px">
							<div
								style="position: absolute; bottom: 15px; width: 460px; justify-content: center; align-content: center; z-index: 2">
								<div
									style="display: flex; justify-content: center; align-items: center">
									<div
										style="width: 10px; height: 10px; border-radius: 50%; background-color: white; margin-left: 4px; margin-right: 4px; z-index: 99999"></div>
									<div
										style="width: 8px; height: 8px; border-radius: 50%; background-color: rgba(255, 255, 255, 0.7); margin-left: 4px; margin-right: 4px; z-index: 99999"></div>
									<div
										style="width: 8px; height: 8px; border-radius: 50%; background-color: rgba(255, 255, 255, 0.7); margin-left: 4px; margin-right: 4px; z-index: 99999"></div>
								</div>
							</div>
							<div class="swiper-container">
								<div class="swiper-wrapper">
									<div class="swiper-slide">
										<img
											src="https://dugs12pdb1jsf.cloudfront.net/resized/groomingshop/8972773c7d134fe5aa4924f87d913d81.jpg"
											style="width: 460px; height: 265px; object-fit: cover; border-radius: 5px; cursor: pointer" />
									</div>
									
								</div>
								<div class="swiper-pagination"></div>
							</div>
						</div>
						<div
							style="display: flex; flex-direction: column; cursor: pointer; padding: 38px 28px 28px 28px">
							<p style="color: #777777; font-size: 17px; font-weight: 500">경기
								안산시</p>
							<p
								style="color: #333333; font-size: 23px; font-weight: 500; margin-top: 12px; text-overflow:">네발친구묭실
								⚡️</p>
							<div style="margin-top: 24px; display: flex; align-items: center">
								<span
									style="background: #F8F8F8; color: #999999; font-size: 15px; border-radius: 5px; height: 28px; padding: 4px 10px; margin-right: 8px; font-weight: 500">소형견</span><span
									style="background: #F8F8F8; color: #999999; font-size: 15px; border-radius: 5px; height: 28px; padding: 4px 10px; margin-right: 8px; font-weight: 500">중형견</span><span
									style="background: #F8F8F8; color: #999999; font-size: 15px; border-radius: 5px; height: 28px; padding: 4px 10px; margin-right: 8px; font-weight: 500">대형견</span><span
									style="background: #F8F8F8; color: #999999; font-size: 15px; border-radius: 5px; height: 28px; padding: 4px 10px; margin-right: 8px; font-weight: 500">고양이</span>
							</div>
						</div>
					</div>
					<div
						style="width: 480px; border: 1px solid #EBEBEB; display: flex; flex-direction: column; border-radius: 8px; box-shadow: 0px 0px 12px 0px rgba(0, 0, 0, 0.07); background-color: white; padding: 10px">
						<div style="position: relative; width: 460px; height: 265px">
							<div
								style="position: absolute; bottom: 15px; width: 460px; justify-content: center; align-content: center; z-index: 2">
								<div
									style="display: flex; justify-content: center; align-items: center">
									<div
										style="width: 10px; height: 10px; border-radius: 50%; background-color: white; margin-left: 4px; margin-right: 4px; z-index: 99999"></div>
									<div
										style="width: 8px; height: 8px; border-radius: 50%; background-color: rgba(255, 255, 255, 0.7); margin-left: 4px; margin-right: 4px; z-index: 99999"></div>
									<div
										style="width: 8px; height: 8px; border-radius: 50%; background-color: rgba(255, 255, 255, 0.7); margin-left: 4px; margin-right: 4px; z-index: 99999"></div>
								</div>
							</div>
							<div class="swiper-container">
								<div class="swiper-wrapper">
									<div class="swiper-slide">
										<img
											src="https://dugs12pdb1jsf.cloudfront.net/resized/groomingshop/88fae721271d4698b3ccce963ea7a74c.jpeg"
											style="width: 460px; height: 265px; object-fit: cover; border-radius: 5px; cursor: pointer" />
									</div>									
								</div>
							</div>
						</div>
						<div
							style="display: flex; flex-direction: column; cursor: pointer; padding: 38px 28px 28px 28px">
							<p style="color: #777777; font-size: 17px; font-weight: 500">서울
								중랑구</p>
							<p
								style="color: #333333; font-size: 23px; font-weight: 500; margin-top: 12px; text-overflow:">김고은
								그루밍샵 ⚡️</p>
							<div style="margin-top: 24px; display: flex; align-items: center">
								<span
									style="background: #F8F8F8; color: #999999; font-size: 15px; border-radius: 5px; height: 28px; padding: 4px 10px; margin-right: 8px; font-weight: 500">소형견</span><span
									style="background: #F8F8F8; color: #999999; font-size: 15px; border-radius: 5px; height: 28px; padding: 4px 10px; margin-right: 8px; font-weight: 500">중형견</span><span
									style="background: #F8F8F8; color: #999999; font-size: 15px; border-radius: 5px; height: 28px; padding: 4px 10px; margin-right: 8px; font-weight: 500">대형견</span><span
									style="background: #F8F8F8; color: #999999; font-size: 15px; border-radius: 5px; height: 28px; padding: 4px 10px; margin-right: 8px; font-weight: 500">고양이</span>
							</div>
						</div>
					</div>
					<div
						style="width: 480px; border: 1px solid #EBEBEB; display: flex; flex-direction: column; border-radius: 8px; box-shadow: 0px 0px 12px 0px rgba(0, 0, 0, 0.07); background-color: white; padding: 10px">
						<div style="position: relative; width: 460px; height: 265px">
							<div
								style="position: absolute; bottom: 15px; width: 460px; justify-content: center; align-content: center; z-index: 2">
								<div
									style="display: flex; justify-content: center; align-items: center">
									<div
										style="width: 10px; height: 10px; border-radius: 50%; background-color: white; margin-left: 4px; margin-right: 4px; z-index: 99999"></div>
									<div
										style="width: 8px; height: 8px; border-radius: 50%; background-color: rgba(255, 255, 255, 0.7); margin-left: 4px; margin-right: 4px; z-index: 99999"></div>
									<div
										style="width: 8px; height: 8px; border-radius: 50%; background-color: rgba(255, 255, 255, 0.7); margin-left: 4px; margin-right: 4px; z-index: 99999"></div>
								</div>
							</div>
							<div class="swiper-container">
								<div class="swiper-wrapper">
									<div class="swiper-slide">
										<img
											src="https://dugs12pdb1jsf.cloudfront.net/groomingshop/738250c1457b49ce9f1a75850a1521fd.jpg"
											style="width: 460px; height: 265px; object-fit: cover; border-radius: 5px; cursor: pointer" />
									</div>
								</div>
							</div>
						</div>
						<div
							style="display: flex; flex-direction: column; cursor: pointer; padding: 38px 28px 28px 28px">
							<p style="color: #777777; font-size: 17px; font-weight: 500">대구
								달서구</p>
							<p
								style="color: #333333; font-size: 23px; font-weight: 500; margin-top: 12px; text-overflow:">댕발머리
								⚡️</p>
							<div style="margin-top: 24px; display: flex; align-items: center">
								<span
									style="background: #F8F8F8; color: #999999; font-size: 15px; border-radius: 5px; height: 28px; padding: 4px 10px; margin-right: 8px; font-weight: 500">소형견</span><span
									style="background: #F8F8F8; color: #999999; font-size: 15px; border-radius: 5px; height: 28px; padding: 4px 10px; margin-right: 8px; font-weight: 500">중형견</span><span
									style="background: #F8F8F8; color: #999999; font-size: 15px; border-radius: 5px; height: 28px; padding: 4px 10px; margin-right: 8px; font-weight: 500">대형견</span><span
									style="background: #F8F8F8; color: #999999; font-size: 15px; border-radius: 5px; height: 28px; padding: 4px 10px; margin-right: 8px; font-weight: 500">고양이</span>
							</div>
						</div>
					</div>
				</div>
</body>
</html>