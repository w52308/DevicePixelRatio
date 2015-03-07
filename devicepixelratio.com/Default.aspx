<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Default.aspx.vb" Inherits="devicepixelratio.com._Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Whats My Device Pixel Ratio?</title>
    <meta name="description" content="Fast and easy display of your device pixel ratio, used for testing for retina or other high-resolution display on devices, as well as screen resolutions and web browser height and width." />
    <meta name="keywords" content="screen resolution, height, width, high-definition, retina, HTML, CSS, JavaScript" />
    <meta name="author" content="Bruce Horst" />
    <meta charset="UTF-8" />
    <style>
        body { font-family: Arial; font-size: 18px; color: #0094ff; padding: 0; margin: 0; text-align: center; background-image:url('/pxGrid.png'); } /**/
        #wrapper { border: 1px solid red; display: inline-block; margin: 45px 0; padding: 10px 30px; background: rgb(255, 255, 255); /* Fall-back for browsers that don't support rgba */ background: rgba(255, 255, 255, .95); -moz-box-shadow: 0 0 25px #000; -webkit-box-shadow: 0 0 25px #000; box-shadow: 0px 0px 25px #000; -webkit-border-radius: 20px; -moz-border-radius: 20px; border-radius: 20px; }
        h1 { font-family: inherit; font-size: 2em; color: inherit; padding: 0; margin: 20px auto; width: 100%; max-width: 600px; text-align: center; text-shadow: 2px 2px 1px rgba(50, 50, 50, 0.9); }
        #numWrap { width: 100%; text-align: center; }
        h2 { font-family: inherit; font-size: 8em; color: inherit; padding: 0; margin: 40px auto 10px auto; display: inline-block; min-width: 200px; text-align: center; color: #fff; -webkit-border-radius: 9px; -moz-border-radius: 9px; border-radius: 9px; text-shadow: 4px 4px 1px rgba(50, 50, 50, 1); -webkit-box-shadow: 5px 5px 5px 0px rgba(0,0,0,0.75); -moz-box-shadow: 5px 5px 5px 0px rgba(0,0,0,0.75); box-shadow: 5px 5px 5px 0px rgba(0,0,0,0.75); background: #1e5799; /* Old browsers */ /* IE9 SVG, needs conditional override of 'filter' to 'none' */ background: url(data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiA/Pgo8c3ZnIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgd2lkdGg9IjEwMCUiIGhlaWdodD0iMTAwJSIgdmlld0JveD0iMCAwIDEgMSIgcHJlc2VydmVBc3BlY3RSYXRpbz0ibm9uZSI+CiAgPGxpbmVhckdyYWRpZW50IGlkPSJncmFkLXVjZ2ctZ2VuZXJhdGVkIiBncmFkaWVudFVuaXRzPSJ1c2VyU3BhY2VPblVzZSIgeDE9IjAlIiB5MT0iMCUiIHgyPSIwJSIgeTI9IjEwMCUiPgogICAgPHN0b3Agb2Zmc2V0PSIwJSIgc3RvcC1jb2xvcj0iIzFlNTc5OSIgc3RvcC1vcGFjaXR5PSIxIi8+CiAgICA8c3RvcCBvZmZzZXQ9IjUwJSIgc3RvcC1jb2xvcj0iIzI5ODlkOCIgc3RvcC1vcGFjaXR5PSIxIi8+CiAgICA8c3RvcCBvZmZzZXQ9IjUxJSIgc3RvcC1jb2xvcj0iIzIwN2NjYSIgc3RvcC1vcGFjaXR5PSIxIi8+CiAgICA8c3RvcCBvZmZzZXQ9IjEwMCUiIHN0b3AtY29sb3I9IiM3ZGI5ZTgiIHN0b3Atb3BhY2l0eT0iMSIvPgogIDwvbGluZWFyR3JhZGllbnQ+CiAgPHJlY3QgeD0iMCIgeT0iMCIgd2lkdGg9IjEiIGhlaWdodD0iMSIgZmlsbD0idXJsKCNncmFkLXVjZ2ctZ2VuZXJhdGVkKSIgLz4KPC9zdmc+); background: -moz-linear-gradient(top, #1e5799 0%, #2989d8 50%, #207cca 51%, #7db9e8 100%); /* FF3.6+ */ background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#1e5799), color-stop(50%,#2989d8), color-stop(51%,#207cca), color-stop(100%,#7db9e8)); /* Chrome,Safari4+ */ background: -webkit-linear-gradient(top, #1e5799 0%,#2989d8 50%,#207cca 51%,#7db9e8 100%); /* Chrome10+,Safari5.1+ */ background: -o-linear-gradient(top, #1e5799 0%,#2989d8 50%,#207cca 51%,#7db9e8 100%); /* Opera 11.10+ */ background: -ms-linear-gradient(top, #1e5799 0%,#2989d8 50%,#207cca 51%,#7db9e8 100%); /* IE10+ */ background: linear-gradient(to bottom, #1e5799 0%,#2989d8 50%,#207cca 51%,#7db9e8 100%); /* W3C */ filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#1e5799', endColorstr='#7db9e8',GradientType=0 ); /* IE6-8 */ }
        h3 { font-family: inherit; font-size: 1.5em; color: inherit; padding: 0; margin: 30px auto; width: 100%; max-width: 600px; text-align: center; text-shadow: 1px 1px 1px rgba(50, 50, 50, 0.7); }
        h6 { font-family: inherit; font-size: 0.8em; padding: 0; margin: 4px 0; }
        table { width: 100%; max-width: 600px; border-collapse: collapse; font-weight: bold; border: 1px solid #0094ff; margin: 20px auto; background-color: #fff; }
        tr { border-bottom: 1px solid #bbb; }
        th { font-size: 2em; }
        th, td { padding: 20px; text-shadow: 1px 1px 1px rgba(50, 50, 50, 0.5);  }
        table tr td:first-child  { text-align: left; }
        table tr td:nth-child(2) { text-align: center; font-size: 2em; }
        tr:nth-child(even) { background: #f3f3f3; }
        .unsupported { font-size: 22px; line-height: 35px; width: 200px; padding: 15px; margin: 10px auto; background: #f00; color: #fff; font-weight: bold; -webkit-border-radius: 15px; -moz-border-radius: 15px; border-radius: 15px; }
      </style>
     <!--[if gte IE 9]>
      <style type="text/css">
        .gradient {
           filter: none;
        }
    <![endif]-->
    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
    <link rel="icon" href="/favicon.ico" type="image/x-icon" />

</head>
<body>
        <div id="wrapper">
            <h1>What's My Device Pixel Ratio?</h1>
            <h3>Your Device Pixel Ratio is:</h3>
            <div id="numWrap">
                <h2>1</h2>
            </div>
            <h6>(With no viewport set.)</h6>
<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
<!-- DPR-320 -->
<ins class="adsbygoogle"
     style="display:inline-block;width:320px;height:50px"
     data-ad-client="ca-pub-0399362207612216"
     data-ad-slot="9797452676"></ins>
<script>
    (adsbygoogle = window.adsbygoogle || []).push({});
</script>
            <h3>Common Device Pixel Ratios:</h3>
            <table>
                <tr>
                    <th>Device</th>
                    <th>Pixel Ratio</th>
                </tr>
                <tr>
                    <td>Asus MemoPad HD 7</td>
                    <td>1.3</td>
                </tr>
                <tr>
                    <td>Google Galaxy Nexus</td>
                    <td>2.0</td>
                </tr>
                <tr>
                    <td>Google Nexus 10</td>
                    <td>2.0</td>
                </tr>
                <tr>
                    <td>Google Nexus 4</td>
                    <td>2.0</td>
                </tr>
                <tr>
                    <td>Google Nexus 7 (2012 model)</td>
                    <td>1.3</td>
                </tr>
                <tr>
                    <td>Google Nexus 7 (2013 model)</td>
                    <td>2.0</td>
                </tr>
                <tr>
                    <td>Google Nexus S</td>
                    <td>1.5</td>
                </tr>
                <tr>
                    <td>HTC Butterfly</td>
                    <td>3.0</td>
                </tr>
                <tr>
                    <td>HTC Desire</td>
                    <td>1.5</td>
                </tr>
                <tr>
                    <td>HTC Desire HD</td>
                    <td>1.5</td>
                </tr>
                <tr>
                    <td>HTC Incredible S</td>
                    <td>1.5</td>
                </tr>
                <tr>
                    <td>HTC One X</td>
                    <td>2.0</td>
                </tr>
                <tr>
                    <td>HTC Sensation</td>
                    <td>1.5</td>
                </tr>
                <tr>
                    <td>HTC Velocity</td>
                    <td>1.5</td>
                </tr>
                <tr>
                    <td>iPad (3rd generation)</td>
                    <td>2.0</td>
                </tr>
                <tr>
                    <td>iPad 4</td>
                    <td>2.0</td>
                </tr>
                <tr>
                    <td>iPad Air</td>
                    <td>2.0</td>
                </tr>
                <tr>
                    <td>iPad mini (2rd generation)</td>
                    <td>2.0</td>
                </tr>
                <tr>
                    <td>iPhone 4</td>
                    <td>2.0</td>
                </tr>
                <tr>
                    <td>iPhone 4S</td>
                    <td>2.0</td>
                </tr>
                <tr>
                    <td>iPhone 5</td>
                    <td>2.0</td>
                </tr>
                <tr>
                    <td>iPhone 5c</td>
                    <td>2.0</td>
                </tr>
                <tr>
                    <td>iPhone 5s</td>
                    <td>2.0</td>
                </tr>
                <tr>
                    <td>Kindle Fire HD</td>
                    <td>1.5</td>
                </tr>
                <tr>
                    <td>Motorola Moto X</td>
                    <td>2.0</td>
                </tr>
                <tr>
                    <td>Nexus 5</td>
                    <td>3.0</td>
                </tr>
                <tr>
                    <td>Samsung Galaxy Note II</td>
                    <td>2.0</td>
                </tr>
                <tr>
                    <td>Samsung Galaxy S II</td>
                    <td>1.5</td>
                </tr>
                <tr>
                    <td>Samsung Galaxy S III</td>
                    <td>2.0</td>
                </tr>
                <tr>
                    <td>Samsung Galaxy S4</td>
                    <td>3.0</td>
                </tr>
                <tr>
                    <td>Sony Xperia S</td>
                    <td>2.0</td>
                </tr>
                <tr>
                    <td>Sony Xperia T</td>
                    <td>2.0</td>
                </tr>
                <tr>
                    <td>Sony Xperia Z</td>
                    <td>3.0</td>
                </tr>
                <tr>
                    <td>Xperia U</td>
                    <td>1.5</td>
                </tr>
            </table>

        </div>
    <script type="text/javascript">
        var isRetina = window.devicePixelRatio > 1 ? true : false;
        document.getElementById("numWrap").innerHTML = (window.devicePixelRatio) ? '<h2>' + window.devicePixelRatio + '</h2>' : '<div class="unsupported">Your Browser Doesn\'t Support devicePixelRatio.</div>';
    </script>
    <script type="text/javascript">
            document.write('<img src="http://abcstats.com/stats.asp?s=' + document.URL + '&r=' + document.referrer + ' " width="1" height="1" border="0">');
    </script>

</body>
</html>
