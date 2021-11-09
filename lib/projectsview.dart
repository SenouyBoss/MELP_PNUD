import 'package:flutter/material.dart';
import 'drawer.dart';
import 'package:me_app/models/projects.dart';

class ProjectsView extends StatefulWidget {
  ProjectsView() : super();
  static const String routeName = '/projects';

  @override
  State<ProjectsView> createState() => _ProjectsViewState();
}

class _ProjectsViewState extends State<ProjectsView> {
  late List<projects> project;
  late List<projects> selectedProjects;
  late bool sort;

  //_ProjectsViewState(this.project, this.selectedProjects);

  @override
  void initState() {
    sort = false;
    selectedProjects = [];
    project = projects.getProjects();
    super.initState();
  }

  onSelectedRow(bool selected, projects project) async {
    setState(() {
      if (selected) {
        selectedProjects.add(project);
      } else {
        selectedProjects.remove(project);
      }
    });
  }

  deleteSelected() async {
    setState(() {
      if (selectedProjects.isNotEmpty) {
        List<projects> temp = [];
        temp.addAll(selectedProjects);
        for (projects projet in temp) {
          project.remove(projet);
          selectedProjects.remove(projet);
        }
      }
    });
  }
  onSortColum(int columnIndex, bool ascending) {
    if (columnIndex == 0) {
      if (ascending) {
        project.sort((a, b) => a.title.compareTo(b.title));
      } else {
        project.sort((a, b) => b.title.compareTo(a.title));
      }
    }
  }

  SingleChildScrollView dataBody() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: DataTable(
        sortAscending: sort,
        sortColumnIndex: 0,
        columns: [
          DataColumn(
              label: Text("TITLE"),
              numeric: false,
              tooltip: "This is Project Title",
              onSort: (columnIndex, ascending) {
                setState(() {
                  sort = !sort;
                });
                onSortColum(columnIndex, ascending);
              }),
          DataColumn(
            label: Text("STATUS"),
            numeric: false,
            tooltip: "This is Project Status",
          ),
          DataColumn(
            label: Text("MANAGER"),
            numeric: false,
            tooltip: "This is Project manager",
          ),
          DataColumn(
            label: Text("PROJECT TYPE"),
            numeric: false,
            tooltip: "This is Project type",
          ),
        ],
        rows: project
            .map(
              (projects) => DataRow(
              selected: selectedProjects.contains(projects),
              onSelectChanged: (b) {
                print("Onselect");
                onSelectedRow(b!, projects);
              },
              cells: [
                DataCell(
                  Text(projects.title),
                  onTap: () {
                    print('Selected ${projects.title}');
                  },
                ),
                DataCell(
                  Text(projects.status),
                ),
                DataCell(
                  Text(projects.manager),
                ),
                DataCell(
                  Text(projects.type),
                ),
              ]),
        )
            .toList(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Projects"),
        centerTitle: true,

      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        verticalDirection: VerticalDirection.down,
        children: <Widget>[
          Expanded(
            child: dataBody(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(20.0),
                child: OutlineButton(
                  child: Text('CHOOSE ${selectedProjects.length}'),
                  onPressed: () {},
                ),
              ),
             /* Padding(
                padding: EdgeInsets.all(20.0),
                child: OutlineButton(
                  child: Text('EDIT ${selectedProjects.length}'),
                  onPressed: () {},
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20.0),
                child: OutlineButton(
                  child: Text('DELETE ${selectedProjects.length}'),
                  onPressed: selectedProjects.isEmpty
                      ? null
                      : () {
                    deleteSelected();
                  },
                ),
              ),*/
            ],
          ),
        ],
      ),
        drawer: createDrawer(context)
    );
  }
}




















/*
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Projects'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          PaginatedDataTable(
            header: Text('Header Text'),
            rowsPerPage: 4,
            columns: [
              DataColumn(label: Text('Header A')),
              DataColumn(label: Text('Header B')),
              DataColumn(label: Text('Header C')),
              DataColumn(label: Text('Header D')),
            ],
            source: _DataSource(context),
          ),
        ],
      ),
    );
  }
}

*/


   /* return Container(
        child: Scaffold(
            appBar: AppBar(
              title: const Text('Projects'),
              centerTitle: true,
            ),
            drawer: createDrawer(context)
        ));
  }
}*/