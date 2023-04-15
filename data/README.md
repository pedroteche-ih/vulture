README

This data file is published by the Movebank Data Repository (www.datarepository.movebank.org). As of the time of publication, a version of this published animal tracking dataset can be viewed on Movebank (www.movebank.org) in the study "Gyps vultures with Pitot airspeed at Rocamadour (data from Williams et al. 2018)" (Movebank Study ID 270967741). Individual attributes in the data files are defined below and in the Movebank Attribute Dictionary, available at www.movebank.org/node/2381.

This data package includes the following data files:
Gyps vultures with Pitot airspeed at Rocamadour (data from Williams et al. 2018).csv
Gyps vultures with Pitot airspeed at Rocamadour (data from Williams et al. 2018)-reference-data.csv

These data are described in the following written publications:
Williams HJ, Duriez O, Holton MD, Dell-Omo G, Wilson RP, Shepard ELC (2018) Vultures respond to challenges of near-ground thermal soaring by varying bank angle. Journal of Experimental Biology: jeb.174995. doi:10.1242/jeb.174995

Williams HJ, King AJ, Duriez O, Börger L, Shepard ELC (2018) Social eavesdropping allows for a more risky gliding strategy by thermal-soaring birds. Journal of the Royal Society Interface 15(148): 20180578. doi:10.1098/rsif.2018.0578

Data package citation:
Williams HJ, Shepard ELC, Duriez O (2018) Data from: Vultures respond to challenges of near-ground thermal soaring by varying bank angle. Movebank Data Repository. doi:10.5441/001/1.4f03k6s5

-----------

Terms of Use
This data file is licensed by the Creative Commons Zero (CC0 1.0) license. The intent of this license is to facilitate the re-use of works. The Creative Commons Zero license is a "no rights reserved" license that allows copyright holders to opt out of copyright protections automatically extended by copyright and other laws, thus placing works in the public domain with as little legal restriction as possible. However, works published with this license must still be appropriately cited following professional and ethical standards for academic citation.

We highly recommend that you contact the data creator if possible if you will be re-using or re-analyzing data in this file. Researchers will likely be interested in learning about new uses of their data, might also have important insights about how to properly analyze and interpret their data, and/or might have additional data they would be willing to contribute to your project. Feel free to contact us at support@movebank.org if you need assistance contacting data owners.

See here for the full description of this license
http://creativecommons.org/publicdomain/zero/1.0

-----------

Data Attributes
These definitions come from the Movebank Attribute Dictionary, available at www.movebank.org/node/2381.

acceleration raw X: Raw acceleration values provided by the tag for the X axis. Range and units may vary by provider, tag, and orientation of the sensor on the animal.
	example: 0.556641
	units: not defined

acceleration raw Y: Raw acceleration values provided by the tag for the Y axis. Range and units may vary by provider, tag, and orientation of the sensor on the animal.
	example: 0.09375
	units: not defined

acceleration raw Z: Raw acceleration values provided by the tag for the Z axis. Range and units may vary by provider, tag, and orientation of the sensor on the animal.
	example: -0.84375
	units: not defined

algorithm marked outlier: Identifies events marked as outliers using a user-selected filter algorithm in Movebank. Outliers have the value TRUE.
THIS DATASET: The Duplicate filter in Movebank was used to flag records with the same tag-id and timestamp as an existing record as TRUE. Duplicate records were removed for analysis.

animal comments: Additional information about the animal that is not described by other reference data terms.
	example: sibling of #1423

animal ID: An individual identifier for the animal, provided by the data owner. This identifier can be a ring number, a name, the same as the associated tag ID, etc. If the data owner does not provide an Animal ID, an internal Movebank animal identifier may sometimes be shown.
	example: 91876A, Gary
	same as: individual-local-identifier

animal life stage: The age class or life stage of the animal at the beginning of the deployment. Can be years or months of age or terms such as "adult", "subadult" and "juvenile". Units should be defined in the values (e.g. "2 years").
	example: juvenile, adult
	units: Any units should be defined in the remarks.

attachment type: The way a tag is attached to an animal. Values are chosen from a controlled list:
	collar: The tag is attached by a collar around the animal's neck.
	glue: The tag is attached to the animal using glue.
	harness: The tag is attached to the animal using a harness.
	implant: The tag is placed under the skin of the an animal.
	tape: The tag is attached to the animal using tape.
	other: user specified

barometric pressure: The barometric air or water pressure.
	units: mbar (hPa)
	same as: bar:barometric pressure

deploy off timestamp: The timestamp when the tag deployment ended.
	example: 2009-10-01 12:00:00.000
	format: yyyy-MM-dd HH:mm:ss.sss
	units: UTC (Coordinated Universal Time) or GPS time, which is a few leap seconds different from UTC
	same as: deploy off date

deploy on timestamp: The timestamp when the tag deployment started.
	example: 2008-08-30 18:00:00.000
	format: yyyy-MM-dd HH:mm:ss.sss
	units: UTC (Coordinated Universal Time) or GPS time, which is a few leap seconds different from UTC
	same as: deploy on date

deployment comments: Additional information about the tag deployment that is not described by other reference data terms.
	example: This deployment was excluded from analysis because the tag failed.

