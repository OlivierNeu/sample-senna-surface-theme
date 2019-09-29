<#if fwd_show_breadcrumd>
	<div class="fwd-breadcrumb">

    	<#assign
    		VOID = freeMarkerPortletPreferences.setValue("displayDepth", "1")
    		VOID = freeMarkerPortletPreferences.setValue("portletSetupPortletDecoratorId", "fwd-barebone-n3-ux-d2-0")
    	/>

    	<@liferay_portlet["runtime"]
       		defaultPreferences="${freeMarkerPortletPreferences}"
        	portletProviderAction=portletProviderAction.VIEW
        	portletProviderClassName="com.liferay.portal.kernel.servlet.taglib.ui.BreadcrumbEntry"
    	/>

    	<#assign VOID = freeMarkerPortletPreferences.reset() />

	</div>
</#if>