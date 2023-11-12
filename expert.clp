(defrule p1 (or ?p <- (start)) =>
   (printout t crlf crlf "What is yur budget for Overseas Trip " 
   crlf " 1. Below Rs.300,000" 
   crlf " 2. Between Rs.300,000 and Rs.900,000 " 
   crlf " 3. Above Rs.900,000" 
   crlf crlf "Enter Your Answer (1|2|3): ")
   (assert (budget (read)))
   (retract ?p))
   
;-----------Ask Preferred Climate from Low-budget and Mid-budget users ---------------------

(defrule ask-climate-low-mid-budget (or(budget 1)(budget 2)) =>
   (printout t crlf crlf "Your prefer climate is ," crlf " 1. Sunny and Warm" crlf " 2. Cold and Fresh" crlf " 3. Tropical" 
   crlf crlf "Enter Your Answer (1|2|3): ")
   (assert (climate-low-mid-budget (read))))
   
;-----------Ask Preferred Activities to do from Low-badget and Mid-budget users --------------------- 

(defrule ask-Sunny-Warm-activities-low-mid-budget (climate-low-mid-budget 1)=>
(printout t crlf crlf "What activities do you enjoy during your Trip" 
crlf " 1. Beach and Water Activities" 
crlf " 2. Outdoor Adventures"
crlf " 3. Relaxation and Nature Explore"
crlf " 4. Dining and Nightlife"
crlf crlf "Enter Your Answer (1|2|3|4): ")
(assert(Sunny-Warm-activities-low-mid-budget (read))))
   
(defrule ask-Cold-Fresh-activities-low-mid-budget (climate-low-mid-budget 2)=>
(printout t crlf crlf "What activities do you enjoy during your Trip" 
crlf " 1. Hiking and Trekking" 
crlf " 2. Wildlife Observation"
crlf " 3. Relaxation"
crlf " 4. Cultural Exploration"
crlf crlf "Enter Your Answer (1|2|3|4): ")
(assert(Cold-Fresh-activities-low-mid-budget (read))))
   
(defrule ask-Tropical-activities-low-mid-budget (climate-low-mid-budget 3)=>
(printout t crlf crlf "What activities do you enjoy during your Trip" 
crlf " 1. Adventure Sports" 
crlf " 2. Relax"
crlf " 3. Cruise and Boat Tours"
crlf " 4. Cultural Explore"
crlf crlf "Enter Your Answer (1|2|3|4): ")
(assert(Tropical-low-mid-budget (read))))   
   
;-----------Ask Preferred Climate from High budget users ---------------------
(defrule ask-climate-high-budget (budget 3)=>
   (printout t crlf crlf "Your prefer climate is ," crlf " 1. Sunny and Warm" crlf " 2. Cold and Fresh" crlf " 3. Tropical" 
   crlf crlf "Enter Your Answer (1|2|3): ")
   (assert (climate-high-budget (read))))

;-----------Ask Preferred Activities to do from High badget users --------------------- 
 
(defrule ask-Sunny-Warm-activities-high-budget (climate-high-budget 1)=>
(printout t crlf crlf "What activities do you enjoy during your Trip" 
crlf " 1. Private Beach Experiences" 
crlf " 2. Yacht or Catamaran Charter"
crlf " 3. Desert Safar"
crlf " 4. Gourmet Dining"
crlf crlf "Enter Your Answer (1|2|3|4): ")
(assert(Sunny-Warm-activities-high-budget (read))))
  
(defrule ask-Cold-Fresh-activities-high-budget (climate-high-budget 2)=>
(printout t crlf crlf "What activities do you enjoy during your Trip" 
crlf " 1. Exclusive Winter Resorts" 
crlf " 2. Dog Sledding Expeditions"
crlf " 3. Luxury Spa Retreats"
crlf " 4. Helicopter Tours"
crlf crlf "Enter Your Answer (1|2|3|4): ")
(assert(Cold-Fresh-activities-high-budget (read))))
     
(defrule ask-Tropical-activities-high-budget (climate-high-budget  3)=>
(printout t crlf crlf "What activities do you enjoy during your Trip" 
crlf " 1. Adventure " 
crlf " 2. Relax"
crlf " 3. Private Island Resorts"
crlf " 4. Whale Watching"
crlf " 5. Diving "
crlf crlf "Enter Your Answer (1|2|3|4|5): ")
(assert(Tropical-high-budget (read))))  


