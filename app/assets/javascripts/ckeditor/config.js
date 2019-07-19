CKEDITOR.editorConfig = function (config) {
  // ... other configuration ...

  config.toolbar_mini = [
      { name: 'basicstyles', items: [ 'Bold','Italic','Underline'] },
      { name: 'paragraph',   items: [ 'BulletedList','-','JustifyLeft','JustifyCenter','JustifyRight','JustifyBlock','-'] },
      { name: 'links',       items: [ 'Link' ] },
      // '/',
      { name: 'styles',      items: [ 'Font','FontSize' ] },
      { name: 'colors',      items: [ 'TextColor' ] },
      { name: 'insert', items: [ 'Image', 'Table', 'HorizontalRule', 'SpecialChar' ] },
    ]
  config.toolbar = "mini";

  // ... rest of the original config.js  ...
}
