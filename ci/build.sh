set -e

export PATH=$PATH:/home/travis/.cargo/bin;

build()
{
    book_name=$1
    mv ${book_name} _${book_name}
    cd _${book_name}
    mdbook test
    mdbook build
    mv book ../${book_name}
    cd ..
}

clean()
{
    rm -rf _*
    rm -rf ci
    rm .gitignore
    rm .travis.yml
    rm LICENSE
    rm README.md
}

build machine-learning-crash-course
build mathematics-for-programmers
clean
