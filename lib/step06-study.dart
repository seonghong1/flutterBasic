import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          title: Container(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(children: [
                  Icon(
                    Icons.arrow_back_ios,
                    color: Colors.blue,
                  ),
                  Text(
                    "목록",
                    style: TextStyle(
                        fontWeight: FontWeight.w800, color: Colors.blue),
                  )
                ]),
                Icon(
                  Icons.add,
                  size: 35,
                  color: Colors.blue,
                )
              ],
            ),
          )),
      body: Container(
          child: ListView(
        children: [
          for (int i = 0; DUMMY_DATA.length > i; i++)
            PersonInfo(
                name: DUMMY_DATA[i]['name'],
                phoneNumber: DUMMY_DATA[i]['phoneNumber'])
        ],
      )),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(
              Icons.phone,
              size: 35,
            ),
            Icon(
              Icons.message,
              size: 35,
            ),
            Icon(
              Icons.person,
              size: 35,
            )
          ],
        ),
      ),
    ));
  }
}

/* Custom Widget */
class PersonInfo extends StatelessWidget {
  final name;
  final phoneNumber;
  const PersonInfo({super.key, this.name, this.phoneNumber});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 500,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
          child: Row(
            children: [
              Icon(Icons.person),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(this.name),
                    Text(
                      this.phoneNumber,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(width: 10, height: 5)
      ],
    );
  }
}

