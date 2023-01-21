<%inherit file="base.mako"/>

<div class="row">
    <div class="col-lg-3 col-sm-6 text-outline" id="page-name">
        ${page.volume.title} - ${page.title}
    </div>
    <div class="col-lg-6 col-sm-6">
        <div id="mini-nav">
            %if comic.page_before(page):
                <a href="${comic.page_before(page).url}"> <i class="bi-caret-left-fill icon mini-nav-icon text-outline" style="font-size: 2rem"></i></a>
            %else:
                <i class="bi-caret-left-fill icon mini-nav-icon text-outline faded" style="font-size: 2rem"></i>
            %endif
            %if comic.page_after(page):
                <a href="${comic.page_after(page).url}"> <i class="bi-caret-right-fill icon mini-nav-icon text-outline" style="font-size: 2rem"></i></a>
            %else:
                <i class="bi-caret-right-fill icon mini-nav-icon text-outline faded" style="font-size: 2rem"></i>
            %endif
        </div>
    </div>
</div>
<div class="row">
    <div class="col-lg-9">
        %if comic.page_after(page):
            <a href="${comic.page_after(page).url}"><img src="${page.image}" class="img-fluid" alt="Comic Page"></a>
        %else:
            <img src="${page.image}" class="img-fluid" alt="Comic Page">
        %endif
        <div id="comic-nav" class="row">
            %if comic.page_before(page):
                <a href="${comic.all_pages[0].url}" class="col"><i class="bi-caret-left-fill squish-left" style="font-size: 1.5rem"></i><i class="bi-caret-left-fill squish-right" style="font-size: 1.5rem"></i>First</a>
                <a href="${comic.page_before(page).url}" class="col"><i class="bi-caret-left-fill" style="font-size: 1.5rem"></i>Previous</a>
            %else:
                <span class="col"><i class="bi-caret-left-fill squish-left" style="font-size: 1.5rem"></i><i class="bi-caret-left-fill squish-right" style="font-size: 1.5rem"></i>First</span>
                <span class="col"><i class="bi-caret-left-fill" style="font-size: 1.5rem"></i>Previous</span>
            %endif
            %if comic.page_after(page):
                <a href="${comic.page_after(page).url}" class="col">Next<i class="bi-caret-right-fill" style="font-size: 1.5rem"></i></a>
                <a href="${comic.latest_volume.latest_page.url}" class="col">Last<i class="bi-caret-right-fill squish-left" style="font-size: 1.5rem"></i><i class="bi-caret-right-fill squish-right" style="font-size: 1.5rem"></i></a>
            %else:
                <span class="col">Next<i class="bi-caret-right-fill" style="font-size: 1.5rem"></i></span>
                <span class="col">Last<i class="bi-caret-right-fill squish-left" style="font-size: 1.5rem"></i><i class="bi-caret-right-fill squish-right" style="font-size: 1.5rem"></i></span>
            %endif
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
