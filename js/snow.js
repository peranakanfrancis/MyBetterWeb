$("canvas").let_it_snow({
  speed: 0, // How fast the snow falls can be define here. You can choose a number in between 0 - 5. The higher, the faster. The default value is 0.
  interaction: true, // This option allows viewer to interact with the falling snow. Toggle this to false if you don't want the snow to be interactive. The default value is true.
  size: 2, // You can set the size of the snow here. Choose a number between 0 - 10+. The higher, the bigger. The default size is 2.
  count: 200, // This allows you to set the number of snows displayed at a time. The default count is 200.
  opacity: 0, // The opacity variation of the snow. You can choose a number in between 0.00 and 1.00 to set the base opacity and the plugin will randomly generate snows with slightly varied opacity.
  color: "#ffffff", // You can set the color of the snow here. This option only accepts HEX color code in full 6 digits. The default value is "#ffffff"
  windPower: 0, // You can set the wind power here. If you want the wind to blow left, set a positive number in this option., if you want the wind to blow right, set a negative number in this option. The default value is 0.
  image: false // You can define a path to an image to be used instead of a default circle here. The default value is false.
});
