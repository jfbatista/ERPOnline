unit erp.view.router;

interface

uses
   erp.view.Page.Home,
   erp.view.Page.Layout;

type
   TRouter = class
   private
      constructor Create;
      destructor Destroy; override;
   public
      class function New: TRouter;
   end;

var
   Router: TRouter;

implementation

{ TRouter }

uses
   Router4D;

constructor TRouter.Create;
begin
   TRouter4D
    .Switch
    .Router('Layout', TPageLayout)
    .Router('Home', TPageHome)
end;

destructor TRouter.Destroy;
begin

   inherited;
end;

class function TRouter.New: TRouter;
begin
   Result := self.Create;
end;

initialization
   Router := TRouter.New;


finalization
   Router.Free;

end.

