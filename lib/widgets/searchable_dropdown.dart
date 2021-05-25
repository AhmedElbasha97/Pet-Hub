import 'package:flutter/material.dart';
import 'package:searchable_dropdown/searchable_dropdown.dart';

class SearchableDropDownComp extends StatefulWidget {
  final Function speciesController;

  SearchableDropDownComp(this.speciesController);
  @override
  _SearchableDropDownCompState createState() => _SearchableDropDownCompState();
}

class _SearchableDropDownCompState extends State<SearchableDropDownComp> {
  final speciesController = TextEditingController();
  String speciesSelected = '';
  final List<DropdownMenuItem> items = [
    DropdownMenuItem(child: Text('Dogs'), value: 'Dogs'),
    DropdownMenuItem(child: Text('Darns'), value: 'Darns'),
    DropdownMenuItem(child: Text('Cats'), value: 'Cats'),
    DropdownMenuItem(child: Text('Hamsters'), value: 'Hamsters'),
    DropdownMenuItem(child: Text('Birds'), value: 'Birds'),
    DropdownMenuItem(child: Text('Rabbits'), value: 'Rabbits'),
    DropdownMenuItem(child: Text('Others'), value: 'Others'),
    DropdownMenuItem(child: Text('ss'), value: 'ss'),
    DropdownMenuItem(child: Text('sss'), value: 'sss'),
    DropdownMenuItem(child: Text('ssss'), value: 'ssss'),
    DropdownMenuItem(child: Text('ssssss'), value: 'ssssss'),
    DropdownMenuItem(child: Text('ssssssss'), value: 'ssssssss'),
    DropdownMenuItem(child: Text('sssssssssss'), value: 'sssssssssss'),
  ];

  @override
  Widget build(BuildContext context) {
    return SearchableDropdown.single(
      searchFn: (String keyword, items) {
        List<int> ret = List<int>();
        if (keyword != null && items != null && keyword.isNotEmpty) {
          keyword.split(" ").forEach((k) {
            int i = 0;
            items.forEach((item) {
              if (k.isNotEmpty &&
                  (item.value
                      .toString()
                      .toLowerCase()
                      .contains(k.toLowerCase())) &&
                  item.value.toString() != 'Others') {
                ret.add(i);
              }
              i++;
            });
          });
        }
        if (keyword.isEmpty) {
          ret = Iterable<int>.generate(items.length).toList();
        }
        ret.add(6);
        return (ret);
      },
      items: items,
      value: speciesSelected,
      hint: "Select Species",
      searchHint: null,
      onChanged: (value) {
        if (value == 'Others') {
          widget.speciesController(value);
        }
        setState(() {
          speciesSelected = value;
        });
      },
      isExpanded: true,
    );
  }
}