;-----------Travel Destination Recommendation---------------------


;-----------Rule-01 low budget , Sunny-Warm , Beach and Water Activities Destination ---------------------
(defrule destination1 (budget 1)(climate-low-mid-budget 1)(Sunny-Warm-activities-low-mid-budget 1) => 
(printout t crlf crlf "Recommended Travel Destination is: -- Goa , India --" crlf crlf)) 

;-----------Rule-02 low budget , Sunny-Warm , Outdoor Adventures Destination ---------------------
(defrule destination2 (budget 1)(climate-low-mid-budget 1)(Sunny-Warm-activities-low-mid-budget 2) => 
(printout t crlf crlf "Recommended Travel Destination is: -- Koh Samui, Thailand --" crlf crlf)) 

;-----------Rule-03 low budget , Sunny-Warm , Relaxation and Nature Explore Destination ---------------------
(defrule destination3 (budget 1)(climate-low-mid-budget 1)(Sunny-Warm-activities-low-mid-budget 3) => 
(printout t crlf crlf "Recommended Travel Destination is: -- Krabi, Thailand --" crlf crlf)) 

;-----------Rule-04 low budget , Sunny-Warm , Dining and Nightlife Destination ---------------------
(defrule destination4 (budget 1)(climate-low-mid-budget 1)(Sunny-Warm-activities-low-mid-budget 4) => 
(printout t crlf crlf "Recommended Travel Destination is: -- Ho Chi Minh City, Vietnam --" crlf crlf)) 



;-----------Rule-05 low budget , Cold-Fresh , Hiking and Trekking Destination ---------------------
(defrule destination5 (budget 1)(climate-low-mid-budget 2)(Cold-Fresh-activities-low-mid-budget 1) => 
(printout t crlf crlf "Recommended Travel Destination is: -- Pokhara, Nepal --" crlf crlf)) 

;-----------Rule-06 low budget , Cold-Fresh , Wildlife Observation Destination ---------------------
(defrule destination6 (budget 1)(climate-low-mid-budget 2)(Cold-Fresh-activities-low-mid-budget 2) => 
(printout t crlf crlf "Recommended Travel Destination is: -- Shimla, India --" crlf crlf)) 

;-----------Rule-07 low budget , Cold-Fresh , Relaxation Destination ---------------------
(defrule destination7 (budget 1)(climate-low-mid-budget 2)(Cold-Fresh-activities-low-mid-budget 3) => 
(printout t crlf crlf "Recommended Travel Destination is: -- Genting Highlands, Malaysia --" crlf crlf)) 

;-----------Rule-08 low budget , Cold-Fresh , Cultural Exploration Destination ---------------------
(defrule destination8 (budget 1)(climate-low-mid-budget 2)(Cold-Fresh-activities-low-mid-budget 4) => 
(printout t crlf crlf "Recommended Travel Destination is: -- McLeod Ganj, India --" crlf crlf)) 



;-----------Rule-09 low budget , Tropical , Adventure Sports Destination ---------------------
(defrule destination9 (budget 1)(climate-low-mid-budget 3)(Tropical-activities-low-mid-budget 1) => 
(printout t crlf crlf "Recommended Travel Destination is: -- Rishikesh, India --" crlf crlf)) 

;-----------Rule-10 low budget , Tropical , Relax Destination ---------------------
(defrule destination10 (budget 1)(climate-low-mid-budget 3)(Tropical-activities-low-mid-budget 2) => 
(printout t crlf crlf "Recommended Travel Destination is: -- Bali, Indonesia --" crlf crlf)) 

;-----------Rule-11 low budget , Tropical , Cruise and Boat Tours Destination ---------------------
(defrule destination11 (budget 1)(climate-low-mid-budget 3)(Tropical-activities-low-mid-budget 3) => 
(printout t crlf crlf "Recommended Travel Destination is: -- Langkawi, Malaysia --" crlf crlf)) 

;-----------Rule-12 low budget , Tropical , Cultural Explore Destination ---------------------
(defrule destination12 (budget 1)(climate-low-mid-budget 3)(Tropical-activities-low-mid-budget 4) => 
(printout t crlf crlf "Recommended Travel Destination is: -- Hanoi, Vietnam --" crlf crlf)) 






