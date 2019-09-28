import utils from 'senna/src/utils/utils';

class SampleSPASurface {
    constructor() {

        // Dépendant du bundle OSGI com.liferay.frontend.js.spa.web
        Liferay.Loader.require('frontend-js-spa-web@3.0.14/liferay/surface/Surface.es', function (frontendJsSpaWeb3014LiferaySurface) {

                var LiferaySurface = frontendJsSpaWeb3014LiferaySurface.default;

                if (Liferay.SPA.debugEnabled) {
                    console.log(Liferay.SPA.app);
                    console.log('currentURL:' + Liferay.currentURL);
                    console.log('currentBrowserPath:' + utils.getCurrentBrowserPath());
                }

                Liferay.SPA.app.surfaces = [];
                Liferay.SPA.app.addSurfaces(new LiferaySurface('wrapper-header'));
                Liferay.SPA.app.addSurfaces(new LiferaySurface('heading'));
                Liferay.SPA.app.addSurfaces(new LiferaySurface('content'));
                Liferay.SPA.app.addSurfaces(new LiferaySurface('wrapper-bottom'));

                Liferay.SPA.app.portletsBlacklist["com_liferay_product_navigation_product_menu_web_portlet_ProductMenuPortlet"] = true

            },
            function (error) {
                console.error(error);
            });


        Liferay.on('startNavigate', function (event) {

            if (Liferay.SPA.debugEnabled) {
                console.log('startNavigatePath:' + event.path);
            }
        });

        Liferay.fire('SampleSPAReady');

    }
}

export default SampleSPASurface;
