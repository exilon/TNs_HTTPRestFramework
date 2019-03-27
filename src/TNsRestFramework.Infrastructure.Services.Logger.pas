unit TNsRestFramework.Infrastructure.Services.Logger;

interface

uses
  TNsRestFramework.Infrastructure.Interfaces.Logger,
  TNsRestFramework.Infrastructure.LoggerFactory;

type

  TServiceLogger = class
    class procedure Init;
  end;

var
  Logger : ILogger;


implementation

{ TServiceLogger }

class procedure TServiceLogger.Init;
begin
  if Logger = nil then Logger := TLoggerFactory.CreateLogger;
end;


end.
