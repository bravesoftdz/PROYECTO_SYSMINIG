unit ptsmuerto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxBar, DB, ADODB, OleCtrls, SHDocVw, ComCtrls, StdCtrls,
  Buttons, Grids, DBGrids, FileCtrl, ExtCtrls,shellapi,htmlhlp,HTML_HELP;

type
  Tftsmuerto = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Splitter2: TSplitter;
    grbConvertidos: TGroupBox;
    Splitter3: TSplitter;
    cdir: TDirectoryListBox;
    carchivo: TFileListBox;
    Panel2: TPanel;
    cdrive: TDriveComboBox;
    grbOriginales: TGroupBox;
    dbg: TDBGrid;
    gdirectivas: TGroupBox;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Splitter5: TSplitter;
    fuente: TMemo;
    tab: TTabControl;
    web: TWebBrowser;
    DataSource1: TDataSource;
    ttsprog: TADOQuery;
    mnuPrincipal: TdxBarManager;
    mnuAyuda: TdxBarButton;
    OpenDialog1: TOpenDialog;
    dxBarButton1: TdxBarButton;
    Splitter6: TSplitter;
    Splitter1: TSplitter;
    ScrollBox1: TScrollBox;
    GroupBox3: TGroupBox;
    Label2: TLabel;
    Label5: TLabel;
    Label1: TLabel;
    Label6: TLabel;
    txtmascara: TEdit;
    cmbsistema: TComboBox;
    cmbclase: TComboBox;
    cmbbib: TComboBox;
    GroupBox1: TGroupBox;
    barchivo: TBitBtn;
    bdir: TBitBtn;
    GroupBox2: TGroupBox;
    bcompara: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    function FormHelp(Command: Word; Data: Integer;
      var CallHelp: Boolean): Boolean;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormResize(Sender: TObject);
    procedure cmbsistemaChange(Sender: TObject);
    procedure cmbclaseChange(Sender: TObject);
    procedure cmbbibChange(Sender: TObject);
    procedure barchivoClick(Sender: TObject);
    procedure bdirClick(Sender: TObject);
    procedure bcomparaClick(Sender: TObject);
    procedure carchivoClick(Sender: TObject);
    procedure cdirChange(Sender: TObject);
    procedure webBeforeNavigate2(Sender: TObject; const pDisp: IDispatch;
      var URL, Flags, TargetFrameName, PostData, Headers: OleVariant;
      var Cancel: WordBool);
    procedure tabChange(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure dbgCellClick(Column: TColumn);
  private
    { Private declarations }
      progok, progmal: Tstringlist;
      bf: Tstringlist; // buffer para traer los componentes
      lis:Tstringlist;
      scan: Tstringlist; // buffer para traer los componentes
      resumen:Tstringlist;
      convertidos,complementos:Tstringlist;
      ww:Tstringlist;     // buffer para el webbrowser
      comparaciones:Tstringlist;
      uti_compara:string;
      directorio_directivas:string;
      tot_convertidos,tot_sincambio:integer;
      tot_cambios,tot_nuevas,tot_antiguas:integer;
      tcambios,tnuevas,tantiguas:array of integer;
      comandos:Tstringlist;
      veces_comandos:array of integer;
      veces_directivas:array of integer;
      cambia:integer;
      n_cambios,n_nuevas,n_antiguas:integer;
      function ultimo(fisico:string):string;
      procedure cierra_rgmlang;
      procedure acumula_rgmlang(nombre:string);
      function convierte:boolean;
      procedure cierra_web;
  public
    { Public declarations }
      function procesa( tipo: string; bib: string; nombre: string ):boolean;
      procedure trae_utilerias(tipo:string);
      function limpia_archivo(archivo:String):String;
  end;

var
  ftsmuerto: Tftsmuerto;
  procedure PR_MUERTO;

implementation
uses ptsdm,ptscomun,uConstantes,ptsutileria, ptsgral;

{$R *.dfm}
procedure PR_MUERTO;
begin
   gral.PubMuestraProgresBar( True );
   Application.CreateForm( Tftsmuerto, ftsmuerto );
   {try
      ftsmuerto.Showmodal;
   finally
      ftsmuerto.Free;
   end;  }
   ftsmuerto.FormStyle := fsMDIChild;

   if gral.bPubVentanaMaximizada = FALSE then begin
      ftsmuerto.Width := g_Width;
      ftsmuerto.Height := g_Height;
   end;
   
   dm.PubRegistraVentanaActiva( ftsmuerto.Caption );
   ftsmuerto.Show;
   gral.PubMuestraProgresBar( False );
end;


procedure Tftsmuerto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if FormStyle = fsMDIChild then begin
      dm.PubEliminarVentanaActiva( ftsmuerto.Caption );  //quitar nombre de lista de abiertos
   end;

   Self.Destroy;
end;

procedure Tftsmuerto.FormCreate(Sender: TObject);
begin
   dm.feed_combo( cmbsistema, 'select csistema from tssistema '+
      ' where estadoactual='+g_q+'ACTIVO'+g_q+
      ' order by csistema' );
   if cmbsistema.Items.Count = 1 then begin
      cmbsistema.ItemIndex := 0;
      cmbsistemaChange(sender);
   end;
   progok := Tstringlist.Create;
   progmal := Tstringlist.Create;
   bf := Tstringlist.Create;
   lis:=Tstringlist.Create;
   scan:=Tstringlist.Create;
   convertidos:=Tstringlist.create;
   complementos:=Tstringlist.create;
   ww:=Tstringlist.create;
   comparaciones:=Tstringlist.create;
   comandos:=Tstringlist.Create;
   resumen:=Tstringlist.Create;
   ttsprog.Connection := dm.ADOConnection1;

end;

function Tftsmuerto.FormHelp(Command: Word; Data: Integer;
  var CallHelp: Boolean): Boolean;
begin
   try
      HtmlHelp(Application.Handle,
            PChar(Format('%s::/T%5.5d.htm',
           //[Application.HelpFile,ActiveControl.HelpContext])),HH_DISPLAY_TOPIC, 0);
            [Application.HelpFile,iHelpContext ])),HH_DISPLAY_TOPIC, 0);
      CallHelp := False;
   except
      Application.MessageBox( 'No existe ayuda para la pantalla � campo seleccionado','Ayuda ' , MB_OK );
   end;

end;

procedure Tftsmuerto.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   iHelpContext:=ActiveControl.HelpContext;

end;

procedure Tftsmuerto.FormResize(Sender: TObject);
begin
   carchivo.Height := ( grbConvertidos.Height - carchivo.Top ) - 5;

end;

procedure Tftsmuerto.cmbsistemaChange(Sender: TObject);
begin
   dm.feed_combo( cmbclase, 'select distinct cclase from tsprog ' +
      ' where sistema=' + g_q + cmbsistema.text + g_q +
      ' order by cclase' );
   cmbbib.clear;
   barchivo.enabled := false;
   bdir.enabled := false;
   ttsprog.Close;

   if cmbsistema.Text <> '' then begin
      web.Hide();
      web.Navigate('about:blank');
      web.Show();
      fuente.Lines.Clear;
      bcompara.Enabled := False;
   end;

   dbg.Visible:=false;
end;

procedure Tftsmuerto.cmbclaseChange(Sender: TObject);
var
   lista: Tstringlist;
   bib: string;
begin
   dm.feed_combo( cmbbib, 'select distinct cbib from tsprog ' +
      ' where sistema=' + g_q + cmbsistema.text + g_q +
      ' and   cclase=' + g_q + cmbclase.text + g_q +
      ' order by cbib' );
   barchivo.enabled := false;
   bdir.enabled := false;
   ttsprog.Close;

   if cmbclase.Text <> '' then begin
      web.Hide();
      web.Navigate('about:blank');
      web.Show();
      fuente.Lines.Clear;
      bcompara.Enabled := False;
   end;

   dbg.Visible:=false;
end;

procedure Tftsmuerto.cmbbibChange(Sender: TObject);
var
   cons : String;
begin
   carchivo.Mask := txtmascara.Text;
   ttsprog.Close;
   ttsprog.SQL.Clear;
   cons:= 'select cprog Componente from tsprog ' +
      ' where sistema=' + g_q + cmbsistema.text + g_q +
      ' and cclase=' + g_q + cmbclase.Text + g_q +
      ' and cbib=' + g_q + cmbbib.Text + g_q +
      ' and cprog like ' + g_q + stringreplace( txtmascara.Text, '*', '%', [ rfreplaceall ] ) + g_q +
      ' order by cprog';
   ttsprog.SQL.Add( cons );
   ttsprog.open;
   if ttsprog.Eof then begin
      //   if ttsprog.RecordCount=0 then begin
      Application.MessageBox( pchar( dm.xlng( 'Sin registros' ) ),
         pchar( dm.xlng( 'Conversi�n ' ) ), MB_OK );
      barchivo.Enabled := false;
      bdir.Enabled := false;
      bcompara.Enabled := false;
   end
   else
      ttsprog.First;
   if dm.sqlselect(dm.q1,'select dato from parametro '+
      ' where clave='+g_q+'dirconversalida_'+cmbsistema.Text+'_'+cmbclase.Text+'_'+cmbbib.Text+g_q+
      ' and  secuencia=0') then
      if forcedirectories( dm.q1.fieldbyname('dato').AsString ) then
         cdir.Directory:=dm.q1.fieldbyname('dato').AsString
      else begin
         Application.MessageBox( pchar( dm.xlng( 'AVISO... no puede crear el directorio ' + dm.q1.fieldbyname('dato').AsString ) ),
            pchar( dm.xlng( 'Codigo Muerto' ) ), MB_OK );
         Exit;
      end;

   bdir.Enabled := ( ( cmbclase.Text <> '' ) and
      ( trim( cmbsistema.text ) <> '' ) and
      ( trim( cmbbib.text ) <> '' ) );
   barchivo.Enabled := ( ( dbg.SelectedField <> nil ) and
      ( cmbclase.Text <> '' ) and
      ( trim( cmbsistema.text ) <> '' ) and
      ( trim( cmbbib.text ) <> '' ) );
   //bcompara.Enabled := barchivo.Enabled;

   if cmbbib.Text <> '' then begin
      web.Hide();
      web.Navigate('about:blank');
      web.Show();
      fuente.Lines.Clear;
      bcompara.Enabled := False;
   end;

   dbg.Visible:=true;
end;

procedure Tftsmuerto.trae_utilerias(tipo:string);
begin
   if uti_compara='' then begin
      uti_compara:=g_tmpdir + '\hta'+formatdatetime('YYYYMMDDHHNNSSZZZ',now)+'.exe';
      dm.get_utileria( 'COMPARACION DE FUENTES', uti_compara );
   end;
   dm.get_utileria('RGMLANG',g_tmpdir+'\hta5678.exe');
   dm.get_utileria('RESERVADAS '+tipo,g_tmpdir+'\codigo_muerto.res');
   dm.get_utileria('CODIGO MUERTO '+tipo,g_tmpdir+'\codigo_muerto.dir',true,true);
   ptscomun.parametros_extra(cmbsistema.Text,tipo,cmbbib.Text,g_tmpdir+'\codigo_muerto.dir');
   progok.Clear;
   progmal.Clear;
   tot_convertidos:=0;
   tot_sincambio:=0;
   convertidos.Clear;
   ww.Clear;
   comparaciones.Clear;
end;
function Tftsmuerto.ultimo(fisico:string):string;
var nuevo:string;
   lis:Tstringlist;
begin
   if fileexists(g_tmpdir+'\'+fisico+'_ultimo')=false then begin
      showmessage('No encuentra archivo _ultimo');
      exit;
   end;
   lis:=Tstringlist.Create;
   lis.LoadFromFile(g_tmpdir+'\'+fisico+'_ultimo');
   nuevo:=lis[0];
   lis.Free;
   if fileexists( nuevo ) = false then begin
      Application.MessageBox( pchar( dm.xlng( 'No existe el convertido en el directorio seleccionado' ) ),
         pchar( dm.xlng( 'Conversi�n ' ) ), MB_OK );
      exit;
   end;
   ultimo:=nuevo;
end;

function Tftsmuerto.limpia_archivo(archivo:String):String;
var
   renglones,salida : TStringList;
   renglon : String;
   i :integer;
begin
   renglones:=TStringList.Create;
   salida:=TStringList.Create;
   renglones.Text:=archivo;

   for i:=0 to renglones.Count -1 do begin
      renglon:= trim (renglones[i]);
      renglon:=stringreplace(renglon,chr(13),'',[rfreplaceall]);
      renglon:=stringreplace(renglon,chr(10),'',[rfreplaceall]);
      salida.Add(renglon);
   end;

   limpia_archivo:=salida.Text;
   renglones.Free;
   salida.Free;
end;

function Tftsmuerto.procesa( tipo: string; bib: string; nombre: string ):boolean;
var
   original, convertido: string;
   b_nuevo: boolean;
   //buffer: pchar;
   sBFile: String;
   respuesta:integer;
   compo:string;
   i,j:integer;
   tempo:String;
   fisico:string;
   ultimo_fisico:string;
   nombre_compuesto:string;
begin
   fisico:=nombre;
   bGlbQuitaCaracteres( fisico );
   nombre_compuesto:=tipo+' '+bib+' '+fisico+'.csv';

   compo:=tipo+' '+bib+' '+nombre;
   SetCurrentDir( g_tmpdir );
   deletefile( 'scan.txt' );
   deletefile(g_tmpdir+'\'+fisico+'_QUITAR_RUTINA');
   deletefile(g_tmpdir+'\'+fisico+'_QUITAR_VARIABLE');
   deletefile(g_tmpdir+'\THRU1');
   deletefile(g_tmpdir+'\THRU2');
   //original := g_tmpdir+'\ori_'+ptscomun.cprog2bfile(nombre);  // se usar� para un copyfile
   original:=g_tmpdir+'\'+fisico;
//   convertido := g_tmpdir+'\'+ptscomun.cprog2bfile(nombre);// se usar� para un copyfile
   convertido := g_tmpdir+'\'+fisico+'_A';// se usar� para un copyfile
   bf.Clear;

   SetEnvironmentVariable(pchar('ZTIPO'), pchar(cmbclase.Text));
   SetEnvironmentVariable(pchar('ZSISTEMAZ'), pchar(cmbsistema.Text));
   SetEnvironmentVariable(pchar('ZBIBLIOTECAZ'), pchar(cmbbib.Text));
   //SetEnvironmentVariable(pchar('ZOFICINAZ'), pchar(cmboficina_text));
//   SetEnvironmentVariable(pchar('ZCPROG2BFILEZ'), pchar(ptscomun.cprog2bfile(nombre)));
   SetEnvironmentVariable(pchar('ZCPROG2BFILEZ'), pchar(fisico));
   SetEnvironmentVariable(pchar('ZPROGRAMAZ'), pchar(nombre));

   //dm.leebfile( nombre, bib, tipo, buffer ); //se sustituye por sPubObtenerBFile
   //bf.Add( buffer );
   //freemem( buffer );

   sBFile := dm.sPubObtenerBFile( nombre, bib, tipo );
   sBFile:=stringreplace(sBFile,chr(9),' ',[rfreplaceall]);

   sBFile:=limpia_archivo(sBFile);

   bf.Add( sBFile );
   bf.SaveToFile( original );
   dm.ejecuta_espera( g_tmpdir+'\hta5678.exe ' + original + ' ' + convertido +
      ' codigo_muerto.dir codigo_muerto.res >scan.txt', sw_hide );
   if fileexists( 'scan.txt' ) then begin
      scan.LoadFromFile( 'scan.txt' );
      if pos( 'ERROR...', scan.Text ) > 0 then begin
         //application.MessageBox( scan.GetText, 'ERROR', MB_OK );
         progmal.Add('<H3><B><FONT COLOR="red">'+nombre+'</FONT></H3>:'+scan.GetText);
      end
      else begin
         ultimo_fisico:=ultimo(fisico);
//         acumula_rgmlang(ptscomun.cprog2bfile(nombre));
         acumula_rgmlang(fisico);
         //if bf.Text<>scan.Text then begin
            dm.ejecuta_espera('fc /N /W '+original + ' '+ultimo_fisico+ ' >fc_out.txt', sw_hide );
            scan.LoadFromFile('fc_out.txt');
         if copy(scan[1],1,4)<>'FC: ' then begin
            inc(tot_convertidos);
            convertidos.Add(nombre);
            //complementos.add(' Cambios=['+inttostr(n_cambios)+'] Lineas Nuevas=['+inttostr(n_nuevas)+'] Lineas Canceladas=['+inttostr(n_antiguas)+']');
            ww.Add('<a name="'+nombre+'"<H4><B><FONT COLOR="green">'+inttostr(convertidos.count)+'. '+nombre+'</FONT>'+
               '</a><a href="#back'+nombre+'">   ^</a></B>' //+complementos[complementos.count-1]
               +'</H4>');
            //dm.ejecuta_espera('fc /N /W '+original + ' '+ultimo_fisico+ ' >fc_out.txt', sw_hide );
            //scan.LoadFromFile('fc_out.txt');
            i:=pos(':',scan[0]);
            tempo:=copy(scan[0],i-1,1000);
            i:=pos(' ',tempo);
            scan.Text:=stringreplace(scan.Text,copy(tempo,1,i-1),'ORIGINAL',[rfreplaceall]);
            tempo:=copy(tempo,i+1,1000);
            i:=pos(':',tempo);
            tempo:=copy(tempo,i-1,1000);
            i:=pos(' ',tempo);
            if i=0 then
               i:=100;
            scan.Text:=stringreplace(scan.Text,copy(tempo,1,i-1),'MODIFICADO',[rfreplaceall]);
            scan[0]:=stringreplace(scan[0],'archivos','componentes',[]);
            scan[0]:=stringreplace(scan[0],'files','components',[]);
            scan.Text:=stringreplace(scan.Text,' ','&nbsp;',[rfreplaceall]);
            scan.Add('<HR>');
            comparaciones.Add(original+' '+ultimo_fisico);
            scan[0]:='<a href=#compara'+inttostr(comparaciones.Count-1)+'>'+scan[0]+'</a>';
            ww.AddStrings(scan);
//            copyfile( pchar( convertido ), pchar( cdir.Directory + '\' + ptscomun.cprog2bfile(nombre) ), false );
            //scan.SaveToFile(cdir.Directory +'\fCodigoMuerto 1 ' + nombre_compuesto);
            copyfile( pchar( g_tmpdir+'\fc_out.txt' ), pchar( cdir.Directory + '\fCodigoMuerto4 ' + nombre_compuesto ),false );
            {
            copyfile( pchar( original+'_TABLA_SALIDA.csv' ), pchar( cdir.Directory + '\fCodigoMuerto1 ' + nombre_compuesto ),false );
            copyfile( pchar( original+'_TABLA_VARIABLES.csv' ), pchar( cdir.Directory + '\fCodigoMuerto2 ' + nombre_compuesto ),false );
            copyfile( pchar( original+'_LINEAS_MUERTAS.CSV' ), pchar( cdir.Directory + '\fCodigoMuerto3 ' + nombre_compuesto ),false );
            }
            copyfile( pchar( original+'_RESULTADOS_CODIGO_MUERTO.csv' ), pchar( cdir.Directory + '\fCodigoMuerto1 ' + nombre_compuesto ),false );

            deletefile( pchar( g_tmpdir+'\fc_out.txt' ));
            {
            deletefile( pchar( original+'_TABLA_SALIDA.csv' ));
            deletefile( pchar( original+'_TABLA_VARIABLES.csv' ));
            deletefile( pchar( original+'_LINEAS_MUERTAS.CSV' ));
            }
            deletefile( pchar( original+'_RESULTADOS_CODIGO_MUERTO.csv' ));

            carchivo.Update;
         end
         else
            inc(tot_sincambio);
     end;
   end
   else begin
      //application.MessageBox( 'No pudo ejecutar el convertidor', 'AVISO', MB_OK );
      progmal.Add('<H4>'+nombre+'</H4>:'+'No pudo ejecutar RGMLANG' );
   end;
   //   deletefile(original);
   //   deletefile(convertido);
   fuente.Lines.Clear;
   fuente.Lines.Add( 'con Error   : '+inttostr(progmal.Count)+
      '   Sin Cambio  : '+inttostr(tot_sincambio)+
      '   Actualizados: '+inttostr(convertidos.Count));
   setcurrentdir( g_ruta );
   procesa:=true;
end;

function Tftsmuerto.convierte:boolean;
begin
   convierte:=procesa( cmbclase.text, cmbbib.Text, ttsprog.fieldbyname( 'componente' ).AsString );
end;

procedure Tftsmuerto.barchivoClick(Sender: TObject);
var
   sDirectorio: String;
   sDirectorioC: String;
begin
   if ttsprog.RecordCount=0 then exit;
   try
      trae_utilerias( cmbclase.Text );
   except
      Exit;
   end;

   //screen.Cursor := crsqlwait;
   screen.Cursor := crNo;     // alk para cambiar el cursor
   gral.PubMuestraProgresBar( true );     // alk para barra de espera

   convierte;
   cierra_web;
   cierra_rgmlang;
   tabchange(sender);

   screen.Cursor := crdefault;
   gral.PubMuestraProgresBar( False );

   bcompara.Enabled := True;
end;

procedure Tftsmuerto.bdirClick(Sender: TObject);
var
   i: integer;
begin
   if ttsprog.RecordCount=0 then exit;
   try
      trae_utilerias( cmbclase.Text );
   except
      Exit;
   end;

   //screen.Cursor := crsqlwait;
   screen.Cursor := crNo;     // alk para cambiar el cursor
   gral.PubMuestraProgresBar( true );     // alk para barra de espera

   Ttsprog.First;
   while not ttsprog.Eof do begin
      if convierte=false then begin
         screen.Cursor := crdefault;
         exit;
      end;
      ttsprog.next;
   end;
   cierra_web;
   cierra_rgmlang;
   tabchange(sender);

   screen.Cursor := crdefault;
   gral.PubMuestraProgresBar( False );

   bcompara.Enabled := True;
end;

procedure Tftsmuerto.bcomparaClick(Sender: TObject);
var
   anterior, nuevo,fisico: string;
   nombre_compuesto:string;
begin
   //   PR_COMPARA( archivo.FileName, carchivo.FileName );
   fisico:=ttsprog.fieldbyname( 'Componente' ).AsString;
   nombre_compuesto:=cmbclase.Text+' '+cmbbib.Text+' '+fisico+'.csv';
   bGlbQuitaCaracteres( fisico );
   anterior := g_tmpdir + '\' +fisico ;
//   nuevo := g_tmpdir+'\'+'mto_'+fisico;
   nuevo:=ultimo(fisico);
//   dm.trae_fuente( ttsprog.fieldbyname( 'sistema' ).AsString, ttsprog.fieldbyname( 'Componente' ).AsString,
   dm.trae_fuente( cmbsistema.text, ttsprog.fieldbyname( 'Componente' ).AsString,
                   cmbbib.Text, cmbclase.Text, fuente );
   fuente.Lines.SaveToFile( anterior );
   if ShellExecute( Handle, nil, pchar( uti_compara ), pchar( anterior + ' ' + nuevo ),
      nil, SW_SHOW ) <= 32 then
      //Application.MessageBox( pchar( dm.xlng( 'No puede ejecutar la conversion' ) ),
      Application.MessageBox( pchar( dm.xlng( 'No puede ejecutar la comparacion' ) ),
         pchar( dm.xlng( 'Error' ) ), MB_ICONEXCLAMATION );
   //dm.ejecuta_espera( g_tmpdir + '\hta890.exe ' + anterior + ' ' + nuevo, sw_hide );
end;

procedure Tftsmuerto.carchivoClick(Sender: TObject);
begin
   if carchivo.ItemIndex > -1 then begin
      fuente.Lines.LoadFromFile( carchivo.filename );
      fuente.Color := carchivo.Color;
   end;
   bcompara.Enabled := ( ( dbg.SelectedField <> nil ) and ( carchivo.itemindex > -1 ) );

end;

procedure Tftsmuerto.cdirChange(Sender: TObject);
begin
   carchivo.Directory := cdir.Directory;

end;

procedure Tftsmuerto.webBeforeNavigate2(Sender: TObject;
  const pDisp: IDispatch; var URL, Flags, TargetFrameName, PostData,
  Headers: OleVariant; var Cancel: WordBool);
var k:integer;
begin
   k:=pos('#compara',url);
   if k>0 then begin
      if ShellExecute( Handle, nil, pchar(uti_compara),
         pchar( comparaciones[strtoint(trim(copy(url,k+8,100)))]),
         nil, SW_SHOW ) <= 32 then
         Application.MessageBox( pchar( dm.xlng( 'No puede ejecutar la comparacion' ) ),
            pchar( dm.xlng( 'Error' ) ), MB_ICONEXCLAMATION );
      cancel:=true;
   end;
end;
procedure Tftsmuerto.acumula_rgmlang(nombre:string);
var i,k:integer;
   paso:string;
begin
   n_cambios:=0;
   n_nuevas:=0;
   n_antiguas:=0;
   if fileexists(g_tmpdir+nombre+'_tot_comando')=false then exit;
   lis.LoadFromFile(g_tmpdir+nombre+'_tot_comando');
   if lis.Count=0 then exit;
   n_cambios:=strtoint(lis[0]);
   n_nuevas:=strtoint(lis[1]);
   n_antiguas:=strtoint(lis[2]);
   tot_cambios:=tot_cambios+n_cambios;
   tot_nuevas:=tot_nuevas+n_nuevas;
   tot_antiguas:=tot_antiguas+n_antiguas;
   resumen.Add('<TR><TD>'+nombre+'</TD><TD>'+lis[0]+'</TD><TD>'+lis[1]+'</TD><TD>'+lis[2]+'</TD></TR>');
   cambia:=0;
   for i:=3 to lis.Count-1 do begin
      if (cambia=0) then begin
         if (pos(',',lis[i])<1) then begin
            k:=comandos.IndexOf(copy(lis[i],1,pos('=',lis[i])-1));
            if k>-1 then
               veces_comandos[k]:=veces_comandos[k]+strtoint(trim(copy(lis[i],pos('=',lis[i])+1,100)))
            else begin
               comandos.Add(copy(lis[i],1,pos('=',lis[i])-1));
               setlength(veces_comandos,comandos.Count);
               veces_comandos[comandos.Count-1]:=strtoint(trim(copy(lis[i],pos('=',lis[i])+1,100)));
            end;
         end
         else begin
            cambia:=i;
            setlength(veces_directivas,lis.Count-cambia);
         end;
      end;
      if cambia>0 then begin
         k:=pos(' , ',lis[i]);
         paso:=copy(lis[i],k+3,300);
         k:=pos(' , ',paso);
         veces_directivas[i-cambia]:=veces_directivas[i-cambia]+strtoint(copy(paso,1,k-1));
      end;
   end;
end;
procedure Tftsmuerto.cierra_rgmlang;
var i,k:integer;
    paso:string;
begin
   resumen.Insert(0,'<H3><B>Estadisticas de Ejecuci�n</B></H3>');
   resumen.Insert(1,'<TABLE BORDER=1><TR><TH>Comando</TH><TH>Usado</TH></TR>');
   for i:=0 to comandos.Count-1 do
      resumen.Insert(i+2,'<TR><TD>'+comandos[i]+'</TD><TD>'+inttostr(veces_comandos[i])+'</TD></TR>');
   k:=comandos.Count+2;
   resumen.Insert(k,'</TABLE><H3><B>Uso de Directivas</B></H3><TABLE BORDER=1><TR><TH>Linea</TH><TH>Usado</TH><TH>Comando</TH></TR>');
   for i:=cambia to lis.count-1 do begin
      paso:=copy(lis[i],pos(' , ',lis[i])+3,300);
      paso:=copy(paso,pos(' , ',paso)+3,300);
      lis[i]:=stringreplace(paso,' ','&nbsp;',[rfreplaceall]);
   end;
   for i:=0 to length(veces_directivas)-1 do
      resumen.Insert(k+i+1,'<TR><TD>'+inttostr(i+1)+'</TD><TD>'+inttostr(veces_directivas[i])+'</TD><TD>'+lis[i+cambia]+'</TD></TR>');
   resumen.Insert(k+1+length(veces_directivas),'</TABLE><H3><B>Cambios por componente</B></H3><TABLE BORDER=1><TR><TH>Componente</TH><TH>Cambios</TH><TH>Lineas Nuevas</TH><TH>Lineas Anuladas</TH></TR>');
   resumen.add('<B><TR><TD>Totales</TD><TD>'+inttostr(tot_cambios)+'</TD><TD>'+inttostr(tot_nuevas)+'</TD><TD>'+inttostr(tot_antiguas)+'</TD></TR></B>');
   resumen.add('</TABLE></BODY>');
   resumen.SaveToFile(g_tmpdir+'\tot_comando.html');
   resumen.Clear;
   comandos.clear;
   setlength(veces_comandos,0);
   setlength(veces_directivas,0);
   tot_cambios:=0;
   tot_nuevas:=0;
   tot_antiguas:=0;
end;
procedure Tftsmuerto.cierra_web;
var i:integer;
begin
   scan.Clear;
   scan.Add('<HEAD><TITLE>Resumen de Actualizaciones '+
      cmbsistema.text+' '+cmbclase.Text+' '+cmbbib.Text+' '+gdirectivas.Caption+
      '</TITLE></HEAD><BODY>');
   scan.Add('<H2>');
   scan.Add('</H2>');
   scan.Add('<H3>Total con Error   : '+inttostr(progmal.Count)+'</H3>');
   for i:=0 to progmal.Count-1 do
      scan.Add(progmal[i]);
   scan.Add('<H3>Total Sin Cambio  : '+inttostr(tot_sincambio)+'</H3>');
   scan.Add('<H3>Total Actualizados: '+inttostr(convertidos.Count)+'</H3>');
   for i:=0 to convertidos.Count-1 do
      scan.Add('<H4><a name="back'+convertidos[i]+'">'+inttostr(i+1)+'. </a>'+
         '<a HREF="#'+convertidos[i]+'">'+convertidos[i]+ //complementos[i]+
         '</H4></a>');
   scan.Add('<HR>');
   scan.Add('<FONT FACE="courier new"><P>');
   for i:=0 to ww.Count-1 do
      scan.Add(ww[i]+'<BR>');
   scan.Add('</P></FONT></BODY>');
   scan.SaveToFile(g_tmpdir+'\cnv.html');
   dm.sqlinsert('insert into parametro(clave,secuencia,dato,descripcion) values('+
      g_q+'dirconversalida_'+cmbsistema.Text+'_'+cmbclase.Text+'_'+cmbbib.Text+g_q+',0,'+
      g_q+cdir.Directory+g_q+','+
      g_q+'Directorio donde toma las directivas para convertir '+
      cmbsistema.Text+'_'+cmbclase.Text+'_'+cmbbib.Text+g_q+')');
   convertidos.clear;
   complementos.clear;
end;

procedure Tftsmuerto.tabChange(Sender: TObject);
begin
   if tab.TabIndex=0 then begin
      if fileexists(g_tmpdir+'\cnv.html') then
         web.Navigate(g_tmpdir+'\cnv.html');
   end
   else begin
      if fileexists(g_tmpdir+'\tot_comando.html') then
         web.Navigate(g_tmpdir+'\tot_comando.html');
   end;

end;

procedure Tftsmuerto.dxBarButton1Click(Sender: TObject);
begin
   PR_UTILERIA;
end;

procedure Tftsmuerto.dbgCellClick(Column: TColumn);
begin
   dm.trae_fuente( cmbSistema.text, ttsprog.fieldbyname( 'Componente' ).AsString,
                   cmbbib.Text, cmbclase.Text, fuente );
                   
   web.Hide();
   web.Navigate('about:blank');
   web.Show();

   bcompara.Enabled := False;
end;

end.