;-----------Rule-13 mid budget , Sunny-Warm , Beach and Water Activities Destination ---------------------
(defrule destination13 (budget 2)(climate-low-mid-budget 1)(Sunny-Warm-activities-low-mid-budget 1) => 
(printout t crlf crlf "Recommended Travel Destination is: -- Bali, Indonesia --" crlf crlf)) 

;-----------Rule-14 mid budget , Sunny-Warm , Outdoor Adventures Destination ---------------------
(defrule destination14 (budget 2)(climate-low-mid-budget 1)(Sunny-Warm-activities-low-mid-budget 2) => 
(printout t crlf crlf "Recommended Travel Destination is: -- Costa Rica --" crlf crlf)) 

;-----------Rule-15 mid budget , Sunny-Warm , Relaxation and Nature Explore Destination ---------------------
(defrule destination15 (budget 2)(climate-low-mid-budget 1)(Sunny-Warm-activities-low-mid-budget 3) => 
(printout t crlf crlf "Recommended Travel Destination is: -- Phuket, Thailand --" crlf crlf)) 

;-----------Rule-16 mid budget , Sunny-Warm , Dining and Nightlife Destination ---------------------
(defrule destination16 (budget 2)(climate-low-mid-budget 1)(Sunny-Warm-activities-low-mid-budget 4) => 
(printout t crlf crlf "Recommended Travel Destination is: -- Bangkok, Thailand --" crlf crlf)) 



;-----------Rule-17 mid budget , Cold-Fresh , Hiking and Trekking Destination ---------------------
(defrule destination17 (budget 2)(climate-low-mid-budget 2)(Cold-Fresh-activities-low-mid-budget 1) => 
(printout t crlf crlf "Recommended Travel Destination is: -- Jiuzhaigou Valley, China --" crlf crlf)) 

;-----------Rule-18 mid budget , Cold-Fresh , Wildlife Observation Destination ---------------------
(defrule destination18 (budget 2)(climate-low-mid-budget 2)(Cold-Fresh-activities-low-mid-budget 2) => 
(printout t crlf crlf "Recommended Travel Destination is: -- Great Himalayan National Park, India --" crlf crlf)) 

;-----------Rule-19 mid budget , Cold-Fresh , Relaxation Destination ---------------------
(defrule destination19 (budget 2)(climate-low-mid-budget 2)(Cold-Fresh-activities-low-mid-budget 3) => 
(printout t crlf crlf "Recommended Travel Destination is: -- Manali, Himachal Pradesh --" crlf crlf)) 

;-----------Rule-20 mid budget , Cold-Fresh , Cultural Exploration Destination ---------------------
(defrule destination20 (budget 2)(climate-low-mid-budget 2)(Cold-Fresh-activities-low-mid-budget 4) => 
(printout t crlf crlf "Recommended Travel Destination is: -- Pai, Thailand --" crlf crlf)) 



;-----------Rule-21 mid budget , Tropical , Adventure Sports Destination ---------------------
(defrule destination21 (budget 2)(climate-low-mid-budget 3)(Tropical-activities-low-mid-budget 1) => 
(printout t crlf crlf "Recommended Travel Destination is: -- Bali , Indonesia --" crlf crlf)) 

;-----------Rule-22 mid budget , Tropical , Relax Destination ---------------------
(defrule destination22 (budget 2)(climate-low-mid-budget 3)(Tropical-activities-low-mid-budget 2) => 
(printout t crlf crlf "Recommended Travel Destination is: -- Azerbaijan Village Life --" crlf crlf)) 

;-----------Rule-23 mid budget , Tropical , Cruise and Boat Tours Destination ---------------------
(defrule destination23 (budget 2)(climate-low-mid-budget 3)(Tropical-activities-low-mid-budget 3) => 
(printout t crlf crlf "Recommended Travel Destination is: -- Phuket, Thailand --" crlf crlf)) 

;-----------Rule-24 mid budget , Tropical , Cultural Explore Destination ---------------------
(defrule destination24 (budget 2)(climate-low-mid-budget 3)(Tropical-activities-low-mid-budget 4) => 
(printout t crlf crlf "Recommended Travel Destination is: -- Ubud, Bali, Indonesia --" crlf crlf)) 






