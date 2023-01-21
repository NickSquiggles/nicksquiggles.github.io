<%inherit file="base.mako"/>


<div class="row">
    <div class="col-lg-3 text-outline" id="page-name">
        Welcome!
    </div>       
</div>
<div class="row">
    <div class="col-lg-9">
        <div class="content-box">
            <h4>Chapter 2 is now live - start reading by choosing a chapter below ⤵️</h4>
            <hr>
            % for i, volume in reversed(list(enumerate(comic.each_volume()))):
                <a href="${volume.first_page.url}">
                <img src="/imgs/Vol${i+1}-Banner.png" class="chapter-banner 
                    % if volume != comic.first_volume:
                        chapter-banner-spacing
                    % endif
                ">
                </a>
            % endfor
        </div>
    </div>
    <div class="col-lg-3">
        <div id="upload">
            <p>Chapter 3</p>
            <p>coming soon!</p>
        </div>
        <nav class="nav flex-column" id="nav">
            <a href="/index.html" class="my-nav-link">
                <i class="bi-dot"></i> Home <i class="bi-dot"></i>
            </a>
            <a href="/about.html" class="my-nav-link">
                <i class="bi-dot"></i> About <i class="bi-dot"></i>
            </a>
            <a href="/archive.html" class="my-nav-link">
                <i class="bi-dot"></i> Archive <i class="bi-dot"></i>
            </a>
            <hr>
             <div class="nav justify-content-center" id="social" role="group">
                <a href="https://twitter.com/NickSquiggles"> <i class="bi-twitter icon social"
                        style="font-size: 2.5rem"></i></a>
                <a href="https://www.instagram.com/nicksquiggles/"> <i class="bi-instagram icon social"
                        style="font-size: 2.5rem"></i></a>
            </div>
        </nav>
    </div>
</div>

