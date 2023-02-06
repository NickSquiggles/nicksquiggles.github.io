<%inherit file="base.mako"/>

<div class="row">
    <div class="col-lg-6 text-outline" id="page-name">
        Archive
    </div>
</div>
<div class="row">
    <div class="col-lg-9">
        <div class="archive-table">
            % for volume in comic.each_volume():
            <div class="row">
                <div class="col-sm-3 align-self-start volume">
                    <p>${volume.title}</p>
                    <img src="${volume.image}">
                </div>
                <div class="col align-self-center volume">
                    % for page in volume.each_page():
                        <a href="${page.url}">${page.title}</a>
                        % if page != volume.latest_page:
                            &middot;
                        % endif
                    % endfor
                </div>
            </div>
            % endfor
        </div>
    </div>
    <div class="col-lg-3">
        <div id="upload">
            <p>Chapter 4</p>
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
