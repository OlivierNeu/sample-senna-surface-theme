<#assign
    VOID = freeMarkerPortletPreferences.setValue("portletSetupPortletDecoratorId", "barebone")
/>

<span class="hidden-xs">
    <div class="container-fluid-1280" id="zone-pied-de-page">
        <#if fwd_show_bottom_sitemap>
            <div id="plan-de-site">
                <@liferay_portlet["runtime"]
                    portletProviderAction=portletProviderAction.VIEW
                    portletName="com_liferay_site_navigation_site_map_web_portlet_SiteNavigationSiteMapPortlet"
                />
            </div>
        </#if>
    </div>
    <div class="container-fluid-1280" id="zone-legale">
        <#if fwd_show_bottom_webcontent>
            <@liferay_portlet["runtime"]
                defaultPreferences="${freeMarkerPortletPreferences}"
                portletProviderAction=portletProviderAction.VIEW
                instanceId="fwd-footer-zone-legale"
                portletName="com_liferay_journal_content_web_portlet_JournalContentPortlet" />
        </#if>
    </div>
</span>

<#assign VOID = freeMarkerPortletPreferences.reset() />