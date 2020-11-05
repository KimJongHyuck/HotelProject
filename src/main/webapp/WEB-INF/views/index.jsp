<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
        content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>호텔 예약 프로젝트</title>
    <!--Font awesome CDN-->

</head>

<body>
 <%@ include file="include/header.jsp"%>

    <main>
        <div class="hero">
            <div class="container">
                <div class="main-heading">
                    <h1 class="title">당신이 찾는 호텔</h1>
                    <h2 class="subtitle">Global Hotel...</h2>
                </div>
                <a href="#" class="btn btn-gradient">
                    <span class="dots"><i class="fas fa-ellipsis-h"></i></span>
                </a>
            </div>
        </div>

      <!--   <section class="booking">
            <div class="container">
                <form action="" class="book-form">

                    <div class="input-group">
                        <label for="destination" class="input-label">목적지</label>
                        <input type="text" class="input" id="destination">
                    </div>

                    <div class="input-group">
                        <label for="check-in" class="input-label">예약일</label>
                        <input type="date" class="input" id="check-in">
                    </div>

                    <div class="input-group">
                        <label for="check-out" class="input-label">퇴실일</label>
                        <input type="date" class="input" id="check-out">
                    </div>

                    <div class="input-group">
                        <label for="adults" class="input-label">성인</label>
                        <select class="options" id="adults">
                            <option value="0">0</option>
                            <option value="0">1</option>
                            <option value="0">2</option>
                            <option value="0">3</option>
                            <option value="0">4</option>
                            <option value="0">5</option>
                        </select>
                    </div>

                    <div class="input-group">
                        <label for="children" class="input-label">아동/어린이</label>
                        <select class="options" id="children">
                            <option value="0">0</option>
                            <option value="0">1</option>
                            <option value="0">2</option>
                            <option value="0">3</option>
                            <option value="0">4</option>
                            <option value="0">5</option>
                        </select>
                    </div>

                    <button type="submit" class="btn form-btn btn-purple">
                        <span class="dots"><i class="fas fa-ellipsis-h"></i></span>
                    </button>
                </form>
            </div>
        </section> -->

        <section class="hotels">
            <div class="container">
                <h5 class="section-head">
                    <span class="heading">Explore</span>
                    <span class="sub-heading">Our beautiful hotels</span>
                </h5>
                <div class="grid">
                    <div class="grid-item featured-hotels">
                        <img src="${pageContext.request.contextPath}/resources/images/hotel_astro_resort.jpg" alt="" class="hotel-image">
                        <h5 class="hotel-name">Astro Hotel</h5>
                        <span class="hotel-price">From $200/Night</span>
                        <div class="hotel-rating">
                            <i class="fas fa-star rating"></i>
                            <i class="fas fa-star rating"></i>
                            <i class="fas fa-star rating"></i>
                            <i class="fas fa-star rating"></i>
                            <i class="fas fa-star-half rating"></i>
                        </div>

                        <a href="#" class="btn btn-gradient">Book now
                            <span class="dots"><i class="fas fa-ellipsis-h"></i></span>
                        </a>
                    </div>

                    <div class="grid-item featured-hotels">
                        <img src="${pageContext.request.contextPath}/resources/images/hotel_the_enchanted_garden.jpg" alt="" class="hotel-image">
                        <h5 class="hotel-name">Enchanted Garden</h5>
                        <span class="hotel-price">From $300/Night</span>
                        <div class="hotel-rating">
                            <i class="fas fa-star rating"></i>
                            <i class="fas fa-star rating"></i>
                            <i class="fas fa-star rating"></i>
                            <i class="fas fa-star rating"></i>
                            <i class="fas fa-star rating"></i>
                        </div>

                        <a href="#" class="btn btn-gradient">Book now
                            <span class="dots"><i class="fas fa-ellipsis-h"></i></span>
                        </a>
                    </div>

                    <div class="grid-item featured-hotels">
                        <img src="${pageContext.request.contextPath}/resources/images/hotel_the_paradise.jpg" alt="" class="hotel-image">
                        <h5 class="hotel-name">The Paradise</h5>
                        <span class="hotel-price">From $350/Night</span>
                        <div class="hotel-rating">
                            <i class="fas fa-star rating"></i>
                            <i class="fas fa-star rating"></i>
                            <i class="fas fa-star rating"></i>
                            <i class="fas fa-star rating"></i>
                            <i class="fas fa-star-half rating"></i>
                        </div>

                        <a href="#" class="btn btn-gradient">Book now
                            <span class="dots"><i class="fas fa-ellipsis-h"></i></span>
                        </a>
                    </div>
                </div>
            </div>
        </section>

        <section class="offer">
            <div class="container">
                <div class="offer-content">
                    <div class="discount">
                        40% off
                    </div>
                    <h5 class="hotel-name">The Paradise</h5>
                    <div class="hotel-rating">
                        <i class="fas fa-star rating"></i>
                        <i class="fas fa-star rating"></i>
                        <i class="fas fa-star rating"></i>
                        <i class="fas fa-star rating"></i>
                        <i class="fas fa-star-half rating"></i>
                    </div>
                    <p class="paragraph">
                        가나다라마바사아자차카타파하 abcdefghijklmnopqrxtuvwxyz
                        かきくけこ　たちつてと　なにぬねの　まみむめも
                        はひふへほ　さしすせそ　らりるれろ　あいうえお
                        ㅁㄴㅇㄹㄴㅁㅇㄻㄴㅇㄻㄴㅇㄻㄴㅇㄻㄴㅇㄻㄴㄻㄴㅇㄻㄴㅇㄻㄴㅇㄻㄴㅇㄻㄴㅇㄻㄴㅇㄹ
                    </p>
                    <a href="#" class="btn btn-gradient">Redeem offer
                        <span class="dots"><i class="fas fa-ellipsis-h"></i></span>
                    </a>

                </div>
            </div>
        </section>

        <section class="rooms">
            <div class="container">
              
                <h5 class="section-head">
                    <span class="heading">Luxurious</span>
                    <span class="sub-heading">Affordable rooms</span>
                </h5>
                
                <div class="grid rooms-grid">
                 
                    <div class="grid-item featured-rooms">
                        <div class="image-wrap">
                            <img class="room-image" src="${pageContext.request.contextPath}/resources/images/room_1.jpg" alt="">
                            <h5 class="room-name">Astro Hotel</h5>
                        </div>
                        <div class="room-info-wrap">
                            <span class="room-price">$200
                                <span class="per-night">Per night</span>
                            </span>
                            <p class="paragraph">
                                방 1 
                            </p>
                            
                            <a href="#" class="btn rooms-btn">Book now &rarr;</a>
                        </div>
                    </div>

                    <div class="grid-item featured-rooms">
                        <div class="image-wrap">
                            <img class="room-image" src="${pageContext.request.contextPath}/resources/images/room_2.jpg" alt="">
                            <h5 class="room-name">Astro Hotel</h5>
                        </div>
                        <div class="room-info-wrap">
                            <span class="room-price">$200
                                <span class="per-night">Per night</span>
                            </span>
                            <p class="paragraph">
                                방 2 
                            </p>
                            
                            <a href="#" class="btn rooms-btn">Book now &rarr;</a>
                        </div>
                    </div>
                    
                    <div class="grid-item featured-rooms">
                        <div class="image-wrap">
                            <img class="room-image" src="${pageContext.request.contextPath}/resources/images/room_3.jpg" alt="">
                            <h5 class="room-name">Astro Hotel</h5>
                        </div>
                        <div class="room-info-wrap">
                            <span class="room-price">$200
                                <span class="per-night">Per night</span>
                            </span>
                            <p class="paragraph">
                                방 3    
                            </p>
                            
                            <a href="#" class="btn rooms-btn">Book now &rarr;</a>
                        </div>

                    </div>
                    
                    <div class="grid-item featured-rooms">
                        <div class="image-wrap">
                            <img class="room-image" src="${pageContext.request.contextPath}/resources/images/room_4.jpg" alt="">
                            <h5 class="room-name">Astro Hotel</h5>
                        </div>
                        <div class="room-info-wrap">
                            <span class="room-price">$200
                                <span class="per-night">Per night</span>
                            </span>
                            <p class="paragraph">
                                방 4    
                            </p>
                            
                            <a href="#" class="btn rooms-btn">Book now &rarr;</a>
                        </div>
                    </div>

                    
                    <div class="grid-item featured-rooms">
                        <div class="image-wrap">
                            <img class="room-image" src="${pageContext.request.contextPath}/resources/images/room_5.jpg" alt="">
                            <h5 class="room-name">Astro Hotel</h5>
                        </div>
                        <div class="room-info-wrap">
                            <span class="room-price">$200
                                <span class="per-night">Per night</span>
                            </span>
                            <p class="paragraph">
                                방 5    
                            </p>
                            
                            <a href="#" class="btn rooms-btn">Book now &rarr;</a>
                        </div>
                    </div>
                    <div class="grid-item featured-rooms">
                        <div class="image-wrap">
                            <img class="room-image" src="${pageContext.request.contextPath}/resources/images/room_6.jpg" alt="">
                            <h5 class="room-name">Astro Hotel</h5>
                        </div>
                        <div class="room-info-wrap">
                            <span class="room-price">$200
                                <span class="per-night">Per night</span>
                            </span>
                            <p class="paragraph">
                                방 6    
                            </p>
                            
                            <a href="#" class="btn rooms-btn">Book now &rarr;</a>
                        </div>
                    </div>
                    <div class="grid-item featured-rooms">
                        <div class="image-wrap">
                            <img class="room-image" src="${pageContext.request.contextPath}/resources/images/room_7.jpg" alt="">
                            <h5 class="room-name">Astro Hotel</h5>
                        </div>
                        <div class="room-info-wrap">
                            <span class="room-price">$200
                                <span class="per-night">Per night</span>
                            </span>
                            <p class="paragraph">
                                방 7    
                            </p>
                            
                            <a href="#" class="btn rooms-btn">Book now &rarr;</a>
                        </div>
                    </div>
                    <div class="grid-item featured-rooms">
                        <div class="image-wrap">
                            <img class="room-image" src="${pageContext.request.contextPath}/resources/images/room_8.jpg" alt="">
                            <h5 class="room-name">Astro Hotel</h5>
                        </div>
                        <div class="room-info-wrap">
                            <span class="room-price">$200
                                <span class="per-night">Per night</span>
                            </span>
                            <p class="paragraph">
                                방 8    
                            </p>
                            
                            <a href="#" class="btn rooms-btn">Book now &rarr;</a>
                        </div>
                    </div>
                    <div class="grid-item featured-rooms">
                        <div class="image-wrap">
                            <img class="room-image" src="${pageContext.request.contextPath}/resources/images/room_9.jpg" alt="">
                            <h5 class="room-name">Astro Hotel</h5>
                        </div>
                        <div class="room-info-wrap">
                            <span class="room-price">$200
                                <span class="per-night">Per night</span>
                            </span>
                            <p class="paragraph">
                                방 9    
                            </p>
                            
                            <a href="#" class="btn rooms-btn">Book now &rarr;</a>
                        </div>
                    </div>

                    <div class="grid-item featured-rooms">
                        <div class="image-wrap">
                            <img class="room-image" src="${pageContext.request.contextPath}/resources/images/room_10.jpg" alt="">
                            <h5 class="room-name">Astro Hotel</h5>
                        </div>
                        <div class="room-info-wrap">
                            <span class="room-price">$200
                                <span class="per-night">Per night</span>
                            </span>
                            <p class="paragraph">
                                방 10    
                            </p>
                            
                            <a href="#" class="btn rooms-btn">Book now &rarr;</a>
                        </div>
                    </div>

                    
                </div>
            </div>
        </section>

        <section class="contact">
            <div class="container">
                <h5 class="section-head">
                    <span class="heading">Contact</span>
                    <span class="sub-heading">Get in touch with us</span>    
                </h5>    
            
                <div class="contact-content">
                        <div class="traveler-wrap">
                            <img src="${pageContext.request.contextPath}/resources/images/traveler.png" alt="">
                        </div>
                        <form action="" class="form contact-form">
                            <div class="input-group-wrap">
                                <div class="input-group">
                                    <input type="text" class="input" placeholder="Name" required>
                                    <span class="bar"></span>
                                </div>
                            
                                <div class="input-group">
                                    <input type="email" class="input" placeholder="E-mail" required>
                                    <span class="bar"></span>
                                </div>
                            
                            </div>

                                <div class="input-group">
                                    <input type="text" class="input" placeholder="Subject" required>
                                    <span class="bar"></span>
                                </div>
                            
                                <div class="input-group">
                                    <textarea class="input" cols="30" rows="20" placeholder="Message" required></textarea>   
                                    <span class="bar"></span> 
                                </div>
                                
                                <botton type="submit" class="btn form-btn btn-purple">Send Message
                                    <span class="dot"><i class="fas fa-ellipsis-h"></i></span>
                                </botton>

                        </form>
                </div>

            </div>
        </section>

    </main>

     <%@ include file="include/footer.jsp"%>

</body>
</html>