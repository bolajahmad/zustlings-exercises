// Mary is buying apples. The price of an apple is calculated as follows:
// - An apple costs 3 cairobucks.
// - If Mary buys more than 40 apples, each apple only costs 2 cairobuck!
// Write a function that calculates the price of an order of apples given
// the quantity bought. No hints this time!

// Put your function here!
fn calculate_price_of_apples(qty: u64) -> u64 {
    let res = if qty <= 40 {
        qty * 3
    } else {
        qty * 2
    };

    res
}

// Do not change the tests!
#[test]
fn verify_test() {
    let price_1 = calculate_price_of_apples(35);
    let price_2 = calculate_price_of_apples(40);
    let price3 = calculate_price_of_apples(41);
    let price4 = calculate_price_of_apples(65);

    assert(105_u64 == price_1, 'Incorrect price');
    assert(120 == price_2, 'Incorrect price');
    assert(82 == price3, 'Incorrect price');
    assert(130 == price4, 'Incorrect price');
}
