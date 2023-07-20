program ERP;

uses
  System.StartUpCopy,
  FMX.Forms,
  erp.view.Page.Index in 'src\view\erp.view.Page.Index.pas' {PageIndex},
  erp.view.router in 'src\view\erp.view.router.pas',
  erp.view.Page.Home in 'src\view\erp.view.Page.Home.pas' {PageHome},
  erp.view.Page.Layout in 'src\view\erp.view.Page.Layout.pas' {PageLayout};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TPageIndex, PageIndex);
  Application.Run;
end.
