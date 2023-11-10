## - 커스텀 유저 곡 가이드라인

쉽게 따라하실 수 있게 이미지와 함께 자세히 설명을 적어뒀습니다!

천천히 읽어보시면서 따라해보세요


-------------
<details>
<summary>새로운 커스텀 맵 생성</summary>

-------------

<img src = "imgs\Guideline_imgs\gl1.PNG" width = "480px">

'유저 제작 커스텀 곡'리스트로 가줍니다.

<br><br><br>

<img src = "imgs\Guideline_imgs\gl2.PNG" width = "180px">

좌측 하단에 있는 '새로운 커스텀 맵 생성'을 클릭 혹은 'N'키를 눌러 새로운 커스텀 맵을 생성해줍니다.

<br><br><br><br><br>

-------------

</details>

<details>
<summary>생성된 커스텀 맵 파일 위치</summary>

-------------

<img src = "imgs\Guideline_imgs\gl3.PNG" width = "480px">

윈도우의 좌측 하단에 있는 '검색창'에 ```%localappdata%\Project_Wak_Beat\Custom map files```를 입력후 엔터를 눌러 해당 폴더에 들어가줍니다.

들어간 폴더 내에서 ```Custom_map_file_(숫자)```폴더들 중에서 가장 마지막 숫자가 적힌 폴더로 들어가줍니다. (가장 마지막에 생성된 커스텀 맵의 파일은 가장 마지막 숫자가 적혀진 폴더에 생성됩니다.)

<br><br><br><br><br>

-------------

</details>

<details>
<summary>커스텀 맵 정보 입력</summary>

-------------

<img src = "imgs\Guideline_imgs\gl4.PNG" width = "480px">

커스텀 맵 파일이 존재하는 폴더에 들어가 'map_info.ini'파일을 마우스 우클릭을 한 뒤 '연결 프로그램' -> '메모장'을 선택해 파일을 열어줍니다.

메모장 파일에 적혀져 있는 글씨에 각각의 값을 입력하여 커스텀 맵의 정보를 입력해줍니다. (모든 값은 반드시 따옴표를 포함합니다)

맵 정보는 다음과 같은 형식으로 적혀져 있습니다.
```
[custom_stage_map_name]
value = "융터르"

[custom_stage_bpm]
value="180.000000"

[custom_stage_map_highlight_part]
value="32.000000"
...
```
<img src = "imgs\Guideline_imgs\gl5.PNG">


|[custom_stage_bpm]|[custom_requirement_level]|[custom_stage_map_map_by]|[custom_stage_map_name]|[custom_stage_map_artist]|[custom_stage_map_difficulty]|[custom_stage_map_highlight_part]|[custom_detailed_difficulty]|
|---|---|---|---|---|---|---|---|
|음악의 BPM값<br>(소수점 사용 가능)|맵 해금 레벨<br>(0~999사이의 정수)|맵 제작자<br>(원하시는 본인 이름 적으시면 됩니다)|맵 이름<br>(음악 제목 적으시면 됩니다)|아티스트<br>(곡 작곡가 적으시면 됩니다)|맵 난이도<br>(원하시는 맵 난이도를 적어주세면 됩니다 ex: Expert)|해당 곡의 하이라이트 부분<br>(소수점도 입력 가능하며, 단위는 '초'입니다)|맵 난이도<br>(사각형으로 표기되는 난이도를 나타냅니다. 0~9사이의 숫자만 입력 가능하며, 0.5단위로 입력 가능합니다)|


|[custom_obtainable_type]|value = "0"|value = "1"|value = "2"|value = "3"|value = "4"|value = "5"|value = "6"|value = "7"|value = "8"|
|---|---|---|---|---|---|---|---|---|---|
|해당 맵 클리어시 얻을 수 있는 아티팩트 종류|<img src = "imgs\Artifact_icon\icon0.png" width = "50px">|<img src = "imgs\Artifact_icon\icon1.png" width = "50px">|<img src = "imgs\Artifact_icon\icon2.png" width = "50px">|<img src = "imgs\Artifact_icon\icon3.png" width = "50px">|<img src = "imgs\Artifact_icon\icon4.png" width = "50px">|<img src = "imgs\Artifact_icon\icon5.png" width = "50px">|<img src = "imgs\Artifact_icon\icon6.png" width = "50px">|<img src = "imgs\Artifact_icon\icon7.png" width = "50px">|<img src = "imgs\Artifact_icon\icon8.png" width = "50px">|

|[custom_stage_map_color]|Hex값이란?|
|---|---|
|맵의 대표 컬러 (Hex값으로만 입력 가능합니다)|잘 모르시면 <a href = "https://imagecolorpicker.com/en">Hex값 변환 사이트</a>에서 원하는 색을 hex값으로 변환 가능합니다.<br>(hex값은 다음과 같이 적혀있습니다 #ffffff)|

</details>


<details>
<summary>커스텀 맵 엘범 이미지 적용</summary>

-------------

<img src = "imgs\Guideline_imgs\gl6.PNG" width = "480px">

원하는 이미지 파일을 커스텀 맵 폴더 안에 넣어주세요.

파일 이름을 '무조건' 다음과 같이 설정해줍니다. ```album``` (대소문자 구분 주의)

(이미지 파일 확장자명은 png, PNG, jpg만 가능합니다)

<br><br><br><br><br>

-------------

</details>

<details>
<summary>커스텀 맵 음악 적용</summary>

-------------

<img src = "imgs\Guideline_imgs\gl6.PNG" width = "480px">

원하는 곡의 mp3파일을 <a href = "https://convertio.co/mp3-ogg/">해당 사이트</a>에서 ogg파일로 변경해주세요.

변환된 음악 파일을 커스텀 맵 폴더 안에 넣어주세요.

파일 이름을 '무조건' 다음과 같이 설정해줍니다. ```audio``` (대소문자 구분 주의)

<br><br><br><br><br>

-------------

</details>



-------------
