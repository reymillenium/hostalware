unit UfrmQRReporteHabitacionesExistentes;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls,
  UDataModuleAdminCapacidades, RpDefine, RpRender, RpRenderPDF,
  QRExport;

type
  TQuickReportHabitacionesExistentes = class(TQuickRep)
    QRBandTitleHabitacionesExistentes: TQRBand;
    QRBandDetalHabitacionesExistentes: TQRBand;
    QRImageLogo: TQRImage;
    QRMemo1: TQRMemo;
    QRLabelProvincia: TQRLabel;
    QRDBtxtNumeroHabitacion: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRImage2: TQRImage;
    QRDBtxtVentiladores: TQRDBText;
    QRDBtxtArmario: TQRDBText;
    QRDBtxtCloset: TQRDBText;
    QRDBtxtTelefonoDirecto: TQRDBText;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRlblReferente: TQRLabel;
    QRShape1: TQRShape;
    QRlblFechaEmitido: TQRLabel;
    QRShape2: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRDBtxtEspejo: TQRDBText;
    QRDBtxtMesitasNoche: TQRDBText;
    QRDBtxtAireAcondicionado: TQRDBText;
    QRDBtxtAguaCaliente: TQRDBText;
    QRDBtxtTelefonoInterno: TQRDBText;
    QRBand1: TQRBand;
    procedure QuickRepPreview(Sender: TObject);
  private

  public

  end;

var
  QuickReportHabitacionesExistentes: TQuickReportHabitacionesExistentes;

implementation
Uses
  UfrmPreviewReporteHabitacionesExistentes;
{$R *.DFM}



procedure TQuickReportHabitacionesExistentes.QuickRepPreview(
  Sender: TObject);
begin
  //Le mando al printer del Preview la información de este mismo reporte
  frmPreviewReporteHabitacionesExistentes.Preview.QRPrinter := QuickReportHabitacionesExistentes.QRPrinter;

  //Mando a que se muestre el Preview
  frmPreviewReporteHabitacionesExistentes.Position:= poDesktopCenter;
  frmPreviewReporteHabitacionesExistentes.ShowModal;
end;



end.
