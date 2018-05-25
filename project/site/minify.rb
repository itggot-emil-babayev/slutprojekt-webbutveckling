require 'cssminify'
require 'uglifier'

def minify(path, pattern, minifier, opts = nil)
    files = Dir.glob("#{path}#{pattern}")
    minifier, method = minifier.split('.')
    minifier = Object.const_get(minifier)
    files.each do |file|
        contents = File.read(file)
        minified = minifier.send(method, contents, opts)
        File.write(file, minified)
    end

end

minify('public/css/', '*.css', 'CSSminify.compress')
# minify('public/js/', '*.js', 'Uglifier.compile', harmony: true)