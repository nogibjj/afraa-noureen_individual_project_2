use afraa_n_baskin_robbins::{extract, query, transform_load};

#[test]
fn test_extract() {
    let url =
        "https://raw.githubusercontent.com/prasertcbs/basic-dataset/master/baskin_icecream.csv";
    let file_path = "data/baskin_icecream.csv";
    let directory = "data";

    extract(url, file_path, directory);

    assert!(std::fs::metadata(file_path).is_ok());
}

#[test]
fn test_transform_load() {
    let dataset = "data/baskin_icecream.csv";
    let result = transform_load(dataset);

    assert_eq!(result.unwrap(), "baskin_icecream.db");
}

#[test]
fn test_query() {
    // Execute a SELECT query
    let select_query = "SELECT * FROM baskin_icecream WHERE Flavour = 'Mango Tango';";
    let result = query(select_query);

    assert!(result.is_ok());
}