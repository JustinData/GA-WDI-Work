var lyrics = ["On the first day of Christmas my true love gave to me: A Partridge in a Pear Tree", "On the second day of Christmas my true love gave to me: 2 Turtle Doves and a Partridge in a Pear Tree", "On the third day of Christmas my true love gave to me: 3 French Hens 2 Turtle Doves and a Partridge in a Pear Tree", "On the fourth day of Christmas my true love gave to me: 4 Calling Birds 3 French Hens 2 Turtle Doves and a Partridge in a Pear Tree", "On the fifth day of Christmas my true love gave to me: 5 Golden Rings 4 Calling Birds 3 French Hens 2 Turtle Doves and a Partridge in a Pear Tree", "On the sixth day of Christmas my true love gave to me: 6 Geese a Laying 5 Golden Rings 4 Calling Birds 3 French Hens 2 Turtle Doves and a Partridge in a Pear Tree", "On the seventh day of Christmas my true love gave to me: 7 Swans a Swimming 6 Geese a Laying 5 Golden Rings 4 Calling Birds 3 French Hens 2 Turtle Doves and a Partridge in a Pear Tree", "On the eighth day of Christmas my true love gave to me: 8 Maids a Milking 7 Swans a Swimming 6 Geese a Laying 5 Golden Rings 4 Calling Birds 3 French Hens 2 Turtle Doves and a Partridge in a Pear Tree", "On the ninth day of Christmas my true love gave to me: 9 Ladies Dancing 8 Maids a Milking 7 Swans a Swimming 6 Geese a Laying 5 Golden Rings 4 Calling Birds 3 French Hens 2 Turtle Doves and a Partridge in a Pear Tree", "On the tenth day of Christmas my true love gave to me: 10 Lords a Leaping 9 Ladies Dancing 8 Maids a Milking 7 Swans a Swimming 6 Geese a Laying 5 Golden Rings 4 Calling Birds 3 French Hens 2 Turtle Doves and a Partridge in a Pear Tree", "On the eleventh day of Christmas my true love gave to me: 11 Pipers Piping 10 Lords a Leaping 9 Ladies Dancing 8 Maids a Milking 7 Swans a Swimming 6 Geese a Laying 5 Golden Rings 4 Calling Birds 3 French Hens 2 Turtle Doves and a Partridge in a Pear Tree", "On the twelfth day of Christmas my true love gave to me: 12 Drummers Drumming 11 Pipers Piping 10 Lords a Leaping 9 Ladies Dancing 8 Maids a Milking 7 Swans a Swimming 6 Geese a Laying 5 Golden Rings 4 Calling Birds 3 French Hens 2 Turtle Doves and a Partridge in a Pear Tree"]

var num = 0

function factorial(num)
{
    
    if (num < 12) {
        console.log(lyrics[num]);
        num++;
        factorial(num);
    } else {
        console.log("done")
    }


    // If the number is 0, its factorial is 1.
    // else if (num == 0) {
    //     return 1;
    // }
    // // Otherwise, call this recursive procedure again.
    // else {
    //     return (num * factorial(num - 1));