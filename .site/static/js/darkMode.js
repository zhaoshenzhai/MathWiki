var toggle = document.getElementById("toggleDark");
var darkMode = false;

window.toggleDark = toggleDark;

var root = document.querySelector(':root');
var rootC = getComputedStyle(root);

const lightVals = {
    "bg":                  rootC.getPropertyValue("--bg"),
    "fg":                  rootC.getPropertyValue("--fg"),
    "link":                rootC.getPropertyValue("--link"),
    "link-hover":          rootC.getPropertyValue("--link-hover"),
    "nav-button-bg":       rootC.getPropertyValue("--nav-button-bg"),
    "nav-button-hover-bg": rootC.getPropertyValue("--nav-button-hover-bg"),
    "box-bg":              rootC.getPropertyValue("--box-bg"),
    "quote":               rootC.getPropertyValue("--quote")
};

const darkVals = {
    "bg":                  "rgb(30,33,39)",
    "fg":                  "rgb(240,240,240)",
    "link":                "rgb(86,182,194)",
    "link-hover":          "rgb(99,210,224)",
    "nav-button-bg":       "rgb(200,200,200,0.2)",
    "nav-button-hover-bg": "rgb(150,150,150,0.2)",
    "box-bg":              "rgba(255,255,255,0.05)",
    "quote":               "rgba(255,255,255,0.25)"
};

// Init dark
document.addEventListener("DOMContentLoaded", (e) => {
    if (localStorage['darkMode'] == "dark") {
        document.body.style.transition = "none";
        document.offsetHeight;
        toggleDark(document, false, false, true);
    }
});

export function toggleDark(doc, reset, update, frame) {
    if (reset) {
        doc.body.style.transition = "";
        doc.offsetHeight;
    }

    var icons = doc.getElementsByClassName("icon");
    var navButtons = doc.getElementsByClassName("navButton");
    root = doc.querySelector(':root');

    if (darkMode) {
        for(var [key, val] of Object.entries(lightVals)) {
            root.style.setProperty('--' + key, val);
        }
        for (var i = 0; i < icons.length; i++) {
            icons[i].style.filter = "";
        }
        for (var i = 0; i < navButtons.length; i++) {
            navButtons[i].style.filter = "";
        }

        if (update) { localStorage['darkMode'] = 'light'; }
    } else {
        for(var [key, val] of Object.entries(darkVals)) {
            root.style.setProperty('--' + key, val);
        }
        for (var i = 0; i < icons.length; i++) {
            icons[i].style.filter = "invert(100%)";
        }
        for (var i = 0; i < navButtons.length; i++) {
            navButtons[i].style.filter = "invert(100%)";
        }

        if (update) { localStorage['darkMode'] = 'dark'; }
    }

    if (frame) {
        var frames = doc.getElementsByClassName("frame");
        for (var i = 0; i < frames.length; i++) {
            var frameDoc = frames[i].contentDocument;
            toggleDark(frameDoc, true, false, false);
        }

        darkMode = !darkMode;
    }
}
