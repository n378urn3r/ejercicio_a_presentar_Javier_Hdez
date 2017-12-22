[void][System.Reflection.Assembly]::LoadWithPartialName('presentationframework')
[xml]$xaml = @'
<Window x:Name="Formulario" 
        xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
        xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
        Title="MainWindow" Height="350" Width="525">
    <Grid x:Name="Ventana">
        <Label x:Name="Label1" Content="Formulario de ACEPTACION de normas IT Corporativas" HorizontalAlignment="Left" Margin="106,58,0,0" VerticalAlignment="Top"/>
        <Label x:Name="Label2" Content="Nombre" HorizontalAlignment="Left" Margin="106,116,0,0" VerticalAlignment="Top"/>
        <TextBox x:Name="txtNombre" HorizontalAlignment="Left" Height="23" Margin="201,58,0,0" TextWrapping="Wrap" Text="TextBox" VerticalAlignment="Top" Width="120" />
        <TextBox x:Name="txtApellidos" HorizontalAlignment="Left" Height="23" Margin="201,116,0,0" TextWrapping="Wrap" Text="TextBox" VerticalAlignment="Top" Width="120"/>
        <Button x:Name="btnAceptarYEnviar" Content="Boton 1" HorizontalAlignment="Left" Margin="95,180,0,0" VerticalAlignment="Top" Width="75"/>
        <Button x:Name="btnCancelar" Content="Boton 2" HorizontalAlignment="Left" Margin="298,180,0,0" VerticalAlignment="Top" Width="75"/>

    </Grid>
</Window> 
'@
function Form_Setup() {
$reader=(New-Object System.Xml.XmlNodeReader $xaml) 
$Form=[Windows.Markup.XamlReader]::Load( $reader )

$txtText1 = $Form.FindName('Text1')

$btnBoton1 = $Form.FindName('Boton2')
$btnBoton1.Add_Click({$txtText1.Text = "Soy el boton"})
}
Function Form_Show()
{
	$Form.ShowDialog()

}
<#
	Check a dir that exist or not and creates it accordingly
#>
function Check_Dir_and_Create ([string] $pathdir) {
	Write-host ("$pathdir")
}

Check_Dir_and_Create('C:\archivos\Proyectos\Visual_Studio')
Check_Dir_and_Create('C:\archivos\Proyectos\Visual_Studio')

Check_Dir_and_Create('C:\archivos\Proyectos\Otras_Plataformas')
Check_Dir_and_Create('C:\archivos\Desarrollos\Visual_Studio')
Check_Dir_and_Create('C:\archivos\Administración\Otras_Plataformas')
Check_Dir_and_Create('C:\archivos\Personales')

Form_Setup
Form_Show
Write-Host ("(Pulse una tecla para continuar")
[string] $continuar = Read-Host


