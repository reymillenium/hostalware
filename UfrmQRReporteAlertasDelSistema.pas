unit UfrmQRReporteAlertasDelSistema;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls,
  UDataModuleAlertasDelSistema, RpDefine, RpRender, RpRenderPDF,
  QRExport;

type
  TQuickReportAlertasDelSistema = class(TQuickRep)
    QRBandTitleHabitacionesExistentes: TQRBand;
    QRBandDetalHabitacionesExistentes: TQRBand;
    QRImageLogo: TQRImage;
    QRMemo1: TQRMemo;
    QRLabelMotivoDeAlerta: TQRLabel;
    QRDBtxtMotivoDeAlerta: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRImage2: TQRImage;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRlblReferente: TQRLabel;
    QRShape1: TQRShape;
    QRlblFechaEmitido: TQRLabel;
    QRShape2: TQRShape;
    QRLabelDescripcionDeAlerta: TQRLabel;
    QRDBtxtDescripcionDeAlerta: TQRDBText;
    QRBand1: TQRBand;
    procedure QuickRepPreview(Sender: TObject);
  private

  public

  end;

var
  QuickReportAlertasDelSistema: TQuickReportAlertasDelSistema;

implementation
Uses
  UfrmPreviewReporteAlertasDelSistema;
{$R *.DFM}



procedure TQuickReportAlertasDelSistema.QuickRepPreview(Sender: TObject);
begin
  //Le mando al printer del Preview la información de este mismo reporte
  frmPreviewReporteAlertasDelSistema.Preview.QRPrinter := QuickReportAlertasDelSistema.QRPrinter;

  //Mando a que se muestre el Preview
  frmPreviewReporteAlertasDelSistema.Position:= poDesktopCenter;
  frmPreviewReporteAlertasDelSistema.ShowModal;
end;



end.
