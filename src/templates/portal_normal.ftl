<!DOCTYPE html>

<#include init />

<html class="${root_css_class}" dir="<@liferay.language key="lang.dir" />" lang="${w3c_language_id}">

<head>
    <title>${the_title} - ${company_name}</title>

    <meta content="initial-scale=1.0, width=device-width" name="viewport"/>

    <@liferay_util["include"] page=top_head_include />

</head>

<body id="surface_body" class="${css_class}">

<div id="wrapper-header">
    <@liferay_ui["quick-access"] contentId="#main-content" />

    <@liferay_util["include"] page=body_top_include />

    <@liferay.control_menu />

    <#if is_signed_in = false>
        <div class="control-menu control-menu-level-1">
            <div class="container-fluid-1280 fwd-default-banner">
                <div class="fwd-table">
                    <div class="fwd-table-row">
                        <div class="fwd-table-item fwd-site-name">
                            <#if show_site_name>
                                <span class="site-name" title="<@liferay.language_format arguments="${site_name}" key="go-to-x" />">${site_name}</span>
                            </#if>
                        </div>
                        <div class="fwd-table-item fwd-language">
                        </div>
                        <div class="fwd-table-item user-personal-bar">
                            <@liferay.user_personal_bar />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </#if>
</div>

<div id="wrapper" class="container-fluid">

    <header class="container-fluid-1280" id="banner" role="banner">
        <div class="fwd-wrapper-heading" id="heading">
            <#if fwd_show_logo>
            <a class="${logo_css_class}" href="${site_default_url}" title="<@liferay.language_format arguments="${site_name}" key="go-to-x" />">
                <img alt="${logo_description}" height="64" src="${site_logo}"/>
            </a>
            </#if>
        </div>

        <div class="fwd-wrapper-navbar">
            <#include "${full_templates_path}/navigation.ftl" />
            <#include "${full_templates_path}/breadcrumb.ftl" />
        </div>
    </header>

    <section id="content" class="container-fluid-1280">
        <h1 class="hide-accessible">${the_title}</h1>

        <#if selectable>
            <@liferay_util["include"] page=content_include />
        <#else>

            ${portletDisplay.recycle()}

            ${portletDisplay.setTitle(the_title)}

            <@liferay_theme["wrap-portlet"] page="portlet.ftl">
                <@liferay_util["include"] page=content_include />
            </@>
        </#if>
    </section>

    <#if fwd_show_bottom>
        <footer id="footer" role="contentinfo">
            <#include "${full_templates_path}/footer.ftl" />
        </footer>
    </#if>
</div>

<div id="wrapper-bottom">
    <@liferay_util["include"] page=body_bottom_include />

    <@liferay_util["include"] page=bottom_include />
</div>

<!-- inject:js -->
<!-- endinject -->

</body>

</html>
