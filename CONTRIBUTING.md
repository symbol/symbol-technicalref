# Contributing to catapult-whitepaper

First off, thank you for considering contributing to catapult-whitepaper. 

The Symbol Documentation is an open-source project, and we love to receive contributions from our community — you! 

There are many ways to contribute, from submitting errors and requests or writing new pieces of documentation, which can be incorporated into the whitepaper itself.

Following these guidelines helps to communicate that you respect the time of the developers managing and developing this open source project. In return, they should reciprocate that respect in addressing your issue, assessing changes, and helping you finalize your pull requests.

## Error reports

If you think you have found an error in the catapult-whitepaper, first make sure that you are viewing the latest version of catapult-whitepaper - your issue may already have been fixed. If not, search our issues list on GitHub in case a similar issue has already been opened.

It is very helpful if you can prepare a reproduction of the error. It makes it easier to find the problem and fix it.

Please, take into consideration the next template to report your issue:

    * **Description**: A clear and concise description of what the error is.
    * **Section name**: Network
    * **Page number**: 90
    
Open a new issue [here][github-issues].

## Requests

If you find yourself wishing for content that does not exist in catapult-whitepaper, you are probably not alone. 
Open an [issue][github-issues] on our issues list on GitHub which describes the missing documentation or improvement you would like to see.

## Contributing code and documentation changes

To expand and improve the catapult-whitepaper, please find or open an issue about it first. 

Talk about what you would like to do. It may be that somebody is already working on it, or that there are particular issues that you should know about before implementing the change.

We enjoy working with contributors to get their pull-requests accepted.

### Building catapult-whitepaper

Symbol Whitepaper is written using [LaTeX](https://www.latex-project.org/), and converted into PDF files.

1. Fork catapult-whitepaper repository and clone it to your local machine. See [GitHub help page](https://help.github.com/articles/fork-a-repo/) for help.

2. Install the project requirements.

```sh
source ./texlive/texlive_install.sh
```

3. Build the whitepaper.

```sh
cd whitepaper
make latex
```

If everything goes well, the previous command should generate the PDF file ``_build/main.pdf``.

### Typographical conventions

In math and text mode:
 * Use `\nemsetting` to refer to configuration variables

In math mode:
 * Use `\mathfunc` to mark multi-letter functions, i.e. `\func{verify}(a, b, c)`
 * Use `\structField` to refer to cpp fields inside math mode, i.e. `\structField{X}{SomeField}`, right now, X should be single letter
 * Use `\mathvar` to refer to multi-letter, but single word variables
 * Use `\mathname` to refer to multi word variables

In text mode:
 * Use `\field` to refer to cpp field names.

### Submitting your changes

Once your changes and tests are ready to be submitted for review:

1. Preview your changes.

    Open the ``_build/main.pdf`` and check that the format does not break.

2. Submit a pull request.

    Push your local changes to your forked copy of the repository and [submit a pull request](https://help.github.com/articles/about-pull-requests/). In the pull request, choose a title that sums up the changes that you have made, and in the body provide more details about what your changes do. Also mention the number of the issue where the discussion has taken place, eg "Closes #123".

Then sit back and wait. There will probably be a discussion about the pull request and, if any changes are needed, we would love to work with you to get your pull request merged into catapult-whitepaper.

### Contributing License Notice

When you contribute, you affirm that the contribution is your original work and that you license the work to the project under the project's open source license.

Whether or not you state this explicitly, by submitting any copyrighted material via pull request, email, or other means, you agree to license the material under the project's open-source license and warrant that you have the legal authority to do so.

*CONTRIBUTING.md is based on [CONTRIBUTING-template.md](https://github.com/nayafia/contributing-template/blob/master/CONTRIBUTING-template.md)* , [elasticsearch/CONTRIBUTING](https://github.com/elastic/elasticsearch/blob/master/CONTRIBUTING.md) and [spark/CONTRIBUTING](https://github.com/apache/spark/blob/master/CONTRIBUTING.md)

[pull-request]: https://help.github.com/articles/about-pull-requests/
[github-issues]: https://github.com/nemtech/catapult-whitepaper/issues
