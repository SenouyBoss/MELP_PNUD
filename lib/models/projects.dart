class projects{

  String title;
  String status;
  String description;
  String type;
  String manager;

  projects(this.title, this.status, this.description, this.type, this.manager);

  static List<projects> getProjects(){
      return<projects>[
    projects("title 1", "suspended", "desc1", "governance", "ahmed"),
    projects("title 2", "indentification", "desc1", "decomcracy", "anas"),
    projects("title 3", "cancelled", "desc1", "environement", "amine"),
    projects("title 4", "post-completion", "desc1", "transformation", "alex")

    ];

  }


}