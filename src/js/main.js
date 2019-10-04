(function () {
    AUI().ready(
        'aui-base', 'liferay-sign-in-modal',
        function (A) {
            var signIn = A.one('.sign-in > a');

            if (signIn && signIn.getData('redirect') !== 'true') {
                signIn.plug(Liferay.SignInModal);
            }
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
