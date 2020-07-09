unit UfrmQRReporteCamasExistentes;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls,
  UDataModuleAdminCapacidades, RpDefine, RpRender, RpRenderPDF,
  QRExport;

type
  TQuickReportCamasExistentes = class(TQuickRep)
    QRBandTitleHabitacionesExistentes: TQRBand;
    QRBandDetalHabitacionesExistentes: TQRBand;
    QRImageLogo: TQRImage;
    QRMemo1: TQRMemo;
    QRLabelProvincia: TQRLabel;
    QRDBtxtNumeroSerie: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRImage2: TQRImage;
    QRDBtxtTipoCama: TQRDBText;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    QRlblReferente: TQRLabel;
    QRShape1: TQRShape;
    QRlblFechaEmitido: TQRLabel;
    QRShape2: TQRShape;
    QRLabel10: TQRLabel;
    QRDBtxtEstadoOcupacional: TQRDBText;
    QRBand1: TQRBand;
    procedure QuickRepPreview(Sender: TObject);
  private

  public

  end;

var
  QuickReportCamasExistentes: TQuickReportCamasExistentes;

implementation
Uses
  UfrmPreviewReporteCamasExistentes;
{$R *.DFM}



procedure TQuickReportCamasExistentes.QuickRepPreview(Sender: TObject);
begin
  //Le mando al printer del Preview la información de este mismo reporte
  frmPreviewReporteCamasExistentes.Preview.QRPrinter := QuickReportCamasExistentes.QRPrinter;

  //Mando a que se muestre el Preview
  frmPreviewReporteCamasExistentes.Position:= poDesktopCenter;
  frmPreviewReporteCamasExistentes.ShowModal;
end;



end.
