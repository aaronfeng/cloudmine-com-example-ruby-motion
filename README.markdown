# CloudMine.com Test

A simple application demonstrates how to use CloudMine.com ios SDK with RubyMotion.

Please follow CloudMine.com quick start for more info:
https://cloudmine.me/developer_zone#ios/overview

# Run Example

Download CloudMine SDK for existing ios project.
Copy CloundMine.framework into app/vendor.

Add your app id and app secret in app/app_delegate.rb.

    > rake

# Note

In the current version of RubyMotion (1.2) a minor modification is required
for CloudMine SDK to work.

    vi /Library/RubyMotion/lib/motion/project/vendor.rb

On line 38 change:

    source_files = (opts.delete(:source_files) or Dir.glob('*.{c,m,cpp,cxx,mm,h}'))

To:

    source_files = (opts.delete(:source_files) or Dir.glob('**/*.{c,m,cpp,cxx,mm,h}'))

