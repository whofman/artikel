function getSelectedItem(f)
{
   urls = new Array ("http://www.fnl.nl/ct/",
                     "http://www.computertotaal.nl/",
 	                   "http://www.pcmag.nl/",
	                   "http://www.pcm.com/",
                     "http://www.fnl.nl/chip/archief/",
 	                   "http://www.pc-active.nl/",
 	                   "http://www.macfan.nl/",
 	                   "http://www.icreatetijdschrift.nl/",
 	                   "http://www.delphi-gg.nl/",
 	                   "http://www.ecs-gg.nl/");
 	                   
 	 tijdschriften = new Array("CT", "CompTotaal", "PCMagazine", "PCM", "Chip", "PC Active", 
 	                           "iCreate", "MacFan", "Blaise", "Draad/2");

   var mylist=document.getElementById("artdb_tijdschrift");
   var urlx = urls[mylist.selectedIndex];
   var mytitel=document.getElementById("artdb_titel").value;
   var link = ""; 
   if (mylist.selectedIndex == 0) {
      var n = mytitel.indexOf("[");
      if (n >= 0) {
   	    link = mytitel.substring(n+1, n+8);
   	    link = "softlinks/20/" + link.substring(0,2) + "/" + link.substring(2,4) + "/" + link.substring(4,7);
      }
   }
   f.url.value = urlx + link;
}