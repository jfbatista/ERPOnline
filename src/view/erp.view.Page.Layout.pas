unit erp.view.Page.Layout;

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
   FMX.Layouts,
   FMX.Objects,
   FMX.Controls.Presentation,
   FMX.MultiView,
   Router4D.Interfaces;

type
   TPageLayout = class(TForm, iRouter4DComponent)
      lytContainer: TLayout;
      MultiView1: TMultiView;
      lytMultiView: TLayout;
      Rectangle1: TRectangle;
      lytMain: TLayout;
      lytTop: TLayout;
      lytBody: TLayout;
    recBackground: TRectangle;
   private
    { Private declarations }
   public
    { Public declarations }
    function Render:TFmxObject;
    procedure Unrender;
   end;

var
   PageLayout: TPageLayout;

implementation

{$R *.fmx}

{ TPageLayout }

function TPageLayout.Render: TFmxObject;
begin
  Result := lytContainer;
end;

procedure TPageLayout.Unrender;
begin

end;

end.

