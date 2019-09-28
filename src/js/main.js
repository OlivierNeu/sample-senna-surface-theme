(function () {
    AUI().ready(
        'aui-base', 'liferay-sign-in-modal',
        function (A) {
            var signIn = A.one('.sign-in > a');

            if (signIn && signIn.getData('redirect') !== 'true') {
                signIn.plug(Liferay.SignInModal);
            }

            A.one('body').delegate('mouseover', function (event) {

                A.all('.team-color-1').each(
                    function (node) {
                        node.setStyle('border-color', 'red');
                    }
                );

            }, '.team-color-1');

            A.one('body').delegate('mouseout', function (event) {

                A.all('.team-color-1').each(
                    function (node) {
                        node.setStyle('border-color', 'transparent');
                    }
                );

            }, '.team-color-1');


            A.one('body').delegate('mouseover', function (event) {

                A.all('.sample-senna-angular-parcours-bundle').each(
                    function (node) {
                        node.setStyle('border-color', 'red');
                    }
                );

            }, '.sample-senna-angular-parcours-bundle');

            A.one('body').delegate('mouseout', function (event) {

                A.all('.sample-senna-angular-parcours-bundle').each(
                    function (node) {
                        node.setStyle('border-color', 'transparent');
                    }
                );

            }, '.sample-senna-angular-parcours-bundle');


            A.one('body').delegate('mouseover', function (event) {

                A.all('.sample-senna-angular-app1-bundle').each(
                    function (node) {
                        node.setStyle('border-color', 'blue');
                    }
                );

            }, '.sample-senna-angular-app1-bundle');

            A.one('body').delegate('mouseout', function (event) {

                A.all('.sample-senna-angular-app1-bundle').each(
                    function (node) {
                        node.setStyle('border-color', 'transparent');
                    }
                );

            }, '.sample-senna-angular-app1-bundle');


            A.one('body').delegate('mouseover', function (event) {

                A.all('.sample-senna-angular-app2-bundle').each(
                    function (node) {
                        node.setStyle('border-color', 'green');
                    }
                );

            }, '.sample-senna-angular-app2-bundle');

            A.one('body').delegate('mouseout', function (event) {

                A.all('.sample-senna-angular-app2-bundle').each(
                    function (node) {
                        node.setStyle('border-color', 'transparent');
                    }
                );

            }, '.sample-senna-angular-app2-bundle');


            A.one('body').delegate('mouseover', function (event) {

                A.all('.sample-senna-angular-app3-bundle').each(
                    function (node) {
                        node.setStyle('border-color', 'darkgray');
                    }
                );

            }, '.sample-senna-angular-app3-bundle');

            A.one('body').delegate('mouseout', function (event) {

                A.all('.sample-senna-angular-app3-bundle').each(
                    function (node) {
                        node.setStyle('border-color', 'transparent');
                    }
                );

            }, '.sample-senna-angular-app3-bundle');


        }
    );

    Liferay.on('SPAReady', function (event) {

        Liferay.Loader.require(
            'sample-senna-surface-theme@1.0.4/js/sample_spa.es',
            function (SampleSPASurface) {
                new SampleSPASurface.default();
            }
        );
    });

})();