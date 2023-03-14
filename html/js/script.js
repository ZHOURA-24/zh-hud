$(document).ready(function () {
    window.addEventListener("message", function (event) {
        if (event.data.actionhud == true) {
            $(".hud-container").css("display", "block");
            setTimeout(() => {
                $(".hud-container").css("display", "none");
            }, 10000);
        }
        if (event.data.dataHud) {
            $("#id").html(` ID : ${event.data.dataHud.id}`);
            $("#image-job").attr("src", `./assets/${event.data.dataHud.job}.png`);
            $("#job").html(` JOB : ${event.data.dataHud.jobLabel}`);
            $("#grade").html(` GRADE : ${event.data.dataHud.grade}`);
            $("#duty").html(` DUTY : ${event.data.dataHud.duty}`);
        }
    });
});