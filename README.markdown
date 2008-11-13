Integrity
=========

[Integrity][] is your friendly automated Continuous Integration server.

Integrity Email Notifier
========================

This lets Integrity send emails after each build is made.

Setup Instructions
==================

Just install this gem via `sudo gem install -s http://gems.github.com 
foca-integrity-email` and then in your Rackup (ie, `config.ru`) file:

    require "rubygems"
    require "notifier/email"

And badabing! Now you can set up your projects to send emails after
each build (just edit the project and the config options should be 
there)

License
=======

(The MIT License)

Copyright (c) 2008 [Nicolás Sanguinetti][foca], [entp][]

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

[Integrity]: http://integrityapp.com
[foca]:      http://nicolassanguinetti.info
[entp]:      http://entp.com
