<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <title>Happy Valentine's Day Max!</title>
  <link rel="icon" type="image/jpg" href="favicon.jpg">
  <style>
    /* HELLO MAX! THIS IS MY CSS! */
    body {
      background-image: url('tandem_grey.png');
    }
    body::before {
      content: url('tandem_grey.png') url('broken.png') url('clock.png') url('colors.png') url('theCertificate.png') url('thePerks.png');
      display: none;
    }
    .certificate {
      background: #fff;
      background-image: url('theCertificate.png');
      box-shadow: 0 0 5px #888;
    }
    .benefits {
      background: #fff;
      background-image: url('thePerks.png');
      box-shadow: 0 0 5px #888;
    }
    .no {
      background-image: url('broken.png');
    }
    .yes {
      background-image: url('colors.png');
    }
    .maybe {
      background-image: url('clock.png');
    }
    #image {
      height: 517px;
      width: 780px;
      margin: 50px auto;
    }
  </style>
</head>
<body>

  <div id="image"></div>

  <script>
    // ZOMG. FUNCTION! 改成原生 JS 版本
    function beardedBoo() {
      var body = document.body;
      var image = document.getElementById('image');

      body.classList.remove('no', 'maybe');
      image.classList.remove('benefits', 'certificate');

      var answer = prompt('Will you be my valentine? Yes, No, Maybe?');
      // 防止用户点 “取消” 时报错
      if (answer === null) {
        // 用户取消：什么都不做，或者你想重新问一次也可以
        return;
      }

      answer = answer.trim().toLowerCase();

      // .toLowerCase IS BEST PRACTICE!
      // 也支持只输首字母
      if (answer === 'yes' || answer === 'y') {
        body.classList.add('yes');
        image.classList.add('certificate');
      } else if (answer === 'maybe' || answer === 'm') {
        body.classList.add('maybe');

        // I WANTED THE BG TO CHANGE BEFORE THE ALERT AND THE IMAGE AFTER THE PROMPT AND THE NEXT PROMPT AFTER THAT!
        setTimeout(beardedBoo, 6000);

        setTimeout(function () {
          alert('Perhaps you are not aware of the many benefits');
          image.classList.add('benefits');
        }, 200);

      } else {
        body.classList.add('no');
        setTimeout(function () {
          alert("Say it isn't so. Please try again.");
          beardedBoo();
        }, 200);
      }
    }

    // ALL THESE ALERTS/PROMPTS COULD GET ANNOYING, IT'S BEST TO JUST BE MY VALENTINE
    window.setTimeout(beardedBoo, 300);
  </script>
</body>
</html>
