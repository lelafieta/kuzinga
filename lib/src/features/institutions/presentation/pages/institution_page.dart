import 'package:flutter/material.dart';

class InstitutionPage extends StatefulWidget {
  const InstitutionPage({super.key});

  @override
  State<InstitutionPage> createState() => _InstitutionPageState();
}

class _InstitutionPageState extends State<InstitutionPage> {
  final List<String> _institutions =
      List.generate(100, (index) => 'Institution $index');
  final ScrollController _scrollController = ScrollController();
  final TextEditingController _searchController = TextEditingController();
  late List<String> _filteredInstitutions;
  int _currentMax = 10;

  @override
  void initState() {
    super.initState();
    _filteredInstitutions = _institutions.take(_currentMax).toList();
    _scrollController.addListener(_scrollListener);
  }

  void _scrollListener() {
    if (_scrollController.position.pixels ==
        _scrollController.position.maxScrollExtent) {
      setState(() {
        _currentMax = _currentMax + 10;
        _filteredInstitutions = _institutions.take(_currentMax).toList();
      });
    }
  }

  void _filterInstitutions(String query) {
    final filtered = _institutions
        .where((institution) =>
            institution.toLowerCase().contains(query.toLowerCase()))
        .toList();
    setState(() {
      _filteredInstitutions = filtered.take(_currentMax).toList();
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Institutions'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              showSearch(
                context: context,
                delegate: InstitutionSearchDelegate(
                    _institutions, _filterInstitutions),
              );
            },
          ),
        ],
      ),
      body: ListView.builder(
        controller: _scrollController,
        itemCount: _filteredInstitutions.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(_filteredInstitutions[index]),
          );
        },
      ),
    );
  }
}

class InstitutionSearchDelegate extends SearchDelegate {
  final List<String> institutions;
  final Function(String) onQueryChanged;

  InstitutionSearchDelegate(this.institutions, this.onQueryChanged);

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
          onQueryChanged(query);
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    onQueryChanged(query);
    return ListView.builder(
      itemCount: institutions.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(institutions[index]),
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    onQueryChanged(query);
    return ListView.builder(
      itemCount: institutions.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(institutions[index]),
        );
      },
    );
  }
}
