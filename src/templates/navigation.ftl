<div class="fwd-navbar-collapse" id="fwd-navigationCollapse">
	<#if has_navigation && is_setup_complete>

        <div class="${nav_css_class} fwd-site-navigation fwd-navbar fwd-navbar-default" id="fwd-navigation" role="navigation">
            <#assign
                VOID = freeMarkerPortletPreferences.setValue("portletSetupPortletDecoratorId", "fwd-barebone-n3-ux-d2-0")
            />

            <@liferay_portlet["runtime"]
                defaultPreferences="${freeMarkerPortletPreferences}"
                portletName="sample_senna_angular_parcours_bundle"
            />

            <#assign VOID = freeMarkerPortletPreferences.reset() />
        </div>
    </#if>
</div>