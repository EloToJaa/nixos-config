{ pkgs, lib, config,... }: 
{
  programs.firefox = {
    enable = true;

    profiles.frostphoenix = {
      settings = {};
      isDefault = true;
      extraConfig = builtins.readFile ./user.js;
      extensions = with pkgs.nur.repos.rycee.firefox-addons; [
        ublock-origin
        return-youtube-dislikes
        # youtube-time-tracker
        firefox-color
        stylus
      ];
    };
      
  };
}