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
}

build machine-learning-crash-course
clean