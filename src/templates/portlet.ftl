<#assign
portlet_display = portletDisplay
portlet_back_url = htmlUtil.escapeHREF(portlet_display.getURLBack())
portlet_content_css_class = "portlet-content"
portlet_display_name = htmlUtil.escape(portlet_display.getPortletDisplayName())
portlet_display_root_portlet_id = htmlUtil.escapeAttribute(portlet_display.getRootPortletId())
portlet_id = htmlUtil.escapeAttribute(portlet_display.getId())
portlet_title = htmlUtil.escape(portlet_display.getTitle())
portlet_decorate = portlet_display.isPortletDecorate() && portlet_display.getPortletDecoratorId() != "fwd-barebone-n3-ux-d2-0"
/>

<section class="portlet">
    <div class="loader-container">
        <div class="loader loader-inline loader-hide" tabindex="-1" aria-live="polite" role="status" aria-labelledby="loaderInlineLabel">
            <span class="sr-only" id="loaderInlineLabel">Chargement en cours.</span>
            <div class="icone-loader" aria-hidden="true">
                <svg class="n3-spinner" xmlns="http://www.w3.org/2000/svg" width="40" height="40" viewBox="0 0 40 40">
                    <rect x="19" width="2" height="12" fill="#040204"/>
                    <rect x="12" y="2" width="2" height="12" fill="#040204" transform="rotate(-29.99 13 8)"/>
                    <rect x="7" y="7" width="2" height="12" fill="#040204" transform="rotate(-59.982 8 13)"/>
                    <rect y="19" width="12" height="2" fill="#040204"/>
                    <rect x="7" y="21" width="2" height="12" fill="#040204" transform="rotate(-120.01 8 27)"/>
                    <rect x="12" y="26" width="2" height="12" fill="#040204" transform="rotate(-150.01 13 32)"/>
                    <rect x="19" y="28" width="2" height="12" fill="#040204"/>
                    <rect x="26" y="26" width="2" height="12" fill="#040204" transform="rotate(-30.01 27 32.002)"/>
                    <rect x="31" y="21" width="2" height="12" fill="#040204" transform="rotate(-60.015 31.998 27)"/>
                    <rect x="28" y="19" width="12" height="2" fill="#040204"/>
                    <rect x="31" y="7" width="2" fill="#040204" height="12" transform="rotate(-120 32 13)"/>
                    <rect x="26" y="2" width="2" height="12" fill="#040204" transform="rotate(-150.01 27 8)"/>
                </svg>
            </div>
        </div>
    </div>
	<#if portlet_display.isPortletDecorate() && !portlet_display.isStateMax() && portlet_display.getPortletConfigurationIconMenu()?? && portlet_display.getPortletToolbar()??>
        <#assign
        portlet_configuration_icon_menu = portlet_display.getPortletConfigurationIconMenu()
        portlet_toolbar = portlet_display.getPortletToolbar()

        portlet_configuration_icons = portlet_configuration_icon_menu.getPortletConfigurationIcons(portlet_display_root_portlet_id, renderRequest, renderResponse)

        portlet_title_menus = portlet_toolbar.getPortletTitleMenus(portlet_display_root_portlet_id, renderRequest, renderResponse)
        />

        <#if (portlet_configuration_icons?has_content || portlet_title_menus?has_content)>
			<header class="portlet-topper">
                <div class="portlet-title-default">
                    <span class="portlet-name-text">${portlet_display_name}</span>
                </div>

				<#foreach portletTitleMenu in portlet_title_menus>
					<menu class="portlet-topper-toolbar" id="portlet-title-menu_${portlet_id}_${portletTitleMenu_index}" type="toolbar">
						<@liferay_ui["menu"] menu=portletTitleMenu />
                    </menu>
                </#foreach>

				<#if portlet_configuration_icons?has_content>
					<menu class="portlet-topper-toolbar" id="portlet-topper-toolbar_${portlet_id}" type="toolbar">
						<@liferay_portlet["icon-options"] portletConfigurationIcons=portlet_configuration_icons />
                    </menu>
                </#if>
            </header>

            <#assign portlet_content_css_class = portlet_content_css_class + " portlet-content-editable" />
        </#if>
    </#if>

    <div class="${portlet_content_css_class}">
		<#if portlet_display.isShowBackIcon()>
			<a class="icon-monospaced portlet-icon-back text-default" href="${portlet_back_url}" title="<@liferay.language key="return-to-full-page" />">
				<@liferay_ui["icon"]
                icon="angle-left"
                markupView="lexicon"
                />
            </a>
        </#if>

		<#if !portlet_display.getPortletDecoratorId()?contains("barebone")>
			<h2 class="portlet-title-text">${portlet_title}</h2>
        </#if>

    ${portlet_display.writeContent(writer)}
    </div>
</section>