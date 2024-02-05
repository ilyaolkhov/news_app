import 'package:flutter/material.dart';
import 'package:news_app/Theme.dart';
import '../widget/text_field.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}


class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: BodyScreen(),
    );
  }
}

class BodyScreen extends StatefulWidget {
  const BodyScreen({super.key});

  @override
  State<BodyScreen> createState() => _BodyScreenState();
}

class _BodyScreenState extends State<BodyScreen> {
  var selected = 0;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          surfaceTintColor: Colors.white,
          shadowColor: Colors.grey,
          expandedHeight: 200,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Browse',
                  style: TextStyle(
                      fontSize: 24,
                      color: blackPrimary,
                      fontWeight: FontWeight.w600)),
              const SizedBox(
                height: 8,
              ),
              Text(
                'Discover things of this world',
                style: TextStyle(
                    color: greyPrimary,
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              )
            ],
          ),
          pinned: true,
          snap: true,
          floating: true,
          bottom: PreferredSize(
              preferredSize: const Size.fromHeight(125),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: CustomTextField(text: 'Search', leadingIcons: Icon(Icons.search, color: greyPrimary,),),
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  const Center(child: ListFilterChip()),
                ],
              )),
        ),
        SliverList.builder(itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
            child: SizedBox(
              height: 280,
              child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16)),
                  elevation: 2,
                  surfaceTintColor: Colors.white,
                  child: Column(
                    children: [
                      Container(
                        height: 190,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                            borderRadius:
                            BorderRadius.vertical(top: Radius.circular(16)),
                            color: Colors.cyan),

                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          children: [
                            Expanded(
                                child: Text(
                                  'A Simple Trick For Creating Color Palettes Quickly',
                                  style: TextStyle(
                                      color: blackPrimary,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                )),
                            IconButton(onPressed: () {
                              setState(() {
                                selected==1;

                              });
                            },
                                icon:Icon(
                                  Icons.bookmark_border, color: greyPrimary,
                                  size: 30,
                                  fill: 1,
                                ))
                          ],
                        ),
                      )
                    ],
                  )),
            ),
          );
        })
      ],
    );
  }
}




enum categories { Random, Sports, Gaming, Politics, Technologies, Animals,}

class ListFilterChip extends StatefulWidget {
  const ListFilterChip({super.key});

  @override
  State<ListFilterChip> createState() => _ListFilterChipState();
}

class _ListFilterChipState extends State<ListFilterChip> {
  Set<categories> categor = <categories>{};

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 8.0,
      ),
      child: SizedBox(
        height: 55,
        child: Padding(
          padding: const EdgeInsets.only(left: 8, bottom: 8.0),
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Row(
                  children: categories.values
                      .map(
                        (categories category) => Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: FilterChip(
                          selectedColor: Color(0xFF465AD6),
                          backgroundColor: Color(0xFFF3F3F6),
                          showCheckmark: false,
                          side: const BorderSide(
                              width: 0, color: Colors.transparent),
                          shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                  width: 0, color: Colors.grey),
                              borderRadius: BorderRadius.circular(20)),
                          selected: categor.contains(category),
                          label: Text(
                            category.name,
                          ),
                          labelStyle: TextStyle( fontSize: 16,
                            color: categor.contains(category)
                                ? Colors.white
                                : greyPrimary,
                          ),
                          onSelected: (bool selected) {
                            setState(() {
                              if (selected) {
                                categor.add(category);
                              } else {
                                categor.remove(category);
                              }
                            });
                          }),
                    ),
                  )
                      .toList())
            ],
          ),
        ),
      ),
    );
  }
}

class Language extends StatefulWidget {
  const Language({super.key});

  @override
  State<Language> createState() => _LanguageState();
}

class _LanguageState extends State<Language> {
  @override
  Widget build(BuildContext context) {
    List<String> list = <String>['UK', 'RU', 'CN', 'KZ'];
    String dropdownValue = list.first;
    return DropdownButtonHideUnderline(
      child: SizedBox(
        width: 50,
        child: DropdownButton(
          iconSize: 16,
          itemHeight: kMinInteractiveDimension,
          value: dropdownValue,
          style: const TextStyle(color: Colors.grey),
          onChanged: (String? value) {
            // This is called when the user selects an item.
            setState(() {
              dropdownValue = value!;
            });
          },
          items: list.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ),
    );
  }
}
