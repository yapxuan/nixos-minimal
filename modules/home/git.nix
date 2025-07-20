{ ... }:

{

  programs.git = {
    enable = true;
    delta = {
      enable = true;
      options = {
        line-numbers = true;
        navigate = true;
        hyperlinks = true;
      };
    };
    userName = "yapxuan";
    userEmail = "puiyongqing@gmail.com";
    extraConfig = {
      merge = {
        conflictStyle = "zdiff3";
      };
      diff = {
        colorMoved = "default";
      };
    };
  };
}
