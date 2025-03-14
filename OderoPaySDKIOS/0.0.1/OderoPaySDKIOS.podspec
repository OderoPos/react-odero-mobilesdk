Pod::Spec.new do |spec|
    spec.name                     = 'OderoPaySDKIOS'
    spec.version                  = '0.0.1'
    spec.homepage                 = 'https://www.odero.ro'
    
    # For local development, use a local path source
    # For production, use the remote URL
    use_local = ENV['USE_LOCAL_SOURCE'] == 'true'
    puts "Podspec using local source: #{use_local}"
    
    
    spec.source = {
        :http => "https://ro-artifactory.devtokeninc.com/artifactory/PublicLibraries/Odero/oderopaysdk/oderopaysdkios/#{spec.version}/oderopaysdkios-#{spec.version}.xcframework.zip",
        :type => 'zip',
        :headers => ['Accept: application/octet-stream']
    }
    spec.vendored_frameworks = ['OderoPaySDKIOS.xcframework','shared.xcframework']
    spec.authors = { 'Anil Caliskan' => 'anil.caliskan@tokeninc.com' }
    spec.license                  = { :type => 'MIT License', :text => <<-LICENSE
        Copyright (c)

        Permission is hereby granted, free of charge, to any person obtaining a copy
        of this software and associated documentation files (the "Software"), to deal
        in the Software without restriction, including without limitation the rights
        to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
        copies of the Software, and to permit persons to whom the Software is
        furnished to do so, subject to the following conditions:

        The above copyright notice and this permission notice shall be included in all
        copies or substantial portions of the Software.

        THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
        IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
        FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
        AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
        LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
        OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE  USE OR OTHER DEALINGS IN THE
        SOFTWARE.
    LICENSE
    }
    
    spec.summary                  = 'Some description for the Shared Module'
    spec.libraries                = 'c++'
    spec.ios.deployment_target    = '13.0'
    spec.exclude_files = 'scripts/**/*'
end