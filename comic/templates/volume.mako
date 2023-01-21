<%inherit file="base.mako"/>
<a href="/archive.html">&larr; Archive</a>
<h1>${volume.title}</h1>
<ul>
    % for page in volume.each_page():
        <li>
            <a href="${page.url}">${page.title}</a>
        </li>
    % endfor
</ul>
