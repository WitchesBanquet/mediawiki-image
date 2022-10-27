<?php

wfLoadExtension('CategoryTree');
wfLoadExtension('LocalisationUpdate');
wfLoadExtension('MultimediaViewer');
wfLoadExtension('Renameuser');
wfLoadExtension('ReplaceText');
wfLoadExtension('SyntaxHighlight_GeSHi');

wfLoadExtension('Gadgets');
wfLoadExtension('Nuke');
wfLoadExtension('ParserFunctions');

wfLoadExtension('WikiEditor');
wfLoadExtension('VisualEditor');
wfLoadExtension('CodeEditor');

wfLoadExtension('Cite');
wfLoadExtension('CiteThisPage');

wfLoadExtension('TemplateData');
wfLoadExtension('Math');

wfLoadExtension('Scribunto');

# ParserFunctions
$wgPFEnableStringFunctions = true;

# Scribunto
$wgScribuntoDefaultEngine = 'luasandbox';
$wgScribuntoUseGeSHi = true;
$wgScribuntoUseCodeEditor = true;
