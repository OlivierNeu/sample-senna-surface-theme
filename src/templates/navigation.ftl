<div class="fwd-navbar-collapse" id="fwd-navigationCollapse">
    <#if has_navigation && is_setup_complete>

        <div class="${nav_css_class} fwd-site-navigation fwd-navbar fwd-navbar-default" id="fwd-navigation"
             role="navigation">
            <#--<#assign-->
            <#--VOID = freeMarkerPortletPreferences.setValue("portletSetupPortletDecoratorId", "fwd-barebone-n3-ux-d2-0")-->
            <#--/>-->
            <#assign preferences = freeMarkerPortletPreferences.getPreferences({"portletSetupPortletDecoratorId": "barebone"}) />
            <@liferay_portlet["runtime"]
            defaultPreferences="${preferences}"
            portletName="sample_senna_angular_parcours_bundle"
            />
        </div>
    </#if>
</div>
