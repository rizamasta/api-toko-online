getScreenId(function (error, sourceId, screen_constraints) {
    navigator.mediaDevices.getUserMedia(screen_constraints).then(screen).catch(function(error) {
        done = true;
        alert('Plugin tidak ditemukan! Google Chrome / Mozilla Firefox lebih dianjurkan');
        location.href = 'https://chrome.google.com/webstore/detail/screen-capturing/ajhifddimkapgcifgcodmmfdlknahffk';
    });
});