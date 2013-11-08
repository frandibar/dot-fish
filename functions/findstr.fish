function findstr
    set files '*'
    if (count $argv) > 1
       set files $argv[2..-1]
    end
    grep -EIRn $argv[1] $files \
        --exclude-dir='.svn' \
        --exclude='*.swp' \
        --exclude='*.vcproj' \
        --exclude='*.dsp' \
        --exclude='cscope.out' \
        --exclude='cscope.files' \
        --exclude='tags'
end
