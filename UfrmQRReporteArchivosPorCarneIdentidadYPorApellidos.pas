unit UfrmQRReporteArchivosPorCarneIdentidadYPorApellidos;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls,
  UDataModuleArchivoDeRegistros, RpDefine, RpRender, RpRenderPDF,
  QRExport;

type
  TQuickReportArchivosPorCarneIdentidadYPorApellidos = class(TQuickRep)
    QRBandTitleHabitacionesExistentes: TQRBand;
    QRBandDetalHabitacionesExistentes: TQRBand;
    QRImageLogo: TQRImage;
    QRMemo1: TQRMemo;
    QRLabelProvincia: TQRLabel;
    QRDBtxtNombre: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRImage2: TQRImage;
    QRDBtxtApellidos: TQRDBText;
    QRDBtxtCarneIdentidad: TQRDBText;
    QRDBtxtNumeroHabitacion: TQRDBText;
    QRDBtxtPais: TQRDBText;
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
    QRLabel10: TQRLabel;
    QRLabel12: TQRLabel;
    QRDBtxtTipoCama: TQRDBText;
    QRDBtxtMotivoHospedaje: TQRDBText;
    QRBand1: TQRBand;
    procedure QuickRepPreview(Sender: TObject);
  private

  public

  end;

var
  QuickReportArchivosPorCarneIdentidadYPorApellidos: TQuickReportArchivosPorCarneIdentidadYPorApellidos;

implementation
Uses
  UfrmPreviewReporteArchivosPorCarneIdentidadYPorApellidos;
{$R *.DFM}



procedure TQuickReportArchivosPorCarneIdentidadYPorApellidos.QuickRepPreview(Sender: TObject);
begin
  //Le mando al printer del Preview la información de este mismo reporte
  frmPreviewReporteArchivosPorCarneIdentidadYPorApellidos.Preview.QRPrinter := QuickReportArchivosPorCarneIdentidadYPorApellidos.QRPrinter;

  //Mando a que se muestre el Preview
  frmPreviewReporteArchivosPorCarneIdentidadYPorApellidos.Position:= poDesktopCenter;
  frmPreviewReporteArchivosPorCarneIdentidadYPorApellidos.ShowModal;
end;



end.
