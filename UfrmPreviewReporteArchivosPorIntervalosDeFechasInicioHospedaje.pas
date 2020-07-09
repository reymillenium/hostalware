unit UfrmPreviewReporteArchivosPorIntervalosDeFechasInicioHospedaje;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExportPack, ImgList, QRPrntr, ComCtrls, ToolWin, ExtCtrls,
  StdCtrls, RpDefine, RpBase, RpSystem, ATImageBox, RpRender, RpRenderPDF,
  AdvToolBar;

type
  TfrmPreviewReporteArchivosPorIntervalosDeFechasInicioHospedaje = class(TForm)
    Preview: TQRPreview;
    EXQR: TExportQR;
    SaveDialogSimulacionImagenes: TSaveDialog;
    RvRenderPDFSimulacionImagenes: TRvRenderPDF;
    IL: TImageList;
    ToolBar1: TToolBar;
    AdvToolBar1: TAdvToolBar;
    barbtnSalvar: TAdvToolBarButton;
    barbtnImprimir: TAdvToolBarButton;
    AdvToolBarSeparator1: TAdvToolBarSeparator;
    barbtnPrimero: TAdvToolBarButton;
    barbtnAnterior: TAdvToolBarButton;
    barbtnSiguiente: TAdvToolBarButton;
    barbtnUltimo: TAdvToolBarButton;
    AdvToolBarSeparator2: TAdvToolBarSeparator;
    barbtnAumentarZoom: TAdvToolBarButton;
    barbtnReducirZoom: TAdvToolBarButton;
    barbtnZoomToWidth: TAdvToolBarButton;
    barbtnZoomToFit: TAdvToolBarButton;
    AdvToolBarSeparator3: TAdvToolBarSeparator;
    barbtnExit: TAdvToolBarButton;
    procedure TBSaveClick(Sender: TObject);
    procedure TBPrintClick(Sender: TObject);
    procedure TBExitClick(Sender: TObject);
    procedure TBPrimeroClick(Sender: TObject);
    procedure TBZoomToFitClick(Sender: TObject);
    procedure TBZoomToWidthClick(Sender: TObject);
    procedure TBAumentarZoomClick(Sender: TObject);
    procedure TBReducirZoomClick(Sender: TObject);
    procedure TBUltimoClick(Sender: TObject);
    procedure TBSiguienteClick(Sender: TObject);
    procedure TBAnteriorClick(Sender: TObject);
    procedure PreviewPageAvailable(Sender: TObject; PageNum: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
    IdiomaImperante: AnsiString;
    NombreMuestra: AnsiString;
    FechaDelSistema: AnsiString;
  end;

var
  frmPreviewReporteArchivosPorIntervalosDeFechasInicioHospedaje: TfrmPreviewReporteArchivosPorIntervalosDeFechasInicioHospedaje;
  

implementation

Uses
  UfrmQRReporteArchivosPorIntervalosDeFechasInicioHospedaje;
{$R *.dfm}

procedure TfrmPreviewReporteArchivosPorIntervalosDeFechasInicioHospedaje.TBSaveClick(Sender: TObject);
begin
  //Le cambio el Caption al sistema, por una cuesti�n informativa y de apariencia tambi�n.
  //En dependencia del idioma imperante
  if (IdiomaImperante = 'Espannol')
    then
      begin
        frmPreviewReporteArchivosPorIntervalosDeFechasInicioHospedaje.Caption:= 'HostalWare. Vista Previa. Exportando el Reporte de Archivos a PDF. P�gina ' + IntToStr(Preview.PageNumber) + ' de ' + IntToStr(Preview.QRPrinter.PageCount);
      end
        else
          begin
            if (IdiomaImperante = 'Ingles')
              then
                begin
                  frmPreviewReporteArchivosPorIntervalosDeFechasInicioHospedaje.Caption:= 'HostalWare. Vista Previa. Exportando el Reporte de Archivos a PDF. P�gina ' + IntToStr(Preview.PageNumber) + ' de ' + IntToStr(Preview.QRPrinter.PageCount);
                end;
          end;

        //*** Usando QuickReport ***
        
  // Be careful!, only if export from a preview window
  EXQR.Preview := Preview;
  EXQR.ExportQRFromPreview;

  //Le restituyo el Caption al sistema, por una cuesti�n informativa y de apariencia tambi�n.
  //En dependencia del idioma imperante
  if (IdiomaImperante = 'Espannol')
    then
      begin
        frmPreviewReporteArchivosPorIntervalosDeFechasInicioHospedaje.Caption:= 'HostalWare. Vista Previa del Reporte de Archivos. P�gina ' + IntToStr(Preview.PageNumber) + ' de ' + IntToStr(Preview.QRPrinter.PageCount);
      end
        else
          begin
            if (IdiomaImperante = 'Ingles')
              then
                begin
                  frmPreviewReporteArchivosPorIntervalosDeFechasInicioHospedaje.Caption:= 'HostalWare. Vista Previa del Reporte de Archivos. P�gina ' + IntToStr(Preview.PageNumber) + ' de ' + IntToStr(Preview.QRPrinter.PageCount);
                end;
          end;
end;



procedure TfrmPreviewReporteArchivosPorIntervalosDeFechasInicioHospedaje.TBPrintClick(Sender: TObject);
begin
  Preview.QRPrinter.Print;
end;



procedure TfrmPreviewReporteArchivosPorIntervalosDeFechasInicioHospedaje.TBExitClick(Sender: TObject);
begin
  Close;
  Preview.QRPrinter := nil;
end;



procedure TfrmPreviewReporteArchivosPorIntervalosDeFechasInicioHospedaje.TBPrimeroClick(Sender: TObject);
begin
  //Voy a la primera pagina
  Preview.PageNumber:= 1;

  //Especifico la posicion de pagina
  frmPreviewReporteArchivosPorIntervalosDeFechasInicioHospedaje.Caption:= 'HostalWare. Vista Previa del Reporte de Archivos. P�gina ' + IntToStr(Preview.PageNumber) + ' de ' + IntToStr(Preview.QRPrinter.PageCount);
end;



procedure TfrmPreviewReporteArchivosPorIntervalosDeFechasInicioHospedaje.TBZoomToFitClick(Sender: TObject);
begin
  //Hago que el reporte se viasualize complete (que encaje o coincida)
  Preview.ZoomToFit;
end;



procedure TfrmPreviewReporteArchivosPorIntervalosDeFechasInicioHospedaje.TBZoomToWidthClick(Sender: TObject);
begin
  //Hago que el reporte se viasualize al ancho completo
  Preview.ZoomToWidth;
end;



procedure TfrmPreviewReporteArchivosPorIntervalosDeFechasInicioHospedaje.TBAumentarZoomClick(Sender: TObject);
begin
  //Hago que el reporte aumente el zoom
  Preview.Zoom:= Preview.Zoom + 10;
end;



procedure TfrmPreviewReporteArchivosPorIntervalosDeFechasInicioHospedaje.TBReducirZoomClick(Sender: TObject);
begin
  //Hago que el reporte reduzca el zoom
  Preview.Zoom:= Preview.Zoom - 10;
end;



procedure TfrmPreviewReporteArchivosPorIntervalosDeFechasInicioHospedaje.TBUltimoClick(Sender: TObject);
begin
  //Voy a la ultima pagina
  Preview.PageNumber:= Preview.QRPrinter.PageCount;

  //Especifico la posicion de pagina
  frmPreviewReporteArchivosPorIntervalosDeFechasInicioHospedaje.Caption:= 'HostalWare. Vista Previa del Reporte de Archivos. P�gina ' + IntToStr(Preview.PageNumber) + ' de ' + IntToStr(Preview.QRPrinter.PageCount);
end;



procedure TfrmPreviewReporteArchivosPorIntervalosDeFechasInicioHospedaje.TBSiguienteClick(Sender: TObject);
begin
  //Si no se ha llegado al final
  if (Preview.PageNumber <> Preview.QRPrinter.PageCount)
    then
      begin
        //Voy a la siguiente pagina
        Preview.PageNumber:= Preview.PageNumber + 1;

        //Especifico la posicion de pagina
        frmPreviewReporteArchivosPorIntervalosDeFechasInicioHospedaje.Caption:= 'HostalWare. Vista Previa del Reporte de Archivos. P�gina ' + IntToStr(Preview.PageNumber) + ' de ' + IntToStr(Preview.QRPrinter.PageCount);
      end;
end;



procedure TfrmPreviewReporteArchivosPorIntervalosDeFechasInicioHospedaje.TBAnteriorClick(Sender: TObject);
begin
  //Si no es la primera p�gina
  if (Preview.PageNumber > 1)
    then
      begin
        //Entonces voy a la anterior pagina
        Preview.PageNumber:= Preview.PageNumber - 1;

        //Especifico la posicion de pagina
        frmPreviewReporteArchivosPorIntervalosDeFechasInicioHospedaje.Caption:= 'HostalWare. Vista Previa del Reporte de Archivos. P�gina ' + IntToStr(Preview.PageNumber) + ' de ' + IntToStr(Preview.QRPrinter.PageCount);
      end;
end;



procedure TfrmPreviewReporteArchivosPorIntervalosDeFechasInicioHospedaje.PreviewPageAvailable(Sender: TObject; PageNum: Integer);
begin
  //Me paro en la 1ra p�gina
  Preview.PageNumber:= 1;

  //Le cambio el Caption al sistema, por una cuesti�n informativa y de apariencia tambi�n.
  //En dependencia del idioma imperante
  if (IdiomaImperante = 'Espannol')
    then
      begin
        //Especifico la posicion de pagina
        frmPreviewReporteArchivosPorIntervalosDeFechasInicioHospedaje.Caption:= 'HostalWare. Vista Previa del Reporte de Archivos. P�gina ' + IntToStr(Preview.PageNumber) + ' de ' + IntToStr(Preview.QRPrinter.PageCount);
      end
        else
          begin
            if (IdiomaImperante = 'Ingles')
              then
                begin
                  //Especifico la posicion de pagina
                  frmPreviewReporteArchivosPorIntervalosDeFechasInicioHospedaje.Caption:= 'HostalWare. Vista Previa del Reporte de Archivos. P�gina ' + IntToStr(Preview.PageNumber) + ' de ' + IntToStr(Preview.QRPrinter.PageCount);
                end;
          end;
end;



end.
