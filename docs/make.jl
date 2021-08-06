using Documenter
using InMemoryDatasets

DocMeta.setdocmeta!(Datasets, :DocTestSetup, :(using InMemoryDatasets); recursive=true)

# Build documentation.
# ====================

makedocs(
    # options
    modules = [Datasets],
    doctest = true,
    clean = false,
    sitename = "InMemoryDatasets.jl",
    format = Documenter.HTML(
        canonical = "https://sl-solution.github.io/InMemoryDataset.jl/stable/",
        edit_link = "main"
    ),
    pages = Any[
        "Introduction" => "index.md",
        "First Steps with InMemoryDatasets.jl" => "man/basics.md",
        "User Guide" => Any[
            "Getting Started" => "man/tutorial.md",
            "Formats" => "man/formats.md",
            "Call functions on each observation" => "man/map.md",
            "Working with each row" => "man/byrow.md",
            "Filtering observations" => "man/filter.md",
            "Sorting" => "man/sorting.md",
            "Grouping" => "man/grouping.md",
            "Aggregating over groups" => "man/aggregation.md",
            "Transposing Data" => "man/transpose.md",
            "Joins" => "man/joins.md"
        ],
        "API" => Any[
            "Functions" => "lib/functions.md"
        ]
    ],
    strict = true
)

# Deploy built documentation from Travis.
# =======================================

deploydocs(
    # options
    repo = "github.com/sl-solution/InMemoryDatasets.jl.git",
    target = "build",
    deps = nothing,
    make = nothing,
    devbranch = "main"
)