unit erp.view.Page.Index;

interface

uses
   System.SysUtils,
   System.Types,
   System.UITypes,
   System.Classes,
   System.Variants,
   FMX.Types,
   FMX.Controls,
   FMX.Forms,
   FMX.Graphics,
   FMX.Dialogs,
   erp.view.Page.Layout, FMX.Layouts;

type
   TPageIndex = class(TForm)
    lytContainer: TLayout;
      procedure FormCreate(Sender: TObject);
   private
    { Private declarations }
   public
    { Public declarations }
   end;

var
   PageIndex: TPageIndex;

implementation

uses
   Router4D;

{$R *.fmx}

procedure TPageIndex.FormCreate(Sender: TObject);
begin
   TRouter4D.Render<TPageLayout>.SetElement(lytcontainer, lytcontainer)
end;

end.

