## - 커스텀 유저 곡 가이드라인

<div align = "center">
  
<img src = "imgs\Imoji\imoji4.gif" width = "180px">


#### 쉽게 따라하실 수 있게 이미지와 함께 자세히 설명을 적어뒀습니다!

천천히 읽어보시면서 따라해보세요

</br></br> 


<b> *커스텀 맵을 제작하려고 했는데 갑자기 여기로 들어와 졌다면!*

```스테이지 파일 오류가 생겼어요!```항목을 확인해주세요! </b>

</div>

-------------
<details>
<summary> 스테이지 파일 오류가 생겼어요! <b> [클릭] </b></summary>

-------------

<div align = "center">

갑자기 해당 사이트로 들어와진 경우, <b>*스테이지 파일을 불러오는데 오류가 발생*</b>하였기 때문입니다.

</br></br>

#### 오류가 발생하는 이유는 이미지 파일과 오디오 파일이 누락되었기 때문입니다.
맵을 제작하기 전, 오디오 파일과 앨범 이미지 파일을 적용시켜줘야 합니다!

이와 관련해선 아래 설명이 자세히 적혀있으니 아래로 쭉 내려서 확인해보세요!

</div>

</div>

<br><br><br><br><br>

-------------

</details>




<details>
<summary>생성된 커스텀 맵 파일 위치 <b> [클릭] </b></summary>

-------------

<div align = "center">

<img src = "imgs\Guideline_imgs\gl3.PNG" width = "480px">

커스텀 맵 파일들은 게임 실행파일이 있는 위치에 ```Custom_map_file_(숫자)```폴더 속에 존재합니다.

커스텀 맵을 생성할 경우, ```custom_map_file_(숫자)```<b> 숫자가 적혀진 폴더 </b>가 생성됩니다.

*폴더 이름은 원하는 이름으로 마음대로 변경 가능합니다. <b> (게임을 종료한 상태여야 변경 가능합니다) </b>

</div>

<br><br><br><br><br>

-------------

</details>


<details>
<summary>커스텀 맵 정보 입력 <b> [클릭] </b></summary>

-------------

<div align = "center">

<img src = "imgs\Guideline_imgs\gl4.PNG" width = "480px">

커스텀 맵 파일이 존재하는 폴더에 들어가 ```map_info.ini```파일을

``마우스 우클릭``을 누른 뒤  ```연결 프로그램' -> '메모장```을 선택해 파일을 열어줍니다.

메모장 파일에 적혀져 있는 글씨에 각각의 값을 입력하여 커스텀 맵의 정보를 입력해줍니다.


</br></br></br></br></br>



#### (모든 값은 반드시 따옴표를 포함합니다)

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

|[custom_stage_map_color]|Hex값이란?|
|---|---|
|맵의 대표 컬러 (Hex값으로만 입력 가능합니다)|잘 모르시면 <a href = "https://imagecolorpicker.com/en">Hex값 변환 사이트</a>에서 원하는 색을 hex값으로 변환 가능합니다.<br>(hex값은 다음과 같이 적혀있습니다 #ffffff)|

</div>

<br><br><br><br><br>

-------------

</details>


<details>
<summary>커스텀 맵 앨범 이미지 적용 <b> [클릭] </b></summary>

-------------

<div align = "center">

<img src = "imgs\Guideline_imgs\gl6.PNG" width = "480px">

원하는 이미지 파일을 커스텀 맵 폴더 안에 넣어주세요. <b> (*이미지 파일 이름은 뭐든 상관 없습니다) </b>

#### (이미지 파일 확장자명은 png, jpeg, jpg만 사용 가능하며, 사이즈는 512x512px 이상의 정사각형 사이즈를 사용해주세요)

</div>

<br><br><br><br><br>

-------------

</details>

<details>
<summary>커스텀 맵 음악 적용 <b> [클릭] </b></summary>

-------------

<div align = "center">

<img src = "imgs\Guideline_imgs\gl6.PNG" width = "480px">

원하는 곡의 mp3파일을 <a href = "https://convertio.co/mp3-ogg/">해당 사이트</a>에서 ogg파일로 변경해주세요.

변환된 음악 파일을 커스텀 맵 폴더 안에 넣어주세요. <b> (*음악 파일 이름은 뭐든 상관 없습니다) </b>


</div>

<br><br><br><br><br>

-------------

</details>

<details>
<summary>커스텀 탄막 이미지 <b> [클릭] </b></summary>

-------------

<div align = "center">

<img src = "imgs\Guideline_imgs\gl8.PNG" width = "480px">

커스텀 탄막 이미지를 추가하고 싶은 맵의 파일이 존재하는 폴더로 들어갑니다.

폴더 안의 ```custom_hitbox_image``` 폴더에서 ```center_origin```폴더 혹은 ```top_origin```폴더에 들어갑니다.

[```center_origin```과 ```top_origin```의 차이는 이미지 회전시의 중심축의 위치가 다르다는 차이점이 있습니다]

= 대부분의 탄막은 ```center_origin```를 사용하기 때문에 해당 폴더 안에 이미지를 넣어주시면 됩니다.

</br></br>


<img src = "imgs\Guideline_imgs\gl7.PNG" width = "480px">

#### - 주의! -

확장자가 반드시 ```.png```여야 합니다. <b> (*이미지 파일 이름은 뭐든 상관 없습니다) </b>

이미지의 색은 반드시 ```완전한 흰색```으로만 이루어져 있어야 게임 내에서 색 변경 가능합니다.

이미지의 배경은 반드시 투명해야 합니다.

이미지 사이즈는 512x512를 권장합니다. <b> (*오류 발생 가능성 있음) </b>

</div>

<br><br><br><br><br>

-------------

</details>





-------------

<div align = "center">

#### 이외에 궁금하신 점이 있다면, 아래 디스코드에 접속해 DM으로 메세지 주세요!

[![](https://discordapp.com/api/guilds/958378000414568558/embed.png?style=banner2)](https://discord.gg/hzbCTRemqq)

</div>