;-----------Rule-25 high budget , Sunny-Warm , Private Beach Experiences Destination ---------------------
(defrule destination25 (budget 3)(climate-high-budget 1)(Sunny-Warm-activities-high-budget 1) => 
(printout t crlf crlf "Recommended Travel Destination is: -- Bora Bora, French Polynesia --" crlf crlf)) 

;-----------Rule-26 high budget , Sunny-Warm , Yacht or Catamaran Charter Destination ---------------------
(defrule destination26 (budget 3)(climate-high-budget 1)(Sunny-Warm-activities-high-budget 2) => 
(printout t crlf crlf "Recommended Travel Destination is: -- French Riviera, France  -- " crlf crlf)) 

;-----------Rule-27 high budget , Sunny-Warm , Desert Safar Destination ---------------------
(defrule destination27 (budget 3)(climate-high-budget 1)(Sunny-Warm-activities-high-budget 3) => 
(printout t crlf crlf "Recommended Travel Destination is: -- Dubai, United Arab Emirates -- " crlf crlf)) 

;-----------Rule-28 high budget , Sunny-Warm , Gourmet Dining Destination ---------------------
(defrule destination28 (budget 3)(climate-high-budget 1)(Sunny-Warm-activities-high-budget 4) => 
(printout t crlf crlf "Recommended Travel Destination is: -- Santorini, Greece -- " crlf crlf)) 



;-----------Rule-29 high budget , Cold-Fresh , Exclusive Winter Resorts Destination ---------------------
(defrule destination29 (budget 3)(climate-high-budget 2)(Cold-Fresh-activities-high-budget 1) => 
(printout t crlf crlf "Recommended Travel Destination is: -- St. Moritz, Switzerland --" crlf crlf)) 

;-----------Rule-30 high budget , Cold-Fresh , Dog Sledding Expeditions Destination ---------------------
(defrule destination30 (budget 3)(climate-high-budget 2)(Cold-Fresh-activities-high-budget 2) => 
(printout t crlf crlf "Recommended Travel Destination is: -- Lapland, Finland --" crlf crlf)) 

;-----------Rule-31 high budget , Cold-Fresh , Luxury Spa Retreats Destination ---------------------
(defrule destination31 (budget 3)(climate-high-budget 2)(Cold-Fresh-activities-high-budget 3) => 
(printout t crlf crlf "Recommended Travel Destination is: -- Whistler, Canada --" crlf crlf)) 

;-----------Rule-32 high budget , Cold-Fresh , Helicopter Tours Destination ---------------------
(defrule destination32 (budget 3)(climate-high-budget 2)(Cold-Fresh-activities-high-budget 4) => 
(printout t crlf crlf "Recommended Travel Destination is: -- Swiss Alps, Switzerland --" crlf crlf)) 



;-----------Rule-33 high budget , Tropical , Adventure Destination ---------------------
(defrule destination33 (budget 3)(climate-high-budget 3)(Tropical-activities-high-budget 1) => 
(printout t crlf crlf "Recommended Travel Destination is: -- Seychelles --" crlf crlf)) 

;-----------Rule-34 high budget , Tropical , Relax Destination ---------------------
(defrule destination34 (budget 3)(climate-high-budget 3)(Tropical-activities-high-budget 2) => 
(printout t crlf crlf "Recommended Travel Destination is: -- Bora Bora, French Polynesia --" crlf crlf)) 

;-----------Rule-35 high budget , Tropical , Private Island Resorts Destination ---------------------
(defrule destination35 (budget 3)(climate-high-budget 3)(Tropical-activities-high-budget 3) => 
(printout t crlf crlf "Recommended Travel Destination is: -- Hamilton Island, Australia --" crlf crlf)) 

;-----------Rule-36 high budget , Tropical , Whale Watching Destination ---------------------
(defrule destination36 (budget 3)(climate-high-budget 3)(Tropical-activities-high-budget 4) => 
(printout t crlf crlf "Recommended Travel Destination is: -- Maui, Hawaii, USA --" crlf crlf)) 

;-----------Rule-37 high budget , Tropical , Diving Destination ---------------------
(defrule destination37 (budget 3)(climate-high-budget 3)(Tropical-activities-high-budget 5) => 
(printout t crlf crlf "Recommended Travel Destination is: -- Key West, Florida --" crlf crlf)) 
