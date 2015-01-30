# pretty-sensible.vim

Think of pretty-sensible.vim as one step above [Tim Pope's sensible.vim][]. The
idea is to have something that's one level of opinioned more than sensible.vim
but still not include stuff which ventures too far into personal preferences
and especially not anything which is specific to a particular type of text
editing (eg programming).

The idea is together with tpope/vim-sensible and tpope/vim-sleuth this provides
a reasonble starting point for adding task/plugin specific preferences and
personal preferences (or project-specific preference using something like
[embear/vim-localvimrc][]).

[Tim Pope's sensible.vim]: https://github.com/tpope/vim-sensible/tree/master/plugin/sensible.vim
[embear/vim-localvimrc]: https://github.com/tpope/vim-sensible/tree/master/plugin/sensible.vim

## Features

  * A pretty uncontroversial set of options;
  * Keeps `*~` files in a central location;
  * Ctrl-X swaps the visual selection with yanked text.

See the [source][]  (It's mostly `:set` calls.) [scriptease.vim][] may be
helpful for quick comprehension.

[source]: https://github.com/tpope/vim-sensible/tree/master/plugin/sensible.vim
[scriptease.vim]: https://github.com/tpope/vim-scriptease

## License

Copyright © Frankie Robertson.  Distributed under the same terms as Vim itself.
See `:help license`.
