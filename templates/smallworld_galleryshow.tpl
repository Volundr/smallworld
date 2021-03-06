<div id="page" title="<{$username}> - <{$gallerytitleheader}>">
    <{if $isadminuser == 'YES' or $username == $myusername}>
    <div class="smallworld_imageownermenu">
        <ul>
            <li><a class="img_upload_menu" href="img_upload.php" id="smallworld_uploadimgmenu"><{$smarty.const._SMALLWORLD_GOTOUPLOADIMAGE}></a></li>
        </ul>
    </div>
    <br>
    <{else}>
    <{/if}>
    <div id="container">
        <{if $userisfriend == '2' || $isadminuser == 'YES' or $username == $myusername}>
        <{if $countimages == 0}>
        <h1>
            <center><{$username}><{$smarty.const._SMALLWORLD_NOIMAGES}></center>
        </h1>
        <{else}>
        <h1><{$username}> - <{$gallerytitleheader}></h1>
        <!-- Start Advanced Gallery Html Containers -->
        <div class="navigation-container">
            <div id="thumbs" class="navigation">

                <br>
                <a class="pageLink prev" style="visibility: hidden;" href="#" title="<{$smarty.const._SMALLWORLD_GALLEY_PREVIOUSPAGE}>"></a>
                <a class="pageLink prev" style="visibility: hidden;" href="#" title="<{$smarty.const._SMALLWORLD_GALLEY_PREVIOUSPAGE}>"></a>
                <ul class="thumbs noscript">
                    <{section name=i loop=$gallery}>
                    <li>
                        <a class="thumb" name="leaf" href="<{$gallery[i].imgurl}>" title="<{$gallery[i].alt}>">
                            <img src="<{$gallery[i].imgurl}>" height="75px" width="75px">
                        </a>
                        <div class="caption">
                            <div class="image-desc"><{$gallery[i].desc}></div>
                            <{if $isadminuser == 'YES' or $username == $myusername}>
                            <div class="smallworld_edit_imgdesc"> <{$gallery[i].editimg}></div>
                            <{/if}>
                            <div class="download">
                                <a href="<{$gallery[i].imgurl}>"><{$smarty.const._SMALLWORLD_GALLERY_DOWNLOADORIGINAL}></a>
                            </div>
                        </div>
                    </li>
                    <{/section}>
                </ul>
                <a class="pageLink next" style="visibility: hidden;" href="#" title="<{$smarty.const._SMALLWORLD_GALLEY_NEXTPAGE}>"></a>
            </div>
        </div>
        <div class="content">
            <div class="slideshow-container">
                <div id="controls" class="controls"></div>
                <div id="loading" class="loader"></div>
                <div id="slideshow" class="slideshow"></div>
            </div>
            <div id="caption" class="caption-container">
                <div class="photo-index"></div>
            </div>
        </div>
        <!-- End Gallery Html Containers -->
        <div style="clear: both;"></div>
    </div>
</div>
<{/if}>
<{else}>
<h1>
    <center><{$smarty.const._SMALLWORLD_NOTFRIENDNOIMAGES}></center>
</h1>
<{/if}>
