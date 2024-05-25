using MyPackage
using Documenter

DocMeta.setdocmeta!(MyPackage, :DocTestSetup, :(using MyPackage); recursive=true)

makedocs(;
    modules=[MyPackage],
    authors="Stamatis Vretinaris",
    sitename="MyPackage.jl",
    format=Documenter.HTML(;
        canonical="https://svretina.github.io/MyPackage.jl",
        edit_link="master",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/svretina/MyPackage.jl",
    devbranch="master",
)
