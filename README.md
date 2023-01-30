# Trying-out-Lua
<table>
  <tr>
    <th colspan="2">Tested on</th>
  </tr>
  <tr>
    <th>OS</th>
    <th>Lua version</th>
  </tr>
  <tr>
    <td>Ubuntu 22.04</td>
    <td>5.4.3</td>
  </tr>
</table>
<hr>

### Create executable
1. There are more terminal options in linux, this is just example
2. Specify path to "main" lua file "cd /path/folder;"

Create .sh file with following code:  
```shell
gnome-terminal --tab --title="Title" --command="bash -c 'lua demo.lua; $SHELL'"
```

<hr>

### Content

<table>
	<tr>
		<th colspan=3>Project sructure map</th>
	</tr>
	<!-- root -->
	<tr>
		<th>Folder</th>
		<th>Lua file</th>
		<th>Short description</th>
	</tr>
  	<tr>
		<th rowspan=2>"root"</th>
    		<th>demo</th>
    		<th>Contains main method</th>
  	</tr>
	<tr>
    		<th>linuxUtil</th>
    		<th>Some useful methods for linux (now only for update)</th>
	</tr>
	<!-- utilsCLI -->
  	<tr>
		<th rowspan=3>utilsCLI</th>
    		<th>code</th>
    		<th>Functions for cloloring text in console (for linux and maybe Mac)</th>
  	</tr>
  	<tr>
		<th>Color</th>
		<th>Color class</th>
 	</tr>
	<tr>
		<th>console</th>
		<th>Some useful methods for working with console IO</th>
	</tr>
	<!-- math -->
	<tr>
		<th rowspan=1>math</th>
		<th>*.lua</th>
		<th>Some functions for math</th>
	</tr>
	<!-- table end -->
	<tr>
		<th colspan=3>This table might not be up to date</th>
	</tr>
</table>
<hr>

### Donate

<a href='https://ko-fi.com/P5P11WTFL' target='_blank'><img height='36' style='border:0px;height:36px;' src='https://cdn.ko-fi.com/cdn/kofi1.png?v=2' border='0' alt='Buy Me a Coffee at ko-fi.com' /></a>
