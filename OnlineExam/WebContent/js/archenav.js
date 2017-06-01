$(function () {
    var $navTop = $('#topNav'), $navMain = $navTop.find('#navMain'), $navSub = $navMain.find('#navSub'), $navIndex = $navMain.find('#navIndex'), de = 200;
    $navIndex.mouseenter(function () {
        $navSub.show().stop().animate({
            'height': '187px'
        }, de);
        $navTop.stop().animate({
            'height': '242px'
        }, de);
    });
    $navMain.mouseleave(function () {
        $navSub.stop().animate({
            'height': '3px'
        }, de, function () {
            $navSub.hide();
        });
        $navTop.stop().animate({
            'height': '75px'
        }, de);
    });
    $navIndex.find('li:not(:eq(8))').mouseenter(function () {
        var $this = $(this), i = $this.index() - 1;
        $(this).addClass('nav3').siblings().removeClass('nav3');
        $navSub.find('dt:eq(' + i + ')').show();
    }).mouseleave(function () {
        var $this = $(this), i = $this.index() - 1;
        $this.removeClass('nav3');
        $navSub.find('dt:eq(' + i + ')').hide();
    });
    $navSub.find('dl').hover(function () {
        var $this = $(this), i = $this.index() + 1;
        $this.find('dt').show();
        $navIndex.find('li:eq(' + i + ')').addClass('nav3');
    }, function () {
        var $this = $(this), i = $this.index() + 1;
        $this.find('dt').hide();
        $navIndex.find('li:eq(' + i + ')').removeClass('nav3');
    });
});
