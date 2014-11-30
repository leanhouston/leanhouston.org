# Site Generating Files for leanhouston.org

The source which generates the Houston Lean Startup Circle's resources website, [leanhouston.org](http://leanhouston.org). The page is generated using the [Middleman static site generator](http://middlemanapp.com/) and is hosted via Github Pages from the [leanhouston/leanhouston.github.io](https://github.com/leanhouston/leanhouston.github.io) repository.

### Contributing to Houston Startup Resources

Contribution should be made via Github. Please fork this project, create a topic branch with your changes, and submit a pull request.

Information for each section is stored in its own, similarly-named file under the `/source` directory, such as `/source/_accelerators_and_incubators.md.erb`. The guidelines to contribute are best summarized as:

1. Look at the pattern of how information is laid out in terms of links, addresses, length of content and so forth. 
2. Then, try and stick to that pattern when contributing. 
3. When adding new items to a section, please place them below existing resources, and in the spirit of the "matching current style", use an `<h3>` tag (in Markdown: `###`) which links to the resources website, followed by a one- or two-sentence description.

The information is generated via Markdown (`.md`), after passing through Embedded Ruby (`.erb`) to utilize helpers, such as conveniently changing Address into links to their location on a map.  Additionally, to make an address link to its map, the pattern of `<%= address_link("YOUR ADDRESS HERE") %>` is available.
