require 'cssminify'
require 'uglifier'

def minify(path, pattern, minifier)
    files = Dir.glob("#{path}#{pattern}")
    minifier, method = minifier.split('.')
    minifier = Object.const_get(minifier)
    files.each do |file|
        minified =  minifier.send(method, File.read(file))
        File.write(file, minified)
    end

end

minify('public/css/', '*.css', 'CSSminify.compress')
# minify('public/js/', '*.js', 'Uglifier.compile')