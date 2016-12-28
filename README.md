# Make patterns

A big Makefile containing all kinds of pattern rules,
to complement the ones built into GNU Make.
Copy the ones that seem useful to you to your own Makefile.

You can also symlink the Makefile to a convenient location
and then use it in a more ad-hoc fashion:
```sh
make -f ~/patterns document.pdf
```
If you alias `make` to `make -f ~/patterns`,
you can even just run `make document.pdf`
and pretend that these rules are actually built into GNU Make.
(You should of course be aware that this won’t work on on other setups,
and people will generally be thankful if you do provide a proper Makefile
on any project that you want to collaborate on with them.)

## License

The content of this repository is released under CC0
as provided in the `LICENSE` file that accompanied this code.

By submitting a “pull request” or otherwise contributing to
this repository, you agree to license your contribution under
the license mentioned above.
