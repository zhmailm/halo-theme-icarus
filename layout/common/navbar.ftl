<#macro navbar layout>
    <nav class="navbar navbar-main">
        <div class="container">
            <div class="navbar-brand is-flex-center">
                <a class="navbar-item navbar-logo" href="${blog_url!}">
                    <#if blog_logo?? && blog_logo!=''>
                        <img src="${blog_logo!}" alt="${blog_title!}" height="28">
                    <#else>
                        ${blog_title!}
                    </#if>
                </a>
            </div>
            <div class="navbar-menu">
                <@menuTag method="list">
                    <#if menus?? && menus?size gt 0>
                        <div class="navbar-start">
                            <#list menus?sort_by('priority') as menu>
                                <a class="navbar-item" href="${menu.url}" target="${menu.target!}">${menu.name}</a>
                            </#list>
                        </div>
                    </#if>
                </@menuTag>
                <div class="navbar-end">
                    <form method="get" action="/search" >
                        <div class="navbar-item">
                            <input type="text" name="keyword" placeholder="请输入关键字">&nbsp;&nbsp;搜索</input>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </nav>
</#macro>