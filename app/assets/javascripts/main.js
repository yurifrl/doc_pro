jQuery(function ($) {
    var render_sidebar = function (aux_tags, aux_pages) {
        $('#tags-sidebar, #pages-sidebar').html('');

        var tag_template = Handlebars.compile($('#tag-template').text())
        for (var i = 0; i < aux_tags.length; i++) {
            var content = new Handlebars.SafeString(tag_template(aux_tags[i]));
            $('#tags-sidebar').append(content.string);
        }
        var page_template = Handlebars.compile($('#page-template').text())
        for (var i = 0; i < aux_pages.length; i++) {
            var content = new Handlebars.SafeString(page_template(aux_pages[i]));
            $('#pages-sidebar').append(content.string);
        }
    };
    render_sidebar(tags, pages);

    $('#search').on('keypress', function () {
        var el = $(this);
        var query = el.val();
        var regexpQuery = new RegExp(query);
        var result_tags = [];
        var result_pages = [];

        if (query == '') {
            return render_sidebar(tags, pages);
        }

        for (var i = 0; i < tags.length; i++) {
            if (regexpQuery.test(tags[i].tag_name)) {
                result_tags.push(tags[i]);
            }
        }

        for (var i = 0; i < pages.length; i++) {
            if (regexpQuery.test(pages[i].name)) {
                result_pages.push(pages[i]);
            }
        }

        render_sidebar(result_tags, result_pages);
    });
    $(document).on('click', '.item', function () {
        history.pushState(null, $(this).val(), this.href);
    });
    $(window).bind('popstate', function(){
        $.getScript(location.href);
    });
});