deployment ID: A unique identifier for the deployment of a tag on animal, provided by the data owner. If the data owner does not provide a Deployment ID, an internal Movebank deployment identifier may sometimes be shown.
	example: Jane-Tag42

event ID: An identifier for the set of information associated with each record or event in a data set. A unique event ID is assigned to every time-location or other time-measurement record in Movebank.
	example: 6340565
	units: none

latitude (decimal degree): The geographic longitude of a location along an animal track as estimated by the processed sensor data. Positive values are east of the Greenwich Meridian, negative values are west of it.
	example: -121.1761111
	units: decimal degrees, WGS84 reference system
	same as: location lat

longitude (decimal degree): The geographic longitude of a location along an animal track as estimated by the processed sensor data. Positive values are east of the Greenwich Meridian, negative values are west of it.
	example: -121.1761111
	units: decimal degrees, WGS84 reference system
	same as: location long

magnetic field raw X: Raw magnetic field values provided by the tag for the X axis.
	example: -0.5197
	units: gauss
THIS DATASET: The earth’s magnetic field is used as frame of reference.

magnetic field raw Y: Raw magnetic field values provided by the tag for the Y axis.
	example: -0.993
	units: gauss
THIS DATASET: The earth’s magnetic field is used as frame of reference.

magnetic field raw Z: Raw magnetic field values provided by the tag for the Z axis.
	example: -0.8857
	units: gauss
THIS DATASET: The earth’s magnetic field is used as frame of reference.

manipulation comments: Additional comments about the way in which the animal was manipulated during the deployment. Use manipulation type to define the general type of manipulation.
	example: Relocated from breeding colony on Smithers Island to release location at 70.02E, 21.21S

manipulation type: The way in which the animal was manipulated during the deployment. Additional details about the manipulation can be provided using manipulation comments. Values are chosen from a controlled list:
	confined: The animal's movement was restricted to within a defined area.
	none: The animal received no treatment other than the tag attachment.
	relocated: The animal was released from a site other than the one at which it was captured.
	manipulated other: The animal was manipulated in some other way, such as a physiological manipulation.

sensor type: The type of sensor with which data were collected. Values are chosen from a controlled list:
	acceleration: The sensor collects acceleration data.
	accessory measurements: The sensor collects accessory measurements, such as battery voltage.
	Argos Doppler shift: The sensor is using Argos Doppler shift for determining position.
	barometer: The sensor records air or water pressure.
	bird ring: The animal is identified by a ring that has a unique ID.
	GPS: The sensor uses GPS to find location and stores these.
	magnetometer: The sensor records the magnetic field.
	natural mark: The animal is identified by a natural marking.
	radio transmitter: The sensor is a classical radio transmitter.
	solar geolocator: The sensor collects light levels, which are used to determine position (for processed locations).
	solar geolocator raw: The sensor collects light levels, which are used to determine position (for raw light-level measurements).

sex: The sex of the biological individual(s) represented in the Occurrence. Values are from a controlled list:
	m: male
	f: female

study: The name of the study in Movebank in which data are stored.

study site: The name of the deployment site, for example a field station or colony.
	example: Pickerel Island North

tag ID: A unique identifier for the tag, provided by the data owner. If the data owner does not provide a tag ID, an internal Movebank tag identifier may sometimes be shown.
	example: 2342, ptt_4532
	same as: tag local identifier

tag manufacturer name: The company or person that produced the tag.
	example: Holohil
	same as: manufacturer

tag model: The model of the tag.
	example: T61
	same as: model

tag readout method: The way the data are received from the tag. Values are chosen from a controlled list:
	satellite: Data are transferred via satellite.
	phone network: Data are transferred via a phone network, such as GSM or AMPS.
	other wireless: Data are transferred via another form of wireless data transfer, such as a VHF radio transmitter/receiver.
	tag retrieval: The tag must be physically retrieved in order to obtain the data.

tag technical specification: Values for a tag-specific technical attribute.
	example: 8.31, YES
	units: undefined
	same as: tag tech. spec.
THIS DATASET: A measure of the birds’ airspeed as measured from a differential pressure sensor recording dynamic airflow through a forward facing brass Pitot tube (diameter 2 mm) and its differential to ambient pressure in volts (V).

taxon: The scientific name of the species on which the tag was deployed, as defined by the Integrated Taxonomic Information System (ITIS, www.itis.gov). If the species name can not be provided, this should be the lowest level taxonomic rank that can be determined and that is used in the ITIS taxonomy. Additional information can be provided using the term taxon detail.
	example: Buteo swainsoni
	same as: species, animal taxon, individual taxon canonical name

timestamp: The date and time a sensor measurement was taken.
	example: 2008-08-14 18:31:00.000
	format: yyyy-MM-dd HH:mm:ss.sss
	units: UTC (Coordinated Universal Time) or GPS time, which is a few leap seconds different from UTC

visible: Determines whether an event is visible on the Movebank Search map. Values are calculated automatically, with FALSE indicating that the event has been marked as an outlier by manually marked outlier or algorithm marked outlier. Allowed values are TRUE or FALSE.

-----------

More Information
For more information about this repository, see www.movebank.org/node/15294, the FAQ at www.movebank.org/node/2220, or contact us at support@movebank.org.