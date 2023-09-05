{ config, pkgs, home-manager, nix-vscode-extensions, ... }: 
{
  programs.vscode = {
    enable = true;
    userSettings = {
      "editor.tabSize" = 2;
      #"workbench.iconTheme" = "material-icon-theme";
      "workbench.iconTheme" = "keen-neutral-icon-theme";
      "workbench.colorTheme" = "Black Waves";
      #"workbench.colorTheme" = "Atom One Dark";
      "editor.fontSize" = 17;
      "breadcrumbs.enabled" = true;
      "workbench.fontAliasing" = "antialiased";
      "editor.minimap.enabled" = false;
      "workbench.editor.enablePreview" = false;
      "terminal.integrated.fontFamily" = "Iosevka";
      "editor.fontFamily" = "Iosevka";
      "editor.fontLigatures" = true;
      "window.menuBarVisibility" = "toggle";
      "window.zoomLevel" = -1;
    };
    package = 
      let
        config.packageOverrides = pkgs: {
          vscode = pkgs.vscode-with-extensions.override {
            vscodeExtensions = with nix-vscode-extensions.extensions; [
              vscodevim.vim
	      #akamud.vscode-theme-onedark
	      #harg.iceberg
	      orhun.black-waves
	      keenethics.keen-neutral-icon-theme
	      #akamud.vscode-theme-onedark
	      davidanson.vscode-markdownlint
	      #pkief.material-icon-theme
	      bbenoist.nix
            ];
          };
        };
      in
        pkgs.vscode;
  };
}
