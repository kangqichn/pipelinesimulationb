/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
//关闭页面
function closePage() {
    var Browser = navigator.appName;
    var indexB = Browser.indexOf('Explorer');
    
    console.info(Browser);
    
    if (indexB > 0) {
        var indexV = navigator.userAgent.indexOf('MSIE') + 5;
        var Version = navigator.userAgent.substring(indexV, indexV + 1);

        if (Version >= 7) {
            window.open('', '_self', '');
            window.close();
        } else if (Version === 6) {
            window.opener = null;
            window.close();
        } else {
            window.opener = '';
            window.close();
        }

    } else {
        //window.self.close();
        open(location, '_self').close();
    }
}


