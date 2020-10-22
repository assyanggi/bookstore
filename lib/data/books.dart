class Books {
  String name;
  String tittle;
  String image;

  Books(this.name, this.tittle, this.image);
}

List<Books> getBooksList() {
  return <Books>[
    Books("Robert Iwel", "An Annonymous Girl",
        "asset/an_anonymous_girl_by_greer_hendricks.jpg"),
    Books("Renata", "Maid Ocean", "asset/maid_by_stepanie_land.jpg"),
    Books("Michele Arch", "The Age",
        "asset/the_age_of_light_by_whitney_scharer.jpg"),
    Books("Philip Ocean", "The Dreamers",
        "asset/the_dreamers_by_karen_thompson.jpg"),
    Books("Enrique Obs", "Last Romantics",
        "asset/the_last_romantics_by_tara_conklin.jpg"),
    Books("Natalia Gracia", "Lost Girls",
        "asset/the_lost_girls_of_paris_by_pam_jenoff.jpg"),
    Books("Juna", "Lost Night", "asset/the_lost_night_by_andrea_bartz.jpg"),
    Books("Elson Mandela", "Night Tiger",
        "asset/the_night_tiger_by_yangsze_choo.jpg"),
    Books("Whibs Stuart", "Suspect", "asset/the_suspect_by_fiona_barton.jpg"),
    Books("Erick Wheels", "Water Cure",
        "asset/the_water_cure_by_sophie_mackintosh.jpg"),
    Books("Jhason Enrique", "You Know You Want",
        "asset/you_know_you_want_this_by_kristen_roupenian.jpg"),
  ];
}
