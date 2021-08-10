<style>
body {
    height: 100vh;
    display: grid;
    grid-template-rows: auto 1fr;
}

.main-container {
    display: grid;
    grid-template-rows: auto 1fr;
}

.main-content-inner {
    height: 100%;
    display: grid;
    grid-template-rows: auto 1fr;
}

.page-content {
    height: 100%;
    display: flex;
    padding: 0px !important;
    flex-direction: column;
}

.page-content>.row {
    flex: 1;
    margin: 0 !important;
    /* height: 100%; */
}

.page-content>.row>.col-xs-12 {
    padding: 0px;
    height: 100%;
    display: flex;
}

.page-content>.row>.col-xs-12>embed {
    height: 100%;
    width: 100%;
}
</style>
<embed src="http://localhost/webrtcAssembly/room_session.php?link=12345&userId=1&password=password" />