List<Map<String, String>> DUMMY_DATA = [
  {"id": "1", "name": "Randee Panons", "phoneNumber": "375-620-1708"},
  {"id": "2", "name": "Baxy Walhedd", "phoneNumber": "150-671-9150"},
  {"id": "3", "name": "Cross Rasch", "phoneNumber": "914-158-4157"},
  {"id": "4", "name": "Chan Daen", "phoneNumber": "518-560-6773"},
  {"id": "5", "name": "Bernardo Ossenna", "phoneNumber": "452-290-9685"},
  {"id": "6", "name": "Melisa Westlake", "phoneNumber": "443-795-6340"},
  {"id": "7", "name": "Odelia Motion", "phoneNumber": "904-145-4119"},
  {"id": "8", "name": "Pail Olenov", "phoneNumber": "751-426-3009"},
  {"id": "9", "name": "Ferdinand Streater", "phoneNumber": "208-407-7153"},
  {"id": "10", "name": "Bonnee Shord", "phoneNumber": "307-354-0963"},
  {"id": "11", "name": "Brion Arderne", "phoneNumber": "339-664-3875"},
  {"id": "12", "name": "Oswald Thornton", "phoneNumber": "865-581-9239"},
  {"id": "13", "name": "Ericha Cosham", "phoneNumber": "969-391-0529"},
  {"id": "14", "name": "Corene Di Baudi", "phoneNumber": "426-212-5381"},
  {"id": "15", "name": "Christoforo Sumbler", "phoneNumber": "717-293-9980"},
  {"id": "16", "name": "Raphaela Gabbitis", "phoneNumber": "873-405-6968"},
  {"id": "17", "name": "Phillip Bickerdicke", "phoneNumber": "797-105-8894"},
  {"id": "18", "name": "Blondie Bartoli", "phoneNumber": "931-705-5419"},
  {"id": "19", "name": "Antoni Guihen", "phoneNumber": "823-500-3488"},
  {"id": "20", "name": "Rachael Ashborn", "phoneNumber": "218-327-7007"},
  {"id": "21", "name": "Alexia Froude", "phoneNumber": "603-977-3529"},
  {"id": "22", "name": "Bentley Lye", "phoneNumber": "762-242-3427"},
  {"id": "23", "name": "Homer Daley", "phoneNumber": "651-385-1897"},
  {"id": "24", "name": "Avril Philippeaux", "phoneNumber": "935-534-4615"},
  {"id": "25", "name": "Bary Cudiff", "phoneNumber": "549-424-2308"},
  {"id": "26", "name": "Rod Tuer", "phoneNumber": "461-598-3458"},
  {"id": "27", "name": "Fredi Embling", "phoneNumber": "899-318-0268"},
  {"id": "28", "name": "Lonny Frape", "phoneNumber": "621-499-4900"},
  {"id": "29", "name": "Rancell Scawen", "phoneNumber": "929-104-8339"},
  {"id": "30", "name": "Ermina Aslet", "phoneNumber": "131-411-0371"},
  {"id": "31", "name": "Brooke Avrahamian", "phoneNumber": "428-358-1673"},
  {"id": "32", "name": "Alvera Ibbeson", "phoneNumber": "117-695-5261"},
  {"id": "33", "name": "Miles Peagram", "phoneNumber": "714-153-4364"},
  {"id": "34", "name": "Lianne Seyers", "phoneNumber": "868-914-4110"},
  {"id": "35", "name": "Gene Borthwick", "phoneNumber": "274-861-8563"},
  {"id": "36", "name": "Monika Chenery", "phoneNumber": "756-136-4777"},
  {"id": "37", "name": "Alexine Canty", "phoneNumber": "445-534-1827"},
  {"id": "38", "name": "Kaspar Mateu", "phoneNumber": "460-326-7172"},
  {"id": "39", "name": "Chevy Grishanov", "phoneNumber": "663-920-5953"},
  {"id": "40", "name": "Lenci Sinkings", "phoneNumber": "907-134-8622"},
  {"id": "41", "name": "Alejandra Canfield", "phoneNumber": "440-572-4707"},
  {"id": "42", "name": "Art Danniell", "phoneNumber": "728-656-3835"},
  {"id": "43", "name": "Theadora Mauser", "phoneNumber": "612-217-1678"},
  {"id": "44", "name": "Jacquette Pembridge", "phoneNumber": "946-225-6759"},
  {"id": "45", "name": "Parsifal Brearley", "phoneNumber": "855-848-8515"},
  {"id": "46", "name": "Roarke Pollock", "phoneNumber": "900-169-6746"},
  {"id": "47", "name": "Keith Folli", "phoneNumber": "194-190-0270"},
  {"id": "48", "name": "Bogart Joret", "phoneNumber": "695-481-9482"},
  {"id": "49", "name": "Deerdre O'Cuddie", "phoneNumber": "453-303-8387"},
  {"id": "50", "name": "Culver Vanyukhin", "phoneNumber": "769-912-4707"},
  {"id": "51", "name": "Bryant Eastope", "phoneNumber": "641-358-7436"},
  {"id": "52", "name": "Evangelin Nelthropp", "phoneNumber": "252-419-8225"},
  {"id": "53", "name": "Edmund Wisniewski", "phoneNumber": "468-418-6089"},
  {"id": "54", "name": "Keefe Solesbury", "phoneNumber": "386-119-1448"},
  {"id": "55", "name": "Arielle Roony", "phoneNumber": "710-497-3949"},
  {"id": "56", "name": "Lane Halbeard", "phoneNumber": "388-771-0549"},
  {"id": "57", "name": "Wilmette Horburgh", "phoneNumber": "552-617-1585"},
  {"id": "58", "name": "Redd Phythien", "phoneNumber": "355-605-2436"},
  {"id": "59", "name": "Cahra Raikes", "phoneNumber": "194-166-5049"},
  {"id": "60", "name": "Penrod Gritland", "phoneNumber": "276-128-9947"},
  {"id": "61", "name": "Agna Astridge", "phoneNumber": "565-170-2278"},
  {"id": "62", "name": "Arlee Sketch", "phoneNumber": "588-840-0301"},
  {"id": "63", "name": "Christyna Upstell", "phoneNumber": "647-856-1086"},
  {"id": "64", "name": "Kass Toward", "phoneNumber": "543-468-0767"},
  {"id": "65", "name": "Anstice Whisby", "phoneNumber": "666-489-9059"},
  {"id": "66", "name": "Brooke Marner", "phoneNumber": "480-703-0191"},
  {"id": "67", "name": "Gabriele Ellicott", "phoneNumber": "484-335-7539"},
  {"id": "68", "name": "Rosy Stubs", "phoneNumber": "641-123-1814"},
  {"id": "69", "name": "Skipp Reedick", "phoneNumber": "858-213-1323"},
  {"id": "70", "name": "Humphrey Sibbit", "phoneNumber": "404-848-4141"},
  {"id": "71", "name": "Darsey Sibson", "phoneNumber": "141-311-1546"},
  {"id": "72", "name": "Stoddard Rapier", "phoneNumber": "392-148-8109"},
  {"id": "73", "name": "Romona Riba", "phoneNumber": "690-578-6925"},
  {"id": "74", "name": "Elsinore Roubert", "phoneNumber": "136-108-2162"},
  {"id": "75", "name": "Rickie Wintersgill", "phoneNumber": "521-570-6980"},
  {"id": "76", "name": "Merrill Pipet", "phoneNumber": "588-479-0525"},
  {"id": "77", "name": "Nikolia Villa", "phoneNumber": "556-217-4908"},
  {"id": "78", "name": "Beverie Grunnell", "phoneNumber": "656-118-7930"},
  {"id": "79", "name": "Ramsey Richardson", "phoneNumber": "365-214-2002"},
  {"id": "80", "name": "Kelcy Becker", "phoneNumber": "368-397-8824"},
  {"id": "81", "name": "Dorelle Ruffler", "phoneNumber": "383-791-1518"},
  {"id": "82", "name": "Constantine Olivi", "phoneNumber": "976-923-3809"},
  {"id": "83", "name": "Beryl Lansbury", "phoneNumber": "878-577-6748"},
  {"id": "84", "name": "Hayward Gladtbach", "phoneNumber": "288-248-2663"},
  {"id": "85", "name": "Marmaduke Bumphries", "phoneNumber": "778-479-3857"},
  {"id": "86", "name": "Bondon Hacquoil", "phoneNumber": "704-960-6852"},
  {"id": "87", "name": "Arleen O'Hanley", "phoneNumber": "695-953-3306"},
  {"id": "88", "name": "Agneta Chetwynd", "phoneNumber": "332-310-9419"},
  {"id": "89", "name": "Ilaire Leckenby", "phoneNumber": "806-244-3225"},
  {"id": "90", "name": "Jorry Huncote", "phoneNumber": "278-882-3737"},
  {"id": "91", "name": "Candie Sangwin", "phoneNumber": "253-252-9690"},
  {"id": "92", "name": "Kathrine Sherrard", "phoneNumber": "545-161-7484"},
  {"id": "93", "name": "Yul Janning", "phoneNumber": "444-118-5202"},
  {"id": "94", "name": "Ginnifer Peres", "phoneNumber": "286-565-0028"},
  {"id": "95", "name": "Nicky Vanichev", "phoneNumber": "692-109-4974"},
  {"id": "96", "name": "Ollie McDonald", "phoneNumber": "972-497-9228"},
  {"id": "97", "name": "Shanie Tiltman", "phoneNumber": "814-686-6680"},
  {"id": "98", "name": "Isaak Tomasino", "phoneNumber": "541-100-3093"},
  {"id": "99", "name": "Mel Gilyott", "phoneNumber": "861-481-0268"},
  {
    "id": "100",
    "name": "Archibaldo Franciottoi",
    "phoneNumber": "446-171-3486"
  },
  {"id": "101", "name": "Bron O'Boyle", "phoneNumber": "855-562-5926"},
  {"id": "102", "name": "Marcile Eivers", "phoneNumber": "796-209-6413"},
  {"id": "103", "name": "Janenna Sinnie", "phoneNumber": "573-410-9996"},
  {"id": "104", "name": "Stephana Jelley", "phoneNumber": "783-619-0917"},
  {"id": "105", "name": "Devora Deare", "phoneNumber": "323-903-2068"},
  {"id": "106", "name": "Marice Domenicone", "phoneNumber": "918-585-7938"},
  {"id": "107", "name": "Torey Glandfield", "phoneNumber": "196-207-6827"},
  {"id": "108", "name": "Sergeant Kirkup", "phoneNumber": "615-540-6983"},
  {"id": "109", "name": "Delphinia Tubbs", "phoneNumber": "486-938-9329"},
  {"id": "110", "name": "Frayda Roblin", "phoneNumber": "373-280-1147"},
  {"id": "111", "name": "Sharline Harland", "phoneNumber": "775-715-9020"},
  {"id": "112", "name": "Nelia Vian", "phoneNumber": "850-648-7392"},
  {"id": "113", "name": "Annis Gronous", "phoneNumber": "245-880-5395"},
  {"id": "114", "name": "Gilbertine Willisch", "phoneNumber": "748-139-3419"},
  {"id": "115", "name": "Ryon Tilt", "phoneNumber": "516-909-4114"},
  {"id": "116", "name": "Nonnah Hamshere", "phoneNumber": "784-985-9932"},
  {"id": "117", "name": "Corrie Astman", "phoneNumber": "232-332-0931"},
  {"id": "118", "name": "Man Caltera", "phoneNumber": "700-740-1547"},
  {"id": "119", "name": "Zebulen Rawlence", "phoneNumber": "730-940-2409"},
  {"id": "120", "name": "Harcourt Coneybeer", "phoneNumber": "599-261-6794"},
  {"id": "121", "name": "Ynes Courcey", "phoneNumber": "333-766-2177"},
  {"id": "122", "name": "Hedy Hugonneau", "phoneNumber": "693-810-4541"},
  {"id": "123", "name": "Davidson Zanetto", "phoneNumber": "662-298-6515"},
  {"id": "124", "name": "Micah Wilbor", "phoneNumber": "316-769-3235"},
  {"id": "125", "name": "Gnni Toun", "phoneNumber": "427-903-4458"},
  {"id": "126", "name": "Elyssa Abilowitz", "phoneNumber": "860-329-3516"},
  {"id": "127", "name": "Joanna Mignot", "phoneNumber": "106-330-3578"},
  {"id": "128", "name": "Myrlene Darque", "phoneNumber": "215-375-5655"},
  {"id": "129", "name": "Keriann Caghy", "phoneNumber": "761-262-8317"},
  {"id": "130", "name": "Olin Rallin", "phoneNumber": "864-356-9088"},
  {"id": "131", "name": "Millard Paslow", "phoneNumber": "856-134-2257"},
  {"id": "132", "name": "Iosep Pankettman", "phoneNumber": "253-527-8470"},
  {"id": "133", "name": "Corbin Bereford", "phoneNumber": "524-378-9499"},
  {"id": "134", "name": "Ulysses Cudby", "phoneNumber": "414-903-9072"},
  {"id": "135", "name": "Joelynn Ferruzzi", "phoneNumber": "773-541-3828"},
  {"id": "136", "name": "Sinclare Maciaszczyk", "phoneNumber": "549-384-0520"},
  {"id": "137", "name": "Jaynell Pickrill", "phoneNumber": "606-576-0418"},
  {"id": "138", "name": "Dori Fitzroy", "phoneNumber": "636-560-3690"},
  {"id": "139", "name": "Whit Chater", "phoneNumber": "270-940-9944"},
  {"id": "140", "name": "Say Benardet", "phoneNumber": "990-332-6455"},
  {"id": "141", "name": "Carlin Pittway", "phoneNumber": "781-544-7433"},
  {"id": "142", "name": "Hirsch Keenlayside", "phoneNumber": "249-359-5803"},
  {"id": "143", "name": "Delainey Corker", "phoneNumber": "340-970-7520"},
  {"id": "144", "name": "Maurise Temblett", "phoneNumber": "113-651-8553"},
  {"id": "145", "name": "Win Toffanini", "phoneNumber": "454-261-4972"},
  {"id": "146", "name": "Gregg Roscher", "phoneNumber": "440-194-4762"},
  {"id": "147", "name": "Felipa Dufaur", "phoneNumber": "213-278-2285"},
  {"id": "148", "name": "Melina Gooderson", "phoneNumber": "531-256-6083"},
  {"id": "149", "name": "Franni Hubback", "phoneNumber": "949-728-8282"},
  {"id": "150", "name": "Elspeth Beddow", "phoneNumber": "270-968-3880"},
  {"id": "151", "name": "Ainslee Gabites", "phoneNumber": "542-559-0831"},
  {"id": "152", "name": "Alphonse Macknish", "phoneNumber": "254-891-8487"},
  {"id": "153", "name": "Normie Elnaugh", "phoneNumber": "166-181-9180"},
  {"id": "154", "name": "Corenda Disley", "phoneNumber": "983-633-9274"},
  {"id": "155", "name": "Charlton Thoumas", "phoneNumber": "512-870-8826"},
  {"id": "156", "name": "Laurice Whebell", "phoneNumber": "160-253-1781"},
  {"id": "157", "name": "Tedie Rosenkrantz", "phoneNumber": "128-676-6686"},
  {"id": "158", "name": "Jim Zipsell", "phoneNumber": "979-681-0216"},
  {"id": "159", "name": "Papageno Dell Casa", "phoneNumber": "167-567-6888"},
  {"id": "160", "name": "Bret Mendoza", "phoneNumber": "443-756-1684"},
  {"id": "161", "name": "Marcelline Hacun", "phoneNumber": "376-411-2053"},
  {"id": "162", "name": "Loretta Godard", "phoneNumber": "670-792-9736"},
  {"id": "163", "name": "Jo-ann Merington", "phoneNumber": "632-470-3711"},
  {"id": "164", "name": "Kassandra Marcam", "phoneNumber": "195-948-2852"},
  {"id": "165", "name": "Bjorn Bazely", "phoneNumber": "778-512-9216"},
  {"id": "166", "name": "Thibaud Ricco", "phoneNumber": "244-893-5225"},
  {"id": "167", "name": "Miranda Matzke", "phoneNumber": "962-653-9239"},
  {"id": "168", "name": "Ase McGilvary", "phoneNumber": "665-978-6505"},
  {"id": "169", "name": "Rosemaria Daly", "phoneNumber": "169-362-9522"},
  {"id": "170", "name": "Langston Janeczek", "phoneNumber": "701-663-1453"},
  {"id": "171", "name": "Ronnica Duffil", "phoneNumber": "725-252-7337"},
  {"id": "172", "name": "Mead Kerton", "phoneNumber": "108-910-3658"},
  {"id": "173", "name": "Dianemarie Artist", "phoneNumber": "477-616-9591"},
  {"id": "174", "name": "Webster Hacking", "phoneNumber": "689-696-5372"},
  {"id": "175", "name": "Dion Dunsford", "phoneNumber": "737-646-5321"},
  {"id": "176", "name": "Finlay Lacelett", "phoneNumber": "524-771-6046"},
  {"id": "177", "name": "David Boutwell", "phoneNumber": "442-339-9533"},
  {"id": "178", "name": "Elliot Gibbard", "phoneNumber": "639-920-4947"},
  {"id": "179", "name": "Mada Eastabrook", "phoneNumber": "514-137-9864"},
  {"id": "180", "name": "Tamas Rockhill", "phoneNumber": "971-345-4862"},
  {"id": "181", "name": "Lula Cuell", "phoneNumber": "213-567-4830"},
  {"id": "182", "name": "Charlotta Pessler", "phoneNumber": "737-620-6165"},
  {"id": "183", "name": "Lauryn Sargison", "phoneNumber": "934-829-6376"},
  {"id": "184", "name": "Rodrick Robertacci", "phoneNumber": "172-668-9136"},
  {"id": "185", "name": "Lorrie Slany", "phoneNumber": "277-277-1490"},
  {"id": "186", "name": "Mel Bougen", "phoneNumber": "780-233-0039"},
  {"id": "187", "name": "Sabrina Gallagher", "phoneNumber": "387-906-9589"},
  {"id": "188", "name": "Garrard Siddall", "phoneNumber": "901-358-4353"},
  {"id": "189", "name": "Loraine Imlin", "phoneNumber": "849-400-5635"},
  {"id": "190", "name": "Taddeo Frankel", "phoneNumber": "820-756-2594"},
  {"id": "191", "name": "Martynne Eglinton", "phoneNumber": "226-529-1865"},
  {"id": "192", "name": "Jillian Roggero", "phoneNumber": "176-438-6153"},
  {"id": "193", "name": "Jenilee Eschalotte", "phoneNumber": "637-747-8834"},
  {"id": "194", "name": "Gian Wackly", "phoneNumber": "598-560-2085"},
  {"id": "195", "name": "Frank Enns", "phoneNumber": "555-856-9222"},
  {"id": "196", "name": "Alexandrina Dismore", "phoneNumber": "118-474-5819"},
  {"id": "197", "name": "Neda Merrifield", "phoneNumber": "670-281-9629"},
  {"id": "198", "name": "Carmelita Chipps", "phoneNumber": "759-488-0827"},
  {"id": "199", "name": "Bren MacKeller", "phoneNumber": "465-778-8959"},
  {"id": "200", "name": "Bertram Langdridge", "phoneNumber": "490-326-2189"},
];
