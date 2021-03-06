CREATE 
(escambia:County { name: "Escambia"}),
(santa_rosa:County { name: "Santa Rosa"}),
(okaloosa:County { name: "Okaloosa"}),
(walton:County { name: "Walton"}),
(holmes:County { name: "Holmes"}),
(washington:County { name: "Washington"}),
(bay:County { name: "Bay"}),
(jackson:County { name: "Jackson"}),
(calhoun:County { name: "Calhoun"}),
(gulf:County { name: "Gulf"}),
(gadsden:County { name: "Gadsden"}),
(liberty:County { name: "Liberty"}),
(franklin:County { name: "Franklin"}),
(leon:County { name: "Leon"}),
(wakulla:County { name: "Wakulla"}),
(jefferson:County { name: "Jefferson"}),
(madison:County { name: "Madison"}),
(taylor:County { name: "Taylor"}),
(hamilton:County { name: "Hamilton"}),
(suwanee:County { name: "Suwanee"}),
(lafayette:County { name: "Lafayette"}),
(columbia:County { name: "Columbia"}),
(baker:County { name: "Baker"}),
(nassau:County { name: "Nassau"}),
(duval:County { name: "Duval"}),
(clay:County { name: "Clay"}),
(st_johns:County { name: "St Johns"}),
(putnam:County { name: "Putnam"}),
(flagler:County { name: "Flagler"}),
(volusia:County { name: "Volusia"}),
(union:County { name: "Union"}),
(bradford:County { name: "Bradford"}),
(alachua:County { name: "Alachua"}),
(gilchrist:County { name: "Gilchrist"}),
(dixie:County { name: "Dixie"}),
(levy:County { name: "Levy"}),
(marion:County { name: "Marion"}),
(citrus:County { name: "Citrus"}),
(sumter:County { name: "Sumter"}),
(lake:County { name: "Lake"}),
(hernando:County { name: "Hernando"}),
(pasco:County { name: "Pasco"}),
(seminole:County { name: "Seminole"}),
(orange:County { name: "Orange"}),
(brevard:County { name: "Brevard"}),
(osceola:County { name: "Osceola"}),
(polk:County { name: "Polk"}),
(hillsborough:County { name: "Hillsborough"}),
(pinellas:County { name: "Pinellas"}),
(manatee:County { name: "Manatee"}),
(hardee:County { name: "Hardee"}),
(highlands:County { name: "Highlands"}),
(okeechobee:County { name: "Okeechobee"}),
(indian_river:County { name: "Indian River"}),
(st_lucie:County { name: "St Lucie"}),
(martin:County { name: "Martin"}),
(palm_beach:County { name: "Palm Beach"}),
(sarasota:County { name: "Sarasota"}),
(desoto:County { name: "DeSoto"}),
(charlotte:County { name: "Charlotte"}),
(glades:County { name: "Glades"}),
(lee:County { name: "Lee"}),
(hendry:County { name: "Hendry"}),
(collier:County { name: "Collier"}),
(broward:County { name: "Broward"}),
(monroe:County { name: "Monroe"}),
(miami_dade:County { name: "Miami-Dade"}),
(escambia)-[:BORDERS]->(santa_rosa),
(okaloosa)-[:BORDERS]->(santa_rosa),
(okaloosa)-[:BORDERS]->(walton),
(holmes)-[:BORDERS]->(walton),
(walton)-[:BORDERS]->(washington),
(bay)-[:BORDERS]->(walton),
(holmes)-[:BORDERS]->(washington),
(holmes)-[:BORDERS]->(jackson),
(jackson)-[:BORDERS]->(washington),
(bay)-[:BORDERS]->(washington),
(bay)-[:BORDERS]->(jackson),
(bay)-[:BORDERS]->(calhoun),
(bay)-[:BORDERS]->(gulf),
(calhoun)-[:BORDERS]->(jackson),
(gadsden)-[:BORDERS]->(jackson),
(jackson)-[:BORDERS]->(liberty),
(calhoun)-[:BORDERS]->(liberty),
(calhoun)-[:BORDERS]->(gulf),
(gulf)-[:BORDERS]->(liberty),
(franklin)-[:BORDERS]->(gulf),
(gadsden)-[:BORDERS]->(leon),
(gadsden)-[:BORDERS]->(liberty),
(franklin)-[:BORDERS]->(liberty),
(liberty)-[:BORDERS]->(wakulla),
(leon)-[:BORDERS]->(liberty),
(franklin)-[:BORDERS]->(wakulla),
(jefferson)-[:BORDERS]->(leon),
(leon)-[:BORDERS]->(wakulla),
(jefferson)-[:BORDERS]->(wakulla),
(jefferson)-[:BORDERS]->(madison),
(jefferson)-[:BORDERS]->(taylor),
(hamilton)-[:BORDERS]->(madison),
(madison)-[:BORDERS]->(suwanee),
(lafayette)-[:BORDERS]->(madison),
(madison)-[:BORDERS]->(taylor),
(lafayette)-[:BORDERS]->(taylor),
(dixie)-[:BORDERS]->(taylor),
(columbia)-[:BORDERS]->(hamilton),
(hamilton)-[:BORDERS]->(suwanee),
(columbia)-[:BORDERS]->(suwanee),
(gilchrist)-[:BORDERS]->(suwanee),
(lafayette)-[:BORDERS]->(suwanee),
(gilchrist)-[:BORDERS]->(lafayette),
(dixie)-[:BORDERS]->(lafayette),
(baker)-[:BORDERS]->(columbia),
(columbia)-[:BORDERS]->(union),
(alachua)-[:BORDERS]->(columbia),
(columbia)-[:BORDERS]->(gilchrist),
(baker)-[:BORDERS]->(union),
(baker)-[:BORDERS]->(bradford),
(baker)-[:BORDERS]->(nassau),
(baker)-[:BORDERS]->(duval),
(baker)-[:BORDERS]->(clay),
(duval)-[:BORDERS]->(nassau),
(clay)-[:BORDERS]->(duval),
(bradford)-[:BORDERS]->(duval),
(duval)-[:BORDERS]->(union),
(clay)-[:BORDERS]->(st_johns),
(clay)-[:BORDERS]->(putnam),
(bradford)-[:BORDERS]->(clay),
(clay)-[:BORDERS]->(union),
(duval)-[:BORDERS]->(st_johns),
(flagler)-[:BORDERS]->(st_johns),
(putnam)-[:BORDERS]->(st_johns),
(flagler)-[:BORDERS]->(putnam),
(putnam)-[:BORDERS]->(volusia),
(marion)-[:BORDERS]->(putnam),
(alachua)-[:BORDERS]->(putnam),
(bradford)-[:BORDERS]->(putnam),
(flagler)-[:BORDERS]->(volusia),
(brevard)-[:BORDERS]->(volusia),
(orange)-[:BORDERS]->(volusia),
(seminole)-[:BORDERS]->(volusia),
(lake)-[:BORDERS]->(volusia),
(marion)-[:BORDERS]->(volusia),
(bradford)-[:BORDERS]->(union),
(alachua)-[:BORDERS]->(union),
(alachua)-[:BORDERS]->(bradford),
(alachua)-[:BORDERS]->(clay),
(alachua)-[:BORDERS]->(marion),
(alachua)-[:BORDERS]->(levy),
(alachua)-[:BORDERS]->(gilchrist),
(gilchrist)-[:BORDERS]->(levy),
(dixie)-[:BORDERS]->(gilchrist),
(dixie)-[:BORDERS]->(levy),
(levy)-[:BORDERS]->(marion),
(citrus)-[:BORDERS]->(levy),
(lake)-[:BORDERS]->(marion),
(marion)-[:BORDERS]->(sumter),
(citrus)-[:BORDERS]->(marion),
(citrus)-[:BORDERS]->(sumter),
(citrus)-[:BORDERS]->(hernando),
(lake)-[:BORDERS]->(sumter),
(polk)-[:BORDERS]->(sumter),
(pasco)-[:BORDERS]->(sumter),
(hernando)-[:BORDERS]->(sumter),
(lake)-[:BORDERS]->(seminole),
(lake)-[:BORDERS]->(orange),
(lake)-[:BORDERS]->(polk),
(hernando)-[:BORDERS]->(pasco),
(pasco)-[:BORDERS]->(polk),
(hillsborough)-[:BORDERS]->(pasco),
(pasco)-[:BORDERS]->(pinellas),
(orange)-[:BORDERS]->(seminole),
(brevard)-[:BORDERS]->(orange),
(orange)-[:BORDERS]->(osceola),
(orange)-[:BORDERS]->(polk),
(brevard)-[:BORDERS]->(indian_river),
(brevard)-[:BORDERS]->(osceola),
(indian_river)-[:BORDERS]->(osceola),
(okeechobee)-[:BORDERS]->(osceola),
(highlands)-[:BORDERS]->(osceola),
(osceola)-[:BORDERS]->(polk),
(okeechobee)-[:BORDERS]->(polk),
(highlands)-[:BORDERS]->(polk),
(hardee)-[:BORDERS]->(polk),
(manatee)-[:BORDERS]->(polk),
(hillsborough)-[:BORDERS]->(polk),
(hardee)-[:BORDERS]->(hillsborough),
(hillsborough)-[:BORDERS]->(manatee),
(hillsborough)-[:BORDERS]->(pinellas),
(hardee)-[:BORDERS]->(manatee),
(desoto)-[:BORDERS]->(manatee),
(manatee)-[:BORDERS]->(sarasota),
(hardee)-[:BORDERS]->(highlands),
(desoto)-[:BORDERS]->(hardee),
(highlands)-[:BORDERS]->(okeechobee),
(glades)-[:BORDERS]->(highlands),
(charlotte)-[:BORDERS]->(highlands),
(desoto)-[:BORDERS]->(highlands),
(indian_river)-[:BORDERS]->(okeechobee),
(okeechobee)-[:BORDERS]->(st_lucie),
(martin)-[:BORDERS]->(okeechobee),
(okeechobee)-[:BORDERS]->(palm_beach),
(glades)-[:BORDERS]->(okeechobee),
(indian_river)-[:BORDERS]->(st_lucie),
(martin)-[:BORDERS]->(st_lucie),
(palm_beach)-[:BORDERS]->(st_lucie),
(martin)-[:BORDERS]->(palm_beach),
(broward)-[:BORDERS]->(palm_beach),
(hendry)-[:BORDERS]->(palm_beach),
(glades)-[:BORDERS]->(palm_beach),
(desoto)-[:BORDERS]->(sarasota),
(charlotte)-[:BORDERS]->(sarasota),
(desoto)-[:BORDERS]->(glades),
(charlotte)-[:BORDERS]->(desoto),
(charlotte)-[:BORDERS]->(glades),
(charlotte)-[:BORDERS]->(hendry),
(charlotte)-[:BORDERS]->(lee),
(glades)-[:BORDERS]->(hendry),
(glades)-[:BORDERS]->(lee),
(hendry)-[:BORDERS]->(lee),
(collier)-[:BORDERS]->(lee),
(broward)-[:BORDERS]->(hendry),
(collier)-[:BORDERS]->(hendry),
(broward)-[:BORDERS]->(collier),
(collier)-[:BORDERS]->(miami_dade),
(collier)-[:BORDERS]->(monroe),
(broward)-[:BORDERS]->(miami_dade),
(miami_dade)-[:BORDERS]->(monroe)
