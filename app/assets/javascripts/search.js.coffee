jQuery ($) ->
  # Tag item
  TagsListItem = React.createClass
    render: ->
      tagLink = React.DOM.a({ href: '/tag/' + @props.tag.tag_name, onClick: @renderTag }, @props.tag.tag_name)
      React.DOM.li({ className: 'item ' + @props.tag.type_of }, tagLink)

    renderTag: (e) ->
      # Get el
      el = $ e.target

      # Change url
      history.pushState null, el.val(), el.attr('href')

      # Load page
      $.getScript el.attr('href')

      e.preventDefault()

  PagesListItem = React.createClass
    render: ->
      pageLink = React.DOM.a({ href: '/page/' + @props.page.name, onClick: @renderTag }, @props.page.name)
      React.DOM.li({ className: 'item ' + @props.page.file_path }, pageLink)

    renderTag: (e) ->
      # Get el
      el = $ e.target

      # Change url
      history.pushState null, el.val(), el.attr('href')

      # Load page
      $.getScript el.attr('href')

      e.preventDefault()

  TagsList = React.createClass
    getInitialState: ->
      search: ''

    setSearch: (event) ->
      @setState search: event.target.value

    tags: ->
      @props.tags.filter(
        (tag) => tag.tag_name.indexOf(@state.search) > -1
      )

    searchInput: ->
      React.DOM.input({
        name: 'search'
        onChange: @setSearch
        placeholder: 'Search...'
      })

    tagsList: ->
      React.DOM.ul({}, [
        for tag in @tags()
          TagsListItem({tag: tag})
        ])

    render: ->
      # Wrapper that contains another components
      React.DOM.div({},
        @searchInput()
        @tagsList()
      )

  PagesList = React.createClass
    getInitialState: ->
      search: ''

    setSearch: (event) ->
      @setState search: event.target.value

    pages: ->
      @props.pages.filter(
        (page) => page.name.indexOf(@state.search) > -1
      )

    searchInput: ->
      React.DOM.input({
        name: 'search'
        onChange: @setSearch
        placeholder: 'Search...'
      })

    pagesList: ->
      React.DOM.ul({}, [
        for page in @pages()
          PagesListItem({page: page})
        ])

    render: ->
      # Wrapper that contains another components
      React.DOM.div({},
        @searchInput()
        @pagesList()
      )

  React.renderComponent TagsList(tags: tags), document.getElementById('tags')
  React.renderComponent PagesList(pages: pages), document.getElementById('pages')
