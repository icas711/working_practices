enum Url {
  dev('https://',
      'https://'),
  prod(
      'https://token',
      'https://');

  final String authorization;
  final String base;

  Uri get authUri => Uri.parse(authorization);

  Uri get baseUri => Uri.parse(base);

  const Url(this.authorization, this.base);
}


enum EndPointType {
  acts('/completionActs/', '/details/out', ''),
  checkLists('/checkLists/', '/details/out', ''),
  checkListsFrontend('/checkLists/frontend/', '/details/out', ''),
  users('/users/', '', ''),
  userInvitations('/userInvitations/', '/send', ''),
  validation('/invitations/', '/confirm?confirmationCode=', ''),
  cars('/cars/', '', ''),
  templates('/templates/', '/files', '/data'),
  events('/checkListEvents?parentId=', '', ''),
  detailsChecklists('/checkLists/','/files','/data'),
  detailsActs('/completionActs/','/files','/data'),
  detailsIncidents('/incidents/','/files','/data'),
  reports('/reports/','/files','/data'),
  incidents('/incidents/','/details/out',''),
  organization('/organizations/','',''),
  serverFile('/', '', '');

  final String value;
  final String secondValue;
  final String thirdValue;

  const EndPointType(this.value, this.secondValue, this.thirdValue);
}

extension DocumentMessages on EndPointType{
  String get title{
    if(this==EndPointType.checkLists){
      return 'Чек-лист проверки установленного оборудования';
    }else if(this==EndPointType.acts){
      return 'Акт установки и проверки установленного оборудования';
    }else{
      return 'Акт инцидентов и происшествий';
    }
  }

  String get templateLink{
    if(this==EndPointType.checkLists){
      return 'checklist';
    }else if(this==EndPointType.acts){
      return 'act';
    }else{
      return 'incident';
    }
  }
  String get pathNameView{
    if(this==EndPointType.checkLists){
      return 'ChecklistView';
    }else if(this==EndPointType.acts){
      return 'ActView';
    }else if(this==EndPointType.incidents){
      return 'IncidentView';
    }else {
      return 'ReportChecklistView';
    }
  }
  String get pathNameEdit{
    if(this==EndPointType.checkLists){
      return 'ChecklistEdit';
    }else if(this==EndPointType.acts){
      return 'ActEdit';
    }else{
      return 'IncidentEdit';
    }
  }
}
