

use strict;
use lib 't/lib';

use Test::Deep qw(cmp_deeply);

use FusionInventory::Agent::Tools::Hardware;
use FusionInventory::Test::Hardware;

my %tests = (
    'xerox/ColorQube_8570DN.01.walk' => [
        {
            MANUFACTURER => 'Xerox',
            TYPE         => 'PRINTER',
            DESCRIPTION  => 'Xerox ColorQube 8570DN; System 1.3.8.P, OS 10.62, PS 4.10.0, Eng 23.P1.4.10.0, Net 42.40.09.02.2011, Adobe PostScript 3016.101 (16), PCL 5c Version 5.0',
            SNMPHOSTNAME => 'c0500a',
            MAC          => '9C:93:4E:02:92:55',
            MODEL        => 'ColorQube 8570DN',
        },
        {
            MANUFACTURER => 'Xerox',
            TYPE         => 'PRINTER',
            DESCRIPTION  => 'Xerox ColorQube 8570DN; System 1.3.8.P, OS 10.62, PS 4.10.0, Eng 23.P1.4.10.0, Net 42.40.09.02.2011, Adobe PostScript 3016.101 (16), PCL 5c Version 5.0',
            SNMPHOSTNAME => 'c0500a',
            MAC          => '9C:93:4E:02:92:55',
            MODEL        => 'ColorQube 8570DN',
            MODELSNMP    => 'Printer0670',
            SERIAL       => undef,
            FIRMWARE     => undef,
        },
        {
            INFO => {
                ID           => undef,
                MANUFACTURER => 'Xerox',
                TYPE         => 'PRINTER',
                MODEL        => 'ColorQube 8570DN',
                NAME         => 'c0500a',
                UPTIME       => '(457023) 1:16:10.23',
                COMMENTS     => 'Xerox ColorQube 8570DN; System 1.3.8.P, OS 10.62, PS 4.10.0, Eng 23.P1.4.10.0, Net 42.40.09.02.2011, Adobe PostScript 3016.101 (16), PCL 5c Version 5.0',
                MEMORY       => 0,
                IPS          => {
                    IP => [
                        '127.0.0.1',
                        '128.93.22.42',
                    ]
                },
            },
            PAGECOUNTERS => {
                TOTAL => '401'
            },
            CARTRIDGES => {
                WASTETONER     => '100',
                MAINTENANCEKIT => '99',
            },
            PORTS => {
                PORT => [
                    {
                        IFNUMBER         => '1',
                        IFNAME           => 'Xerox ColorQube 8570DN Ethernet Interface, 10/100/1000 Mbps, v42.40.09.02.2011, RJ-45, Ethernet, 100 Mbps, full duplex',
                        IFDESCR          => 'Xerox ColorQube 8570DN Ethernet Interface, 10/100/1000 Mbps, v42.40.09.02.2011, RJ-45, Ethernet, 100 Mbps, full duplex',
                        IFTYPE           => 'softwareLoopback(24)',
                        IFSPEED          => '0',
                        IFMTU            => '1536',
                        IP               => '127.0.0.1',
                        MAC              => '9C:93:4E:02:92:55',
                        IFSTATUS         => 'up(1)',
                        IFINTERNALSTATUS => 'up(1)',
                        IFLASTCHANGE     => '(0) 0:00:00.00',
                        IFINOCTETS       => '0',
                        IFINERRORS       => '0',
                        IFOUTOCTETS      => '0',
                        IFOUTERRORS      => '0',
                    },
                    {
                        IFNUMBER         => '2',
                        IFNAME           => 'Xerox ColorQube 8570DN Ethernet Interface, 10/100/1000 Mbps, v42.40.09.02.2011, RJ-45, Ethernet, 100 Mbps, full duplex',
                        IFDESCR          => 'Xerox ColorQube 8570DN Ethernet Interface, 10/100/1000 Mbps, v42.40.09.02.2011, RJ-45, Ethernet, 100 Mbps, full duplex',
                        IFTYPE           => 'ethernetCsmacd(6)',
                        IFSPEED          => '100000000',
                        IFMTU            => '1500',
                        IP               => '128.93.22.42',
                        MAC              => '9C:93:4E:02:92:55',
                        IFSTATUS         => 'up(1)',
                        IFINTERNALSTATUS => 'up(1)',
                        IFLASTCHANGE     => '(0) 0:00:00.00',
                        IFINOCTETS       => '67204097',
                        IFINERRORS       => '0',
                        IFOUTOCTETS      => '851549',
                        IFOUTERRORS      => '0',
                    },
                ]
            },
        }
    ],
    'xerox/DocuPrint_N2125.01.walk' => [
        {
            MANUFACTURER => 'Xerox',
            TYPE         => 'PRINTER',
            DESCRIPTION  => 'Xerox DocuPrint N2125 Network Laser Printer - 2.12-02 ',
            MAC          => '00:00:AA:5C:1C:8C',
            MODEL        => 'DocuPrint N2125',
        },
        {
            MANUFACTURER => 'Xerox',
            TYPE         => 'PRINTER',
            DESCRIPTION  => 'Xerox DocuPrint N2125 Network Laser Printer - 2.12-02 ',
            MAC          => '00:00:AA:5C:1C:8C',
            MODEL        => 'DocuPrint N2125',
            MODELSNMP    => 'Printer0687',
            FIRMWARE     => undef,
            SERIAL       => '3510349171',
        },
        {
            INFO => {
                MANUFACTURER => 'Xerox',
                TYPE         => 'PRINTER',
                COMMENTS     => 'Xerox DocuPrint N2125 Network Laser Printer - 2.12-02 ',
                MEMORY       => 32,
                MODEL        => 'DocuPrint N2125',
                ID           => undef,
                SERIAL       => '3510349171',
                IPS          => {
                    IP => [
                        '172.16.3.53',
                    ]
                },
                UPTIME       => '(16986889) 1 day, 23:11:08.89'
            },
            PAGECOUNTERS => {
                TOTAL  => '128652',
            },
            PORTS => {
                PORT => [
                    {
                        IFNUMBER         => '1',
                        IFNAME           => 'Xerox DocuPrint N21 Ethernet Interface',
                        IFDESCR          => 'Xerox DocuPrint N21 Ethernet Interface',
                        IFTYPE           => 'ethernetCsmacd(6)',
                        IFSPEED          => '100000000',
                        IFMTU            => '1500',
                        IP               => '172.16.3.53',
                        MAC              => '00:00:AA:5C:1C:8C',
                        IFSTATUS         => 'up(1)',
                        IFINTERNALSTATUS => 'up(1)',
                        IFLASTCHANGE     => '(0) 0:00:00.00',
                        IFINOCTETS       => '0',
                        IFINERRORS       => '0',
                        IFOUTOCTETS      => '0',
                        IFOUTERRORS      => '0',
                    },
                ]
            },
        }
    ],
    'xerox/Phaser_3320.01.walk' => [
        {
            MANUFACTURER => 'Xerox',
            TYPE         => 'PRINTER',
            DESCRIPTION  => 'Xerox Phaser 3320;Sys SW Version Phaser3320_V53.002.05.000 AUG-22-2012,MCB V2.50.01.05 AUG-22-2012,NIC V4.01.03,IOT V1.00.31,PCL5e 6.50.02 11-09-2011,PCL6 6.23.00.02   07-16-2012,PS 2.83.00.59.00.59 10-13-2010,IBM/EPSON 5.29.01 05-09-2011, Tray2 2.00.01,',
            SNMPHOSTNAME => 'AS_STEXU_IMP02',
            MAC          => '9C:93:4E:21:3C:A2',
            MODEL        => 'Phaser 3320',
        },
        {
            MANUFACTURER => 'Xerox',
            TYPE         => 'PRINTER',
            DESCRIPTION  => 'Xerox Phaser 3320;Sys SW Version Phaser3320_V53.002.05.000 AUG-22-2012,MCB V2.50.01.05 AUG-22-2012,NIC V4.01.03,IOT V1.00.31,PCL5e 6.50.02 11-09-2011,PCL6 6.23.00.02   07-16-2012,PS 2.83.00.59.00.59 10-13-2010,IBM/EPSON 5.29.01 05-09-2011, Tray2 2.00.01,',
            SNMPHOSTNAME => 'AS_STEXU_IMP02',
            MAC          => '9C:93:4E:21:3C:A2',
            MODEL        => 'Phaser 3320',
        },
        {
            INFO => {
                ID           => undef,
                MANUFACTURER => 'Xerox',
                TYPE         => 'PRINTER',
                MODEL        => 'Phaser 3320',
                COMMENTS     => 'Xerox Phaser 3320;Sys SW Version Phaser3320_V53.002.05.000 AUG-22-2012,MCB V2.50.01.05 AUG-22-2012,NIC V4.01.03,IOT V1.00.31,PCL5e 6.50.02 11-09-2011,PCL6 6.23.00.02   07-16-2012,PS 2.83.00.59.00.59 10-13-2010,IBM/EPSON 5.29.01 05-09-2011, Tray2 2.00.01,',
                CONTACT      => 'Administrator',
                NAME         => 'AS_STEXU_IMP02',
                MEMORY       => '0',
                IPS          => {
                    IP => [
                        '192.168.89.51',
                    ]
                },
                UPTIME       => '(1018900) 2:49:49.00',
            },
            PAGECOUNTERS => {
                TOTAL  => '94',
            },
            PORTS => {
                PORT => [
                    {
                        IFNUMBER         => '1',
                        IFNAME           => 'Xerox Embedded Ethernet Controller, 10/100/1000 Mbps, v1.0, RJ-45, connector A1, 10 Mbps half duplex',
                        IFDESCR          => 'Xerox Embedded Ethernet Controller, 10/100/1000 Mbps, v1.0, RJ-45, connector A1, 10 Mbps half duplex',
                        IFTYPE           => '6',
                        IFSPEED          => '10000000',
                        IFMTU            => '1500',
                        IP               => '192.168.89.51',
                        MAC              => '9C:93:4E:21:3C:A2',
                        IFSTATUS         => '1',
                        IFINTERNALSTATUS => '1',
                        IFLASTCHANGE     => '(0) 0:00:00.00',
                        IFINOCTETS       => '1671569',
                        IFINERRORS       => '0',
                        IFOUTOCTETS      => '1762641',
                        IFOUTERRORS      => '0',
                    },
                    {
                        IFNUMBER         => '2',
                        IFNAME           => 'Xerox internal TCP Software Loopback Interface, v2.0',
                        IFDESCR          => 'Xerox internal TCP Software Loopback Interface, v2.0',
                        IFTYPE           => '24',
                        IFSPEED          => '10000000',
                        IFMTU            => '1500',
                        MAC              => '00:00:00:00:00:00',
                        IFSTATUS         => '1',
                        IFINTERNALSTATUS => '1',
                        IFLASTCHANGE     => '(0) 0:00:00.00',
                        IFINOCTETS       => '0',
                        IFINERRORS       => '0',
                        IFOUTOCTETS      => '3744775',
                        IFOUTERRORS      => '0',
                    },
                ]
            },
        }
    ],
    'xerox/Phaser_5550DT.01.walk' => [
        {
            MANUFACTURER => 'Xerox',
            TYPE         => 'PRINTER',
            DESCRIPTION  => 'Xerox Phaser 5550DT; System 1.3.7.P, OS 8.2, PS 5.1.0, Eng 11.58.00, Net 40.46.04.03.2009, Adobe PostScript 3016.101 (14), PCL 5e/6 Version 7.0.1, Finisher 5.03.00',
            SNMPHOSTNAME => 'Phaser 5550DT',
            MAC          => '00:00:AA:D4:A2:FE',
            MODEL        => 'Phaser 5550DT',
        },
        {
            MANUFACTURER => 'Xerox',
            TYPE         => 'PRINTER',
            DESCRIPTION  => 'Xerox Phaser 5550DT; System 1.3.7.P, OS 8.2, PS 5.1.0, Eng 11.58.00, Net 40.46.04.03.2009, Adobe PostScript 3016.101 (14), PCL 5e/6 Version 7.0.1, Finisher 5.03.00',
            SNMPHOSTNAME => 'Phaser 5550DT',
            MAC          => '00:00:AA:D4:A2:FE',
            MODEL        => 'Phaser 5550DT',
            MODELSNMP    => 'Printer0688',
            FIRMWARE     => undef,
            SERIAL       => 'KNB015751',
        },
        {
            INFO => {
                MANUFACTURER => 'Xerox',
                TYPE         => 'PRINTER',
                COMMENTS     => 'Xerox Phaser 5550DT; System 1.3.7.P, OS 8.2, PS 5.1.0, Eng 11.58.00, Net 40.46.04.03.2009, Adobe PostScript 3016.101 (14), PCL 5e/6 Version 7.0.1, Finisher 5.03.00',
                SERIAL       => 'KNB015751',
                MEMORY       => 0,
                ID           => undef,
                MODEL        => 'Phaser 5550DT',
                NAME         => 'Phaser 5550DT',
                IPS          => {
                    IP => [
                        '127.0.0.1',
                        '172.16.3.51',
                    ]
                },
                UPTIME       => '(7088810) 19:41:28.10'
            },
            CARTRIDGES => {
                MAINTENANCEKIT  => '67',
            },
            PAGECOUNTERS => {
                TOTAL  => '724552',
            },
            PORTS => {
                PORT => [
                    {
                        IFNUMBER         => '1',
                        IFDESCR          => 'Xerox Phaser 5550DT Ethernet Interface, 10/100/1000 Mbps, v40.46.04.03.2009, RJ-45, Ethernet, , , ',
                        IFTYPE           => 'softwareLoopback(24)',
                        IFSPEED          => '0',
                        IFMTU            => '1536',
                        IP               => '127.0.0.1',
                        IFSTATUS         => 'up(1)',
                        IFINTERNALSTATUS => 'up(1)',
                        IFLASTCHANGE     => '(0) 0:00:00.00',
                        IFINOCTETS       => '0',
                        IFINERRORS       => '0',
                        IFOUTOCTETS      => '0',
                        IFOUTERRORS      => '0',
                    },
                    {
                        IFNUMBER         => '2',
                        IFDESCR          => 'Xerox Phaser 5550DT Ethernet Interface, 10/100/1000 Mbps, v40.46.04.03.2009, RJ-45, Ethernet, , , ',
                        IFTYPE           => 'ethernetCsmacd(6)',
                        IFSPEED          => '1000000000',
                        IFMTU            => '1500',
                        IP               => '172.16.3.51',
                        IFSTATUS         => 'up(1)',
                        IFINTERNALSTATUS => 'up(1)',
                        IFLASTCHANGE     => '(0) 0:00:00.00',
                        IFINOCTETS       => '0',
                        IFINERRORS       => '0',
                        IFOUTOCTETS      => '0',
                        IFOUTERRORS      => '0',
                    },
                ]
            },
        }
    ],
    'xerox/Phaser_5550DT.02.walk' => [
        {
            MANUFACTURER => 'Xerox',
            TYPE         => 'PRINTER',
            DESCRIPTION  => 'Xerox Phaser 5550DT; System 1.3.7.P, OS 8.2, PS 5.1.0, Eng 11.58.00, Net 40.46.04.03.2009, Adobe PostScript 3016.101 (14), PCL 5e/6 Version 7.0.1, Finisher 5.01.00',
            SNMPHOSTNAME => 'Phaser 5550DT-1',
            MAC          => '00:00:AA:D4:A4:CC',
            MODEL        => 'Phaser 5550DT',
        },
        {
            MANUFACTURER => 'Xerox',
            TYPE         => 'PRINTER',
            DESCRIPTION  => 'Xerox Phaser 5550DT; System 1.3.7.P, OS 8.2, PS 5.1.0, Eng 11.58.00, Net 40.46.04.03.2009, Adobe PostScript 3016.101 (14), PCL 5e/6 Version 7.0.1, Finisher 5.01.00',
            SNMPHOSTNAME => 'Phaser 5550DT-1',
            MAC          => '00:00:AA:D4:A4:CC',
            MODEL        => 'Phaser 5550DT',
            MODELSNMP    => 'Printer0689',
            FIRMWARE     => undef,
            SERIAL       => 'KNB015753',
        },
        {
            INFO => {
                MANUFACTURER => 'Xerox',
                TYPE         => 'PRINTER',
                COMMENTS     => 'Xerox Phaser 5550DT; System 1.3.7.P, OS 8.2, PS 5.1.0, Eng 11.58.00, Net 40.46.04.03.2009, Adobe PostScript 3016.101 (14), PCL 5e/6 Version 7.0.1, Finisher 5.01.00',
                ID           => undef,
                SERIAL       => 'KNB015753',
                MODEL        => 'Phaser 5550DT',
                NAME         => 'Phaser 5550DT-1',
                MEMORY       => 0,
                IPS          => {
                    IP => [
                        '127.0.0.1',
                        '172.16.3.52',
                    ]
                },
                UPTIME       => '(52327401) 6 days, 1:21:14.01'
            },
            CARTRIDGES => {
                MAINTENANCEKIT  => '57',
            },
            PAGECOUNTERS => {
                TOTAL  => '420312',
            },
            PORTS => {
                PORT => [
                    {
                        IFNUMBER         => '1',
                        IFDESCR          => 'Xerox Phaser 5550DT Ethernet Interface, 10/100/1000 Mbps, v40.46.04.03.2009, RJ-45, Ethernet, , , ',
                        IFTYPE           => 'softwareLoopback(24)',
                        IFSPEED          => '0',
                        IFMTU            => '1536',
                        IP               => '127.0.0.1',
                        IFSTATUS         => 'up(1)',
                        IFINTERNALSTATUS => 'up(1)',
                        IFLASTCHANGE     => '(0) 0:00:00.00',
                        IFINOCTETS       => '0',
                        IFINERRORS       => '0',
                        IFOUTOCTETS      => '0',
                        IFOUTERRORS      => '0',
                    },
                    {
                        IFNUMBER         => '2',
                        IFDESCR          => 'Xerox Phaser 5550DT Ethernet Interface, 10/100/1000 Mbps, v40.46.04.03.2009, RJ-45, Ethernet, , , ',
                        IFTYPE           => 'ethernetCsmacd(6)',
                        IFSPEED          => '1000000000',
                        IFMTU            => '1500',
                        IP               => '172.16.3.52',
                        IFSTATUS         => 'up(1)',
                        IFINTERNALSTATUS => 'up(1)',
                        IFLASTCHANGE     => '(0) 0:00:00.00',
                        IFINOCTETS       => '0',
                        IFINERRORS       => '0',
                        IFOUTOCTETS      => '0',
                        IFOUTERRORS      => '0',
                    },
                ]
            },
        }
    ],
    'xerox/Phaser_6180MFP.01.walk' => [
        {
            MANUFACTURER => 'Xerox',
            TYPE         => 'PRINTER',
            DESCRIPTION  => 'Xerox Phaser 6180MFP-D; Net 11.74,ESS 200802151717,IOT 05.09.00,Boot 200706151125',
            SNMPHOSTNAME => 'Phaser 6180MFP-D-E360D7',
            MAC          => '00:00:AA:E3:60:D7',
            MODEL        => 'Phaser 6180 MFP',
        },
        {
            MANUFACTURER => 'Xerox',
            TYPE         => 'PRINTER',
            DESCRIPTION  => 'Xerox Phaser 6180MFP-D; Net 11.74,ESS 200802151717,IOT 05.09.00,Boot 200706151125',
            SNMPHOSTNAME => 'Phaser 6180MFP-D-E360D7',
            MAC          => '00:00:AA:E3:60:D7',
            MODEL        => 'Phaser 6180 MFP',
            MODELSNMP    => 'Printer0370',
            FIRMWARE     => undef,
            SERIAL       => 'GPX259705',
        },
        {
            INFO => {
                MANUFACTURER => 'Xerox',
                TYPE         => 'PRINTER',
                COMMENTS     => 'Xerox Phaser 6180MFP-D; Net 11.74,ESS 200802151717,IOT 05.09.00,Boot 200706151125',
                MEMORY       => 0,
                SERIAL       => 'GPX259705',
                ID           => undef,
                NAME         => 'Phaser 6180MFP-D-E360D7',
                MODEL        => 'Phaser 6180 MFP',
                IPS          => {
                    IP => [
                        '172.16.3.61',
                    ]
                },
                UPTIME       => '(119016820) 13 days, 18:36:08.20'
            },
            CARTRIDGES => {
                TONERMAGENTA => 25,
                TONERCYAN    => 25,
                TONERBLACK   => 5,
                TONERYELLOW  => 40
            },
            PORTS => {
                PORT => [
                    {
                        IFNUMBER         => '1',
                        IFNAME           => 'XEROX Ethernet Interface Controller, 10/100 Mbps, RJ45, v1.0, 100Mbps full duplex',
                        IFDESCR          => 'XEROX Ethernet Interface Controller, 10/100 Mbps, RJ45, v1.0, 100Mbps full duplex',
                        IFTYPE           => 'ethernetCsmacd(6)',
                        IFMTU            => '1500',
                        IP               => '172.16.3.61',
                        MAC              => '00:00:AA:E3:60:D7',
                        IFSTATUS         => 'up(1)',
                        IFINTERNALSTATUS => 'up(1)',
                    },
                ]
            },
            PAGECOUNTERS => {
                FAXTOTAL   => 'Faxed Impressions',
                BLACK      => 'Black Impressions ',
                COPYBLACK  => 'Black Copied Impressions',
                TOTAL      => '31341',
            }
        }
    ],
    'xerox/Phaser_8560DN.01.walk' => [
        {
            MANUFACTURER => 'Xerox',
            TYPE         => 'PRINTER',
            DESCRIPTION  => 'Xerox Phaser 8560DN; OS 9.82, PS 4.7.0, Eng 22.L0.4.7.0, Net 37.54.03.02.2008, Adobe PostScript 3016.101 (11), PCL 5c Version 5.0',
            SNMPHOSTNAME => 'cIT510a',
            MAC          => '00:00:AA:D7:5B:A0',
            MODEL        => 'Phaser 8560DN',
        },
        {
            MANUFACTURER => 'Xerox',
            TYPE         => 'PRINTER',
            DESCRIPTION  => 'Xerox Phaser 8560DN; OS 9.82, PS 4.7.0, Eng 22.L0.4.7.0, Net 37.54.03.02.2008, Adobe PostScript 3016.101 (11), PCL 5c Version 5.0',
            SNMPHOSTNAME => 'cIT510a',
            MAC          => '00:00:AA:D7:5B:A0',
            SERIAL       => 'FBT261947',
            MODEL        => 'Phaser 8560DN',
            MODELSNMP    => 'Printer0265',
            FIRMWARE     => undef,
        },
        {
            INFO => {
                MANUFACTURER => 'Xerox',
                TYPE         => 'PRINTER',
                MODEL        => 'Phaser 8560DN',
                MEMORY       => 0,
                SERIAL       => 'FBT261947',
                NAME         => 'cIT510a',
                COMMENTS     => 'Xerox Phaser 8560DN; OS 9.82, PS 4.7.0, Eng 22.L0.4.7.0, Net 37.54.03.02.2008, Adobe PostScript 3016.101 (11), PCL 5c Version 5.0',
                ID           => undef,
                IPS          => {
                    IP => [
                        '127.0.0.1',
                        '128.93.22.227',
                    ]
                },
                UPTIME       => '(8607383) 23:54:33.83'
            },
            CARTRIDGES => {
                WASTETONER     => 100,
                MAINTENANCEKIT => 71,
                TONERMAGENTA   => 100,
                TONERBLACK     => 100,
                TONERYELLOW    => 100,
                TONERCYAN      => 100
            },
            PAGECOUNTERS => {
                TOTAL => '199891',
            },
            PORTS => {
                PORT => [
                    {
                        IFNUMBER         => '1',
                        IFNAME           => 'Xerox Phaser 8560DN Ethernet Interface, 10/100 Mbps, v37.54.03.02.2008, RJ-45, Ethernet, 100 Mbps, full duplex',
                        IFDESCR          => 'Xerox Phaser 8560DN Ethernet Interface, 10/100 Mbps, v37.54.03.02.2008, RJ-45, Ethernet, 100 Mbps, full duplex',
                        IFTYPE           => 'softwareLoopback(24)',
                        IFSPEED          => '0',
                        IFMTU            => '1536',
                        IP               => '127.0.0.1',
                        MAC              => '00:00:AA:D7:5B:A0',
                        IFSTATUS         => 'up(1)',
                        IFINTERNALSTATUS => 'up(1)',
                        IFLASTCHANGE     => '(0) 0:00:00.00',
                        IFINOCTETS       => '0',
                        IFINERRORS       => '0',
                        IFOUTOCTETS      => '0',
                        IFOUTERRORS      => '0',
                    },
                    {
                        IFNUMBER         => '2',
                        IFNAME           => 'Xerox Phaser 8560DN Ethernet Interface, 10/100 Mbps, v37.54.03.02.2008, RJ-45, Ethernet, 100 Mbps, full duplex',
                        IFDESCR          => 'Xerox Phaser 8560DN Ethernet Interface, 10/100 Mbps, v37.54.03.02.2008, RJ-45, Ethernet, 100 Mbps, full duplex',
                        IFTYPE           => 'ethernetCsmacd(6)',
                        IFSPEED          => '100000000',
                        IFMTU            => '1500',
                        IP               => '128.93.22.227',
                        MAC              => '00:00:AA:D7:5B:A0',
                        IFSTATUS         => 'up(1)',
                        IFINTERNALSTATUS => 'up(1)',
                        IFLASTCHANGE     => '(0) 0:00:00.00',
                        IFINOCTETS       => '0',
                        IFINERRORS       => '0',
                        IFOUTOCTETS      => '0',
                        IFOUTERRORS      => '0',
                    },
                ]
            },
        }
    ],
    'xerox/Phaser_8560DN.02.walk' => [
        {
            MANUFACTURER => 'Xerox',
            TYPE         => 'PRINTER',
            DESCRIPTION  => 'Xerox Phaser 8560DN; OS 9.82, PS 4.7.0, Eng 22.L0.4.7.0, Net 37.54.03.02.2008, Adobe PostScript 3016.101 (11), PCL 5c Version 5.0',
            SNMPHOSTNAME => 'cIT524a',
            MAC          => '00:00:AA:C4:26:B0',
            MODEL        => 'Phaser 8560DN',
        },
        {
            MANUFACTURER => 'Xerox',
            TYPE         => 'PRINTER',
            DESCRIPTION  => 'Xerox Phaser 8560DN; OS 9.82, PS 4.7.0, Eng 22.L0.4.7.0, Net 37.54.03.02.2008, Adobe PostScript 3016.101 (11), PCL 5c Version 5.0',
            SNMPHOSTNAME => 'cIT524a',
            MAC          => '00:00:AA:C4:26:B0',
            SERIAL       => 'FBT261949',
            FIRMWARE     => undef,
            MODEL        => 'Phaser 8560DN',
            MODELSNMP    => 'Printer0265',
        },
        {
            INFO => {
                SERIAL       => 'FBT261949',
                TYPE         => 'PRINTER',
                COMMENTS     => 'Xerox Phaser 8560DN; OS 9.82, PS 4.7.0, Eng 22.L0.4.7.0, Net 37.54.03.02.2008, Adobe PostScript 3016.101 (11), PCL 5c Version 5.0',
                NAME         => 'cIT524a',
                MODEL        => 'Phaser 8560DN',
                MANUFACTURER => 'Xerox',
                ID           => undef,
                MEMORY       => 0,
                IPS          => {
                    IP => [
                        '127.0.0.1',
                        '128.93.22.228',
                    ]
                },
                UPTIME       => '(262695935) 30 days, 9:42:39.35'
            },
            CARTRIDGES => {
                TONERCYAN      => 100,
                TONERMAGENTA   => 100,
                MAINTENANCEKIT => 68,
                TONERBLACK     => 100,
                WASTETONER     => 100,
                TONERYELLOW    => 100
            },
            PAGECOUNTERS => {
                TOTAL => '84517',
            },
            PORTS => {
                PORT => [
                    {
                        IFNUMBER         => '1',
                        IFNAME           => 'Xerox Phaser 8560DN Ethernet Interface, 10/100 Mbps, v37.54.03.02.2008, RJ-45, Ethernet, 100 Mbps, full duplex',
                        IFDESCR          => 'Xerox Phaser 8560DN Ethernet Interface, 10/100 Mbps, v37.54.03.02.2008, RJ-45, Ethernet, 100 Mbps, full duplex',
                        IFTYPE           => 'softwareLoopback(24)',
                        IFSPEED          => '0',
                        IFMTU            => '1536',
                        IP               => '127.0.0.1',
                        MAC              => '00:00:AA:C4:26:B0',
                        IFSTATUS         => 'up(1)',
                        IFINTERNALSTATUS => 'up(1)',
                        IFLASTCHANGE     => '(0) 0:00:00.00',
                        IFINOCTETS       => '0',
                        IFINERRORS       => '0',
                        IFOUTOCTETS      => '0',
                        IFOUTERRORS      => '0',
                    },
                    {
                        IFNUMBER         => '2',
                        IFNAME           => 'Xerox Phaser 8560DN Ethernet Interface, 10/100 Mbps, v37.54.03.02.2008, RJ-45, Ethernet, 100 Mbps, full duplex',
                        IFDESCR          => 'Xerox Phaser 8560DN Ethernet Interface, 10/100 Mbps, v37.54.03.02.2008, RJ-45, Ethernet, 100 Mbps, full duplex',
                        IFTYPE           => 'ethernetCsmacd(6)',
                        IFSPEED          => '100000000',
                        IFMTU            => '1500',
                        IP               => '128.93.22.228',
                        MAC              => '00:00:AA:C4:26:B0',
                        IFSTATUS         => 'up(1)',
                        IFINTERNALSTATUS => 'up(1)',
                        IFLASTCHANGE     => '(0) 0:00:00.00',
                        IFINOCTETS       => '0',
                        IFINERRORS       => '0',
                        IFOUTOCTETS      => '0',
                        IFOUTERRORS      => '0',
                    },
                ]
            },
        }
    ],
    'xerox/Phaser_8560DN.03.walk' => [
        {
            MANUFACTURER => 'Xerox',
            TYPE         => 'PRINTER',
            DESCRIPTION  => 'Xerox Phaser 8560DN; OS 9.82, PS 4.7.0, Eng 22.L0.4.7.0, Net 37.54.03.02.2008, Adobe PostScript 3016.101 (11), PCL 5c Version 5.0',
            SNMPHOSTNAME => 'Phaser 8560DN',
            MAC          => '00:00:AA:C4:26:61',
            MODEL        => 'Phaser 8560DN',
        },
        {
            MANUFACTURER => 'Xerox',
            TYPE         => 'PRINTER',
            DESCRIPTION  => 'Xerox Phaser 8560DN; OS 9.82, PS 4.7.0, Eng 22.L0.4.7.0, Net 37.54.03.02.2008, Adobe PostScript 3016.101 (11), PCL 5c Version 5.0',
            SNMPHOSTNAME => 'Phaser 8560DN',
            MAC          => '00:00:AA:C4:26:61',
            SERIAL       => 'FBT261946',
            FIRMWARE     => undef,
            MODEL        => 'Phaser 8560DN',
            MODELSNMP    => 'Printer0265',
        },
        {
            INFO => {
                MANUFACTURER => 'Xerox',
                TYPE         => 'PRINTER',
                ID           => undef,
                MODEL        => 'Phaser 8560DN',
                COMMENTS     => 'Xerox Phaser 8560DN; OS 9.82, PS 4.7.0, Eng 22.L0.4.7.0, Net 37.54.03.02.2008, Adobe PostScript 3016.101 (11), PCL 5c Version 5.0',
                SERIAL       => 'FBT261946',
                MEMORY       => 0,
                NAME         => 'Phaser 8560DN',
                IPS          => {
                    IP => [
                        '127.0.0.1',
                        '128.93.22.229',
                    ]
                },
                UPTIME       => '(1056921) 2:56:09.21'
            },
            CARTRIDGES => {
                MAINTENANCEKIT => 71,
                TONERMAGENTA   => 100,
                TONERYELLOW    => 100,
                WASTETONER     => 100,
                TONERBLACK     => 100,
                TONERCYAN      => 100
            },
            PAGECOUNTERS => {
                TOTAL => '59388',
            },
            PORTS => {
                PORT => [
                    {
                        IFNUMBER         => '1',
                        IFNAME           => 'Xerox Phaser 8560DN Ethernet Interface, 10/100 Mbps, v37.54.03.02.2008, RJ-45, Ethernet, 100 Mbps, full duplex',
                        IFDESCR          => 'Xerox Phaser 8560DN Ethernet Interface, 10/100 Mbps, v37.54.03.02.2008, RJ-45, Ethernet, 100 Mbps, full duplex',
                        IFTYPE           => 'softwareLoopback(24)',
                        IFSPEED          => '0',
                        IFMTU            => '1536',
                        IP               => '127.0.0.1',
                        MAC              => '00:00:AA:C4:26:61',
                        IFSTATUS         => 'up(1)',
                        IFINTERNALSTATUS => 'up(1)',
                        IFLASTCHANGE     => '(0) 0:00:00.00',
                        IFINOCTETS       => '0',
                        IFINERRORS       => '0',
                        IFOUTOCTETS      => '0',
                        IFOUTERRORS      => '0',
                    },
                    {
                        IFNUMBER         => '2',
                        IFNAME           => 'Xerox Phaser 8560DN Ethernet Interface, 10/100 Mbps, v37.54.03.02.2008, RJ-45, Ethernet, 100 Mbps, full duplex',
                        IFDESCR          => 'Xerox Phaser 8560DN Ethernet Interface, 10/100 Mbps, v37.54.03.02.2008, RJ-45, Ethernet, 100 Mbps, full duplex',
                        IFTYPE           => 'ethernetCsmacd(6)',
                        IFSPEED          => '100000000',
                        IFMTU            => '1500',
                        IP               => '128.93.22.229',
                        MAC              => '00:00:AA:C4:26:61',
                        IFSTATUS         => 'up(1)',
                        IFINTERNALSTATUS => 'up(1)',
                        IFLASTCHANGE     => '(0) 0:00:00.00',
                        IFINOCTETS       => '0',
                        IFINERRORS       => '0',
                        IFOUTOCTETS      => '0',
                        IFOUTERRORS      => '0',
                    },
                ]
            },
        }
    ],
    'xerox/Phaser_8560DN.04.walk' => [
        {
            MANUFACTURER => 'Xerox',
            TYPE         => 'PRINTER',
            DESCRIPTION  => 'Xerox Phaser 8560DN; OS 9.82, PS 4.7.0, Eng 22.L0.4.7.0, Net 37.54.03.02.2008, Adobe PostScript 3016.101 (11), PCL 5c Version 5.0',
            SNMPHOSTNAME => 'c0211a',
            MAC          => '00:00:AA:C4:27:C4',
            MODEL        => 'Phaser 8560DN',
        },
        {
            MANUFACTURER => 'Xerox',
            TYPE         => 'PRINTER',
            DESCRIPTION  => 'Xerox Phaser 8560DN; OS 9.82, PS 4.7.0, Eng 22.L0.4.7.0, Net 37.54.03.02.2008, Adobe PostScript 3016.101 (11), PCL 5c Version 5.0',
            SNMPHOSTNAME => 'c0211a',
            MAC          => '00:00:AA:C4:27:C4',
            MODELSNMP    => 'Printer0265',
            FIRMWARE     => undef,
            SERIAL       => 'FBT261926',
            MODEL        => 'Phaser 8560DN',
        },
        {
            INFO => {
                ID           => undef,
                MANUFACTURER => 'Xerox',
                TYPE         => 'PRINTER',
                MEMORY       => 0,
                COMMENTS     => 'Xerox Phaser 8560DN; OS 9.82, PS 4.7.0, Eng 22.L0.4.7.0, Net 37.54.03.02.2008, Adobe PostScript 3016.101 (11), PCL 5c Version 5.0',
                MODEL        => 'Phaser 8560DN',
                SERIAL       => 'FBT261926',
                NAME         => 'c0211a',
                IPS          => {
                    IP => [
                        '127.0.0.1',
                        '128.93.22.18',
                    ]
                },
                UPTIME       => '(9827360) 1 day, 3:17:53.60'
            },
            CARTRIDGES => {
                MAINTENANCEKIT => 22,
                TONERMAGENTA   => 100,
                TONERYELLOW    => 100,
                WASTETONER     => 100,
                TONERCYAN      => 100,
                TONERBLACK     => 100
            },
            PAGECOUNTERS => {
                TOTAL => '40802',
            },
            PORTS => {
                PORT => [
                    {
                        IFNUMBER         => '1',
                        IFNAME           => 'Xerox Phaser 8560DN Ethernet Interface, 10/100 Mbps, v37.54.03.02.2008, RJ-45, Ethernet, 100 Mbps, full duplex',
                        IFDESCR          => 'Xerox Phaser 8560DN Ethernet Interface, 10/100 Mbps, v37.54.03.02.2008, RJ-45, Ethernet, 100 Mbps, full duplex',
                        IFTYPE           => 'softwareLoopback(24)',
                        IFSPEED          => '0',
                        IFMTU            => '1536',
                        IP               => '127.0.0.1',
                        MAC              => '00:00:AA:C4:27:C4',
                        IFSTATUS         => 'up(1)',
                        IFINTERNALSTATUS => 'up(1)',
                        IFLASTCHANGE     => '(0) 0:00:00.00',
                        IFINOCTETS       => '0',
                        IFINERRORS       => '0',
                        IFOUTOCTETS      => '0',
                        IFOUTERRORS      => '0',
                    },
                    {
                        IFNUMBER         => '2',
                        IFNAME           => 'Xerox Phaser 8560DN Ethernet Interface, 10/100 Mbps, v37.54.03.02.2008, RJ-45, Ethernet, 100 Mbps, full duplex',
                        IFDESCR          => 'Xerox Phaser 8560DN Ethernet Interface, 10/100 Mbps, v37.54.03.02.2008, RJ-45, Ethernet, 100 Mbps, full duplex',
                        IFTYPE           => 'ethernetCsmacd(6)',
                        IFSPEED          => '100000000',
                        IFMTU            => '1500',
                        IP               => '128.93.22.18',
                        MAC              => '00:00:AA:C4:27:C4',
                        IFSTATUS         => 'up(1)',
                        IFINTERNALSTATUS => 'up(1)',
                        IFLASTCHANGE     => '(0) 0:00:00.00',
                        IFINOCTETS       => '0',
                        IFINERRORS       => '0',
                        IFOUTOCTETS      => '0',
                        IFOUTERRORS      => '0',
                    },
                ]
            },
        }
    ],
    'xerox/Phaser_8560DN.05.walk' => [
        {
            MANUFACTURER => 'Xerox',
            TYPE         => 'PRINTER',
            DESCRIPTION  => 'Xerox Phaser 8560DN; OS 9.82, PS 4.7.0, Eng 22.L0.4.7.0, Net 37.54.03.02.2008, Adobe PostScript 3016.101 (11), PCL 5c Version 5.0',
            SNMPHOSTNAME => 'c1309a',
            MAC          => '00:00:AA:D2:C6:82',
            MODEL        => 'Phaser 8560DN',
        },
        {
            MANUFACTURER => 'Xerox',
            TYPE         => 'PRINTER',
            DESCRIPTION  => 'Xerox Phaser 8560DN; OS 9.82, PS 4.7.0, Eng 22.L0.4.7.0, Net 37.54.03.02.2008, Adobe PostScript 3016.101 (11), PCL 5c Version 5.0',
            SNMPHOSTNAME => 'c1309a',
            MAC          => '00:00:AA:D2:C6:82',
            MODEL        => 'Phaser 8560DN',
            MODELSNMP    => 'Printer0265',
            FIRMWARE     => undef,
            SERIAL       => 'FBT340010',
        },
        {
            INFO => {
                ID           => undef,
                MANUFACTURER => 'Xerox',
                TYPE         => 'PRINTER',
                COMMENTS     => 'Xerox Phaser 8560DN; OS 9.82, PS 4.7.0, Eng 22.L0.4.7.0, Net 37.54.03.02.2008, Adobe PostScript 3016.101 (11), PCL 5c Version 5.0',
                SERIAL       => 'FBT340010',
                MEMORY       => 0,
                NAME         => 'c1309a',
                MODEL        => 'Phaser 8560DN',
                IPS          => {
                    IP => [
                        '127.0.0.1',
                        '128.93.22.37',
                    ]
                },
                UPTIME       => '(184090216) 21 days, 7:21:42.16'
            },
            CARTRIDGES => {
                WASTETONER     => 100,
                MAINTENANCEKIT => 14,
                TONERBLACK     => 100,
                TONERCYAN      => 100,
                TONERYELLOW    => 100,
                TONERMAGENTA   => 100
            },
            PAGECOUNTERS => {
                TOTAL => '147817',
            },
            PORTS => {
                PORT => [
                    {
                        IFNUMBER         => '1',
                        IFNAME           => 'Xerox Phaser 8560DN Ethernet Interface, 10/100 Mbps, v37.54.03.02.2008, RJ-45, Ethernet, 100 Mbps, full duplex',
                        IFDESCR          => 'Xerox Phaser 8560DN Ethernet Interface, 10/100 Mbps, v37.54.03.02.2008, RJ-45, Ethernet, 100 Mbps, full duplex',
                        IFTYPE           => 'softwareLoopback(24)',
                        IFSPEED          => '0',
                        IFMTU            => '1536',
                        IP               => '127.0.0.1',
                        MAC              => '00:00:AA:D2:C6:82',
                        IFSTATUS         => 'up(1)',
                        IFINTERNALSTATUS => 'up(1)',
                        IFLASTCHANGE     => '(0) 0:00:00.00',
                        IFINOCTETS       => '0',
                        IFINERRORS       => '0',
                        IFOUTOCTETS      => '0',
                        IFOUTERRORS      => '0',
                    },
                    {
                        IFNUMBER         => '2',
                        IFNAME           => 'Xerox Phaser 8560DN Ethernet Interface, 10/100 Mbps, v37.54.03.02.2008, RJ-45, Ethernet, 100 Mbps, full duplex',
                        IFDESCR          => 'Xerox Phaser 8560DN Ethernet Interface, 10/100 Mbps, v37.54.03.02.2008, RJ-45, Ethernet, 100 Mbps, full duplex',
                        IFTYPE           => 'ethernetCsmacd(6)',
                        IFSPEED          => '100000000',
                        IFMTU            => '1500',
                        IP               => '128.93.22.37',
                        MAC              => '00:00:AA:D2:C6:82',
                        IFSTATUS         => 'up(1)',
                        IFINTERNALSTATUS => 'up(1)',
                        IFLASTCHANGE     => '(0) 0:00:00.00',
                        IFINOCTETS       => '0',
                        IFINERRORS       => '0',
                        IFOUTOCTETS      => '0',
                        IFOUTERRORS      => '0',
                    },
                ]
            },
        }
    ],
    'xerox/Phaser_8560DN.06.walk' => [
        {
            MANUFACTURER => 'Xerox',
            TYPE         => 'PRINTER',
            DESCRIPTION  => 'Xerox Phaser 8560DN; OS 9.82, PS 4.7.0, Eng 22.L0.4.7.0, Net 37.54.03.02.2008, Adobe PostScript 3016.101 (11), PCL 5c Version 5.0',
            SNMPHOSTNAME => 'c2410a',
            MAC          => '00:00:AA:C4:27:0F',
            MODEL        => 'Phaser 8560DN',
        },
        {
            MANUFACTURER => 'Xerox',
            TYPE         => 'PRINTER',
            DESCRIPTION  => 'Xerox Phaser 8560DN; OS 9.82, PS 4.7.0, Eng 22.L0.4.7.0, Net 37.54.03.02.2008, Adobe PostScript 3016.101 (11), PCL 5c Version 5.0',
            SNMPHOSTNAME => 'c2410a',
            MAC          => '00:00:AA:C4:27:0F',
            FIRMWARE     => undef,
            SERIAL       => 'FBT261951',
            MODEL        => 'Phaser 8560DN',
            MODELSNMP    => 'Printer0265'
        },
        {
            INFO => {
                ID           => undef,
                MANUFACTURER => 'Xerox',
                TYPE         => 'PRINTER',
                COMMENTS     => 'Xerox Phaser 8560DN; OS 9.82, PS 4.7.0, Eng 22.L0.4.7.0, Net 37.54.03.02.2008, Adobe PostScript 3016.101 (11), PCL 5c Version 5.0',
                NAME         => 'c2410a',
                SERIAL       => 'FBT261951',
                MODEL        => 'Phaser 8560DN',
                MEMORY       => 0,
                IPS          => {
                    IP => [
                        '127.0.0.1',
                        '128.93.22.60',
                    ]
                },
                UPTIME       => '(72059111) 8 days, 8:09:51.11',
            },
            CARTRIDGES => {
                WASTETONER     => 100,
                TONERCYAN      => 100,
                MAINTENANCEKIT => 99,
                TONERMAGENTA   => 100,
                TONERYELLOW    => 100,
                TONERBLACK     => 100
            },
            PAGECOUNTERS => {
                TOTAL => '70041',
            },
            PORTS => {
                PORT => [
                    {
                        IFNUMBER         => '1',
                        IFNAME           => 'Xerox Phaser 8560DN Ethernet Interface, 10/100 Mbps, v37.54.03.02.2008, RJ-45, Ethernet, 100 Mbps, full duplex',
                        IFDESCR          => 'Xerox Phaser 8560DN Ethernet Interface, 10/100 Mbps, v37.54.03.02.2008, RJ-45, Ethernet, 100 Mbps, full duplex',
                        IFTYPE           => 'softwareLoopback(24)',
                        IFSPEED          => '0',
                        IFMTU            => '1536',
                        IP               => '127.0.0.1',
                        MAC              => '00:00:AA:C4:27:0F',
                        IFSTATUS         => 'up(1)',
                        IFINTERNALSTATUS => 'up(1)',
                        IFLASTCHANGE     => '(0) 0:00:00.00',
                        IFINOCTETS       => '0',
                        IFINERRORS       => '0',
                        IFOUTOCTETS      => '0',
                        IFOUTERRORS      => '0',
                    },
                    {
                        IFNUMBER         => '2',
                        IFNAME           => 'Xerox Phaser 8560DN Ethernet Interface, 10/100 Mbps, v37.54.03.02.2008, RJ-45, Ethernet, 100 Mbps, full duplex',
                        IFDESCR          => 'Xerox Phaser 8560DN Ethernet Interface, 10/100 Mbps, v37.54.03.02.2008, RJ-45, Ethernet, 100 Mbps, full duplex',
                        IFTYPE           => 'ethernetCsmacd(6)',
                        IFSPEED          => '100000000',
                        IFMTU            => '1500',
                        IP               => '128.93.22.60',
                        MAC              => '00:00:AA:C4:27:0F',
                        IFSTATUS         => 'up(1)',
                        IFINTERNALSTATUS => 'up(1)',
                        IFLASTCHANGE     => '(0) 0:00:00.00',
                        IFINOCTETS       => '0',
                        IFINERRORS       => '0',
                        IFOUTOCTETS      => '0',
                        IFOUTERRORS      => '0',
                    },
                ]
            },
        }
    ],
    'xerox/Phaser_8560DN.07.walk' => [
        {
            MANUFACTURER => 'Xerox',
            TYPE         => 'PRINTER',
            DESCRIPTION  => 'Xerox Phaser 8560DN; OS 9.82, PS 4.7.0, Eng 22.L0.4.7.0, Net 37.54.03.02.2008, Adobe PostScript 3016.101 (11), PCL 5c Version 5.0',
            SNMPHOSTNAME => 'c3312a',
            MAC          => '00:00:AA:AB:92:93',
            MODEL        => 'Phaser 8560DN',
        },
        {
            MANUFACTURER => 'Xerox',
            TYPE         => 'PRINTER',
            DESCRIPTION  => 'Xerox Phaser 8560DN; OS 9.82, PS 4.7.0, Eng 22.L0.4.7.0, Net 37.54.03.02.2008, Adobe PostScript 3016.101 (11), PCL 5c Version 5.0',
            SNMPHOSTNAME => 'c3312a',
            SERIAL       => 'FBT163983',
            MAC          => '00:00:AA:AB:92:93',
            MODEL        => 'Phaser 8560DN',
            MODELSNMP    => 'Printer0265',
            FIRMWARE     => undef,
        },
        {
            INFO => {
                NAME         => 'c3312a',
                MEMORY       => 0,
                SERIAL       => 'FBT163983',
                COMMENTS     => 'Xerox Phaser 8560DN; OS 9.82, PS 4.7.0, Eng 22.L0.4.7.0, Net 37.54.03.02.2008, Adobe PostScript 3016.101 (11), PCL 5c Version 5.0',
                ID           => undef,
                MODEL        => 'Phaser 8560DN',
                TYPE         => 'PRINTER',
                MANUFACTURER => 'Xerox',
                IPS          => {
                    IP => [
                        '127.0.0.1',
                        '128.93.22.218',
                    ]
                },
                UPTIME       => '(745216738) 86 days, 6:02:47.38'
            },
            CARTRIDGES => {
                MAINTENANCEKIT => 28,
                TONERYELLOW    => 100,
                TONERCYAN      => 100,
                TONERMAGENTA   => 100,
                TONERBLACK     => 100,
                WASTETONER     => 100
            },
            PAGECOUNTERS => {
                TOTAL => '31779',
            },
            PORTS => {
                PORT => [
                    {
                        IFNUMBER         => '1',
                        IFNAME           => 'Xerox Phaser 8560DN Ethernet Interface, 10/100 Mbps, v37.54.03.02.2008, RJ-45, Ethernet, 100 Mbps, full duplex',
                        IFDESCR          => 'Xerox Phaser 8560DN Ethernet Interface, 10/100 Mbps, v37.54.03.02.2008, RJ-45, Ethernet, 100 Mbps, full duplex',
                        IFTYPE           => 'softwareLoopback(24)',
                        IFSPEED          => '0',
                        IFMTU            => '1536',
                        IP               => '127.0.0.1',
                        MAC              => '00:00:AA:AB:92:93',
                        IFSTATUS         => 'up(1)',
                        IFINTERNALSTATUS => 'up(1)',
                        IFLASTCHANGE     => '(0) 0:00:00.00',
                        IFINOCTETS       => '0',
                        IFINERRORS       => '0',
                        IFOUTOCTETS      => '0',
                        IFOUTERRORS      => '0',
                    },
                    {
                        IFNUMBER         => '2',
                        IFNAME           => 'Xerox Phaser 8560DN Ethernet Interface, 10/100 Mbps, v37.54.03.02.2008, RJ-45, Ethernet, 100 Mbps, full duplex',
                        IFDESCR          => 'Xerox Phaser 8560DN Ethernet Interface, 10/100 Mbps, v37.54.03.02.2008, RJ-45, Ethernet, 100 Mbps, full duplex',
                        IFTYPE           => 'ethernetCsmacd(6)',
                        IFSPEED          => '100000000',
                        IFMTU            => '1500',
                        IP               => '128.93.22.218',
                        MAC              => '00:00:AA:AB:92:93',
                        IFSTATUS         => 'up(1)',
                        IFINTERNALSTATUS => 'up(1)',
                        IFLASTCHANGE     => '(0) 0:00:00.00',
                        IFINOCTETS       => '0',
                        IFINERRORS       => '0',
                        IFOUTOCTETS      => '0',
                        IFOUTERRORS      => '0',
                    },
                ]
            },
        }
    ],
    'xerox/Phaser_8560DN.08.walk' => [
        {
            MANUFACTURER => 'Xerox',
            TYPE         => 'PRINTER',
            DESCRIPTION  => 'Xerox Phaser 8560DN; OS 9.82, PS 4.7.0, Eng 22.L0.4.7.0, Net 37.54.03.02.2008, Adobe PostScript 3016.101 (11), PCL 5c Version 5.0',
            SNMPHOSTNAME => 'c0400a',
            MAC          => '00:00:AA:C4:27:29',
            MODEL        => 'Phaser 8560DN',
        },
        {
            MANUFACTURER => 'Xerox',
            TYPE         => 'PRINTER',
            DESCRIPTION  => 'Xerox Phaser 8560DN; OS 9.82, PS 4.7.0, Eng 22.L0.4.7.0, Net 37.54.03.02.2008, Adobe PostScript 3016.101 (11), PCL 5c Version 5.0',
            SNMPHOSTNAME => 'c0400a',
            MAC          => '00:00:AA:C4:27:29',
            SERIAL       => 'FBT261925',
            FIRMWARE     => undef,
            MODEL        => 'Phaser 8560DN',
            MODELSNMP    => 'Printer0265',
        },
        {
            INFO => {
                ID           => undef,
                MANUFACTURER => 'Xerox',
                TYPE         => 'PRINTER',
                COMMENTS     => 'Xerox Phaser 8560DN; OS 9.82, PS 4.7.0, Eng 22.L0.4.7.0, Net 37.54.03.02.2008, Adobe PostScript 3016.101 (11), PCL 5c Version 5.0',
                NAME         => 'c0400a',
                MEMORY       => 0,
                MODEL        => 'Phaser 8560DN',
                SERIAL       => 'FBT261925',
                IPS          => {
                    IP => [
                        '127.0.0.1',
                        '128.93.22.114',
                    ]
                },
                UPTIME       => '(537900356) 62 days, 6:10:03.56'
            },
            CARTRIDGES => {
                MAINTENANCEKIT => 20,
                TONERCYAN      => 100,
                TONERYELLOW    => 100,
                TONERMAGENTA   => 100,
                WASTETONER     => 100,
                TONERBLACK     => 100
            },
            PAGECOUNTERS => {
                TOTAL => '127444',
            },
            PORTS => {
                PORT => [
                    {
                        IFNUMBER         => '1',
                        IFNAME           => 'Xerox Phaser 8560DN Ethernet Interface, 10/100 Mbps, v37.54.03.02.2008, RJ-45, Ethernet, 100 Mbps, half duplex',
                        IFDESCR          => 'Xerox Phaser 8560DN Ethernet Interface, 10/100 Mbps, v37.54.03.02.2008, RJ-45, Ethernet, 100 Mbps, half duplex',
                        IFTYPE           => 'softwareLoopback(24)',
                        IFSPEED          => '0',
                        IFMTU            => '1536',
                        IP               => '127.0.0.1',
                        MAC              => '00:00:AA:C4:27:29',
                        IFSTATUS         => 'up(1)',
                        IFINTERNALSTATUS => 'up(1)',
                        IFLASTCHANGE     => '(0) 0:00:00.00',
                        IFINOCTETS       => '0',
                        IFINERRORS       => '0',
                        IFOUTOCTETS      => '0',
                        IFOUTERRORS      => '0',
                    },
                    {
                        IFNUMBER         => '2',
                        IFNAME           => 'Xerox Phaser 8560DN Ethernet Interface, 10/100 Mbps, v37.54.03.02.2008, RJ-45, Ethernet, 100 Mbps, half duplex',
                        IFDESCR          => 'Xerox Phaser 8560DN Ethernet Interface, 10/100 Mbps, v37.54.03.02.2008, RJ-45, Ethernet, 100 Mbps, half duplex',
                        IFTYPE           => 'ethernetCsmacd(6)',
                        IFSPEED          => '100000000',
                        IFMTU            => '1500',
                        IP               => '128.93.22.114',
                        MAC              => '00:00:AA:C4:27:29',
                        IFSTATUS         => 'up(1)',
                        IFINTERNALSTATUS => 'up(1)',
                        IFLASTCHANGE     => '(0) 0:00:00.00',
                        IFINOCTETS       => '0',
                        IFINERRORS       => '0',
                        IFOUTOCTETS      => '0',
                        IFOUTERRORS      => '0',
                    },
                ]
            },
        }
    ],
    'xerox/Phaser_8560DN.09.walk' => [
        {
            MANUFACTURER => 'Xerox',
            TYPE         => 'PRINTER',
            DESCRIPTION  => 'Xerox Phaser 8560DN; OS 7.86, PS 4.1.0, Eng 22.L0.4.1.0, Net 31.92.12.14.2006',
            MAC          => '00:00:AA:A8:12:CF',
            SNMPHOSTNAME => 'Phaser 8560DN-2',
            MODEL        => 'Phaser 8560DN',
        },
        {
            MANUFACTURER => 'Xerox',
            TYPE         => 'PRINTER',
            DESCRIPTION  => 'Xerox Phaser 8560DN; OS 7.86, PS 4.1.0, Eng 22.L0.4.1.0, Net 31.92.12.14.2006',
            SNMPHOSTNAME => 'Phaser 8560DN-2',
            MAC          => '00:00:AA:A8:12:CF',
            FIRMWARE     => undef,
            SERIAL       => 'FBT133950',
            MODEL        => 'Phaser 8560DN',
            MODELSNMP    => 'Printer0314'
        },
        {
            INFO => {
                ID           => undef,
                MANUFACTURER => 'Xerox',
                TYPE         => 'PRINTER',
                NAME         => 'Phaser 8560DN-2',
                COMMENTS     => 'Xerox Phaser 8560DN; OS 7.86, PS 4.1.0, Eng 22.L0.4.1.0, Net 31.92.12.14.2006',
                MODEL        => 'Phaser 8560DN',
                SERIAL       => 'FBT133950',
                MEMORY       => 0,
                IPS          => {
                    IP => [
                        '127.0.0.1',
                        '128.93.22.150',
                    ]
                },
                UPTIME       => '(53965840) 6 days, 5:54:18.40'
            },
            PAGECOUNTERS => {
                BLACK => 'Black Impressions',
                TOTAL => '31873',
            },
            CARTRIDGES => {
                TONERBLACK     => 100,
                TONERCYAN      => 100,
                WASTETONER     => 100,
                MAINTENANCEKIT => 89,
                TONERMAGENTA   => 100,
                TONERYELLOW    => 100
            },
            PORTS => {
                PORT => [
                    {
                        IFNUMBER         => '1',
                        IFNAME           => 'Xerox Phaser 8560 Ethernet Interface, 10/100 Mbps, v31.92.12.14.2006, RJ-45, Ethernet, 100 Mbps, full duplex',
                        IFDESCR          => 'Xerox Phaser 8560 Ethernet Interface, 10/100 Mbps, v31.92.12.14.2006, RJ-45, Ethernet, 100 Mbps, full duplex',
                        IFTYPE           => 'ethernetCsmacd(6)',
                        IFSPEED          => '100000000',
                        IFMTU            => '1500',
                        IP               => '128.93.22.150',
                        MAC              => '00:00:AA:A8:12:CF',
                        IFSTATUS         => 'up(1)',
                        IFINTERNALSTATUS => 'up(1)',
                        IFLASTCHANGE     => '(0) 0:00:00.00',
                        IFINOCTETS       => '0',
                        IFINERRORS       => '0',
                        IFOUTOCTETS      => '0',
                        IFOUTERRORS      => '0',
                    },
                    {
                        IFNUMBER         => '2',
                        IFNAME           => 'Xerox Phaser 8560 Ethernet Interface, 10/100 Mbps, v31.92.12.14.2006, RJ-45, Ethernet, 100 Mbps, full duplex',
                        IFDESCR          => 'Xerox Phaser 8560 Ethernet Interface, 10/100 Mbps, v31.92.12.14.2006, RJ-45, Ethernet, 100 Mbps, full duplex',
                        IFTYPE           => 'softwareLoopback(24)',
                        IFSPEED          => '0',
                        IFMTU            => '1536',
                        IP               => '127.0.0.1',
                        MAC              => '00:00:AA:A8:12:CF',
                        IFSTATUS         => 'up(1)',
                        IFINTERNALSTATUS => 'up(1)',
                        IFLASTCHANGE     => '(0) 0:00:00.00',
                        IFINOCTETS       => '0',
                        IFINERRORS       => '0',
                        IFOUTOCTETS      => '0',
                        IFOUTERRORS      => '0',
                    },
                ]
            },
        }
    ],
    'xerox/Phaser_8560DN.10.walk' => [
        {
            MANUFACTURER => 'Xerox',
            TYPE         => 'PRINTER',
            DESCRIPTION  => 'Xerox Phaser 8560DN; OS 7.86, PS 4.1.0, Eng 22.L0.4.1.0, Net 31.92.12.14.2006',
            MAC          => '00:00:AA:AB:95:BE',
            SNMPHOSTNAME => 'c2206a',
            MODEL        => 'Phaser 8560DN',
        },
        {
            MANUFACTURER => 'Xerox',
            TYPE         => 'PRINTER',
            DESCRIPTION  => 'Xerox Phaser 8560DN; OS 7.86, PS 4.1.0, Eng 22.L0.4.1.0, Net 31.92.12.14.2006',
            SNMPHOSTNAME => 'c2206a',
            FIRMWARE     => undef,
            SERIAL       => 'FBT163981',
            MAC          => '00:00:AA:AB:95:BE',
            MODEL        => 'Phaser 8560DN',
            MODELSNMP    => 'Printer0314'
        },
        {
            INFO => {
                ID           => undef,
                MANUFACTURER => 'Xerox',
                TYPE         => 'PRINTER',
                SERIAL       => 'FBT163981',
                COMMENTS     => 'Xerox Phaser 8560DN; OS 7.86, PS 4.1.0, Eng 22.L0.4.1.0, Net 31.92.12.14.2006',
                NAME         => 'c2206a',
                MEMORY       => 0,
                MODEL        => 'Phaser 8560DN',
                IPS          => {
                    IP => [
                        '127.0.0.1',
                        '128.93.22.82',
                    ]
                },
                UPTIME       => '(504016756) 58 days, 8:02:47.56',
            },
            PAGECOUNTERS => {
                BLACK => 'Black Impressions',
                TOTAL => '35910',
            },
            CARTRIDGES => {
                WASTETONER     => 100,
                TONERBLACK     => 100,
                TONERCYAN      => 100,
                TONERMAGENTA   => 100,
                MAINTENANCEKIT => 14,
                TONERYELLOW    => 100
            },
            PORTS => {
                PORT => [
                    {
                        IFNUMBER         => '1',
                        IFNAME           => 'Xerox Phaser 8560 Ethernet Interface, 10/100 Mbps, v31.92.12.14.2006, RJ-45, Ethernet, 100 Mbps, full duplex',
                        IFDESCR          => 'Xerox Phaser 8560 Ethernet Interface, 10/100 Mbps, v31.92.12.14.2006, RJ-45, Ethernet, 100 Mbps, full duplex',
                        IFTYPE           => 'ethernetCsmacd(6)',
                        IFSPEED          => '100000000',
                        IFMTU            => '1500',
                        IP               => '128.93.22.82',
                        MAC              => '00:00:AA:AB:95:BE',
                        IFSTATUS         => 'up(1)',
                        IFINTERNALSTATUS => 'up(1)',
                        IFLASTCHANGE     => '(0) 0:00:00.00',
                        IFINOCTETS       => '0',
                        IFINERRORS       => '0',
                        IFOUTOCTETS      => '0',
                        IFOUTERRORS      => '0',
                    },
                    {
                        IFNUMBER         => '2',
                        IFNAME           => 'Xerox Phaser 8560 Ethernet Interface, 10/100 Mbps, v31.92.12.14.2006, RJ-45, Ethernet, 100 Mbps, full duplex',
                        IFDESCR          => 'Xerox Phaser 8560 Ethernet Interface, 10/100 Mbps, v31.92.12.14.2006, RJ-45, Ethernet, 100 Mbps, full duplex',
                        IFTYPE           => 'softwareLoopback(24)',
                        IFSPEED          => '0',
                        IFMTU            => '1536',
                        IP               => '127.0.0.1',
                        MAC              => '00:00:AA:AB:95:BE',
                        IFSTATUS         => 'up(1)',
                        IFINTERNALSTATUS => 'up(1)',
                        IFLASTCHANGE     => '(0) 0:00:00.00',
                        IFINOCTETS       => '0',
                        IFINERRORS       => '0',
                        IFOUTOCTETS      => '0',
                        IFOUTERRORS      => '0',
                    },
                ]
            },
        }
    ],
    'xerox/Phaser_8560DN.11.walk' => [
        {
            MANUFACTURER => 'Xerox',
            TYPE         => 'PRINTER',
            DESCRIPTION  => 'Xerox Phaser 8560DN; OS 7.86, PS 4.1.0, Eng 22.L0.4.1.0, Net 31.92.12.14.2006',
            SNMPHOSTNAME => 'c1500a',
            MAC          => '00:00:AA:A7:E4:D3',
            MODEL        => 'Phaser 8560DN',
        },
        {
            MANUFACTURER => 'Xerox',
            TYPE         => 'PRINTER',
            DESCRIPTION  => 'Xerox Phaser 8560DN; OS 7.86, PS 4.1.0, Eng 22.L0.4.1.0, Net 31.92.12.14.2006',
            SNMPHOSTNAME => 'c1500a',
            MAC          => '00:00:AA:A7:E4:D3',
            MODEL        => 'Phaser 8560DN',
            MODELSNMP    => 'Printer0314',
            SERIAL       => 'FBT133984',
            FIRMWARE     => undef,
        },
        {
            INFO => {
                ID           => undef,
                MANUFACTURER => 'Xerox',
                TYPE         => 'PRINTER',
                COMMENTS     => 'Xerox Phaser 8560DN; OS 7.86, PS 4.1.0, Eng 22.L0.4.1.0, Net 31.92.12.14.2006',
                NAME         => 'c1500a',
                MEMORY       => 0,
                MODEL        => 'Phaser 8560DN',
                SERIAL       => 'FBT133984',
                IPS          => {
                    IP => [
                        '127.0.0.1',
                        '128.93.22.65',
                    ]
                },
                UPTIME       => '(745557553) 86 days, 6:59:35.53'
            },
            CARTRIDGES => {
                TONERCYAN      => 100,
                WASTETONER     => 100,
                TONERBLACK     => 100,
                TONERYELLOW    => 100,
                TONERMAGENTA   => 100,
                MAINTENANCEKIT => 69
            },
            PAGECOUNTERS => {
                BLACK => 'Black Impressions',
                TOTAL => '214103',
            },
            PORTS => {
                PORT => [
                    {
                        IFNUMBER         => '1',
                        IFNAME           => 'Xerox Phaser 8560 Ethernet Interface, 10/100 Mbps, v31.92.12.14.2006, RJ-45, Ethernet, 100 Mbps, full duplex',
                        IFDESCR          => 'Xerox Phaser 8560 Ethernet Interface, 10/100 Mbps, v31.92.12.14.2006, RJ-45, Ethernet, 100 Mbps, full duplex',
                        IFTYPE           => 'ethernetCsmacd(6)',
                        IFSPEED          => '100000000',
                        IFMTU            => '1500',
                        IP               => '128.93.22.65',
                        MAC              => '00:00:AA:A7:E4:D3',
                        IFSTATUS         => 'up(1)',
                        IFINTERNALSTATUS => 'up(1)',
                        IFLASTCHANGE     => '(0) 0:00:00.00',
                        IFINOCTETS       => '0',
                        IFINERRORS       => '0',
                        IFOUTOCTETS      => '0',
                        IFOUTERRORS      => '0',
                    },
                    {
                        IFNUMBER         => '2',
                        IFNAME           => 'Xerox Phaser 8560 Ethernet Interface, 10/100 Mbps, v31.92.12.14.2006, RJ-45, Ethernet, 100 Mbps, full duplex',
                        IFDESCR          => 'Xerox Phaser 8560 Ethernet Interface, 10/100 Mbps, v31.92.12.14.2006, RJ-45, Ethernet, 100 Mbps, full duplex',
                        IFTYPE           => 'softwareLoopback(24)',
                        IFSPEED          => '0',
                        IFMTU            => '1536',
                        IP               => '127.0.0.1',
                        MAC              => '00:00:AA:A7:E4:D3',
                        IFSTATUS         => 'up(1)',
                        IFINTERNALSTATUS => 'up(1)',
                        IFLASTCHANGE     => '(0) 0:00:00.00',
                        IFINOCTETS       => '0',
                        IFINERRORS       => '0',
                        IFOUTOCTETS      => '0',
                        IFOUTERRORS      => '0',
                    },
                ]
            },
        }
    ],
    'xerox/Phaser_8560DN.12.walk' => [
        {
            MANUFACTURER => 'Xerox',
            TYPE         => 'PRINTER',
            DESCRIPTION  => 'Xerox Phaser 8560DN; OS 7.86, PS 4.1.0, Eng 22.L0.4.1.0, Net 31.92.12.14.2006',
            SNMPHOSTNAME => 'c1715a',
            MAC          => '00:00:AA:A7:E5:B6',
            MODEL        => 'Phaser 8560DN',
        },
        {
            MANUFACTURER => 'Xerox',
            TYPE         => 'PRINTER',
            DESCRIPTION  => 'Xerox Phaser 8560DN; OS 7.86, PS 4.1.0, Eng 22.L0.4.1.0, Net 31.92.12.14.2006',
            SNMPHOSTNAME => 'c1715a',
            MAC          => '00:00:AA:A7:E5:B6',
            FIRMWARE     => undef,
            SERIAL       => 'FBT133868',
            MODEL        => 'Phaser 8560DN',
            MODELSNMP    => 'Printer0314'
        },
        {
            INFO => {
                ID           => undef,
                MANUFACTURER => 'Xerox',
                TYPE         => 'PRINTER',
                COMMENTS     => 'Xerox Phaser 8560DN; OS 7.86, PS 4.1.0, Eng 22.L0.4.1.0, Net 31.92.12.14.2006',
                SERIAL       => 'FBT133868',
                MEMORY       => 0,
                NAME         => 'c1715a',
                MODEL        => 'Phaser 8560DN',
                IPS          => {
                    IP => [
                        '127.0.0.1',
                        '128.93.22.17',
                    ]
                },
                UPTIME       => '(745560805) 86 days, 7:00:08.05'
            },
            PAGECOUNTERS => {
                BLACK => 'Black Impressions',
                TOTAL => '156798',
            },
            CARTRIDGES => {
                TONERBLACK => 100,
                WASTETONER => 100,
                TONERMAGENTA => 100,
                TONERCYAN => 100,
                TONERYELLOW => 100,
                MAINTENANCEKIT => 90
            },
            PORTS => {
                PORT => [
                    {
                        IFNUMBER         => '1',
                        IFNAME           => 'Xerox Phaser 8560 Ethernet Interface, 10/100 Mbps, v31.92.12.14.2006, RJ-45, Ethernet, 100 Mbps, full duplex',
                        IFDESCR          => 'Xerox Phaser 8560 Ethernet Interface, 10/100 Mbps, v31.92.12.14.2006, RJ-45, Ethernet, 100 Mbps, full duplex',
                        IFTYPE           => 'ethernetCsmacd(6)',
                        IFSPEED          => '100000000',
                        IFMTU            => '1500',
                        IP               => '128.93.22.17',
                        MAC              => '00:00:AA:A7:E5:B6',
                        IFSTATUS         => 'up(1)',
                        IFINTERNALSTATUS => 'up(1)',
                        IFLASTCHANGE     => '(0) 0:00:00.00',
                        IFINOCTETS       => '0',
                        IFINERRORS       => '0',
                        IFOUTOCTETS      => '0',
                        IFOUTERRORS      => '0',
                    },
                    {
                        IFNUMBER         => '2',
                        IFNAME           => 'Xerox Phaser 8560 Ethernet Interface, 10/100 Mbps, v31.92.12.14.2006, RJ-45, Ethernet, 100 Mbps, full duplex',
                        IFDESCR          => 'Xerox Phaser 8560 Ethernet Interface, 10/100 Mbps, v31.92.12.14.2006, RJ-45, Ethernet, 100 Mbps, full duplex',
                        IFTYPE           => 'softwareLoopback(24)',
                        IFSPEED          => '0',
                        IFMTU            => '1536',
                        IP               => '127.0.0.1',
                        MAC              => '00:00:AA:A7:E5:B6',
                        IFSTATUS         => 'up(1)',
                        IFINTERNALSTATUS => 'up(1)',
                        IFLASTCHANGE     => '(0) 0:00:00.00',
                        IFINOCTETS       => '0',
                        IFINERRORS       => '0',
                        IFOUTOCTETS      => '0',
                        IFOUTERRORS      => '0',
                    },
                ]
            },
        }
    ],
    'xerox/Phaser_8560DN.13.walk' => [
        {
            MANUFACTURER => 'Xerox',
            TYPE         => 'PRINTER',
            DESCRIPTION  => 'Xerox Phaser 8560DN; OS 7.86, PS 4.1.0, Eng 22.L0.4.1.0, Net 31.92.12.14.2006',
            SNMPHOSTNAME => 'c3111a',
            MAC          => '00:00:AA:AB:96:82',
            MODEL        => 'Phaser 8560DN',
        },
        {
            MANUFACTURER  => 'Xerox',
            TYPE          => 'PRINTER',
            DESCRIPTION   => 'Xerox Phaser 8560DN; OS 7.86, PS 4.1.0, Eng 22.L0.4.1.0, Net 31.92.12.14.2006',
            SNMPHOSTNAME  => 'c3111a',
            MAC           => '00:00:AA:AB:96:82',
            FIRMWARE      => undef,
            MODEL         => 'Phaser 8560DN',
            MODELSNMP     => 'Printer0314',
            SERIAL        => 'FBT164018',
        },
        {
            INFO => {
                MANUFACTURER => 'Xerox',
                TYPE         => 'PRINTER',
                COMMENTS     => 'Xerox Phaser 8560DN; OS 7.86, PS 4.1.0, Eng 22.L0.4.1.0, Net 31.92.12.14.2006',
                ID           => undef,
                SERIAL       => 'FBT164018',
                NAME         => 'c3111a',
                MEMORY       => 0,
                MODEL        => 'Phaser 8560DN',
                IPS          => {
                    IP => [
                        '127.0.0.1',
                        '128.93.22.94',
                    ]
                },
                UPTIME       => '(182596303) 21 days, 3:12:43.03'
            },
            PAGECOUNTERS => {
                BLACK => 'Black Impressions',
                TOTAL => '15725',
            },
            CARTRIDGES => {
                WASTETONER     => 100,
                TONERBLACK     => 100,
                MAINTENANCEKIT => 99,
                TONERMAGENTA   => 100,
                TONERYELLOW    => 100,
                TONERCYAN      => 100
            },
            PORTS => {
                PORT => [
                    {
                        IFNUMBER         => '1',
                        IFNAME           => 'Xerox Phaser 8560 Ethernet Interface, 10/100 Mbps, v31.92.12.14.2006, RJ-45, Ethernet, 100 Mbps, full duplex',
                        IFDESCR          => 'Xerox Phaser 8560 Ethernet Interface, 10/100 Mbps, v31.92.12.14.2006, RJ-45, Ethernet, 100 Mbps, full duplex',
                        IFTYPE           => 'ethernetCsmacd(6)',
                        IFSPEED          => '100000000',
                        IFMTU            => '1500',
                        IP               => '128.93.22.94',
                        MAC              => '00:00:AA:AB:96:82',
                        IFSTATUS         => 'up(1)',
                        IFINTERNALSTATUS => 'up(1)',
                        IFLASTCHANGE     => '(0) 0:00:00.00',
                        IFINOCTETS       => '0',
                        IFINERRORS       => '0',
                        IFOUTOCTETS      => '0',
                        IFOUTERRORS      => '0',
                    },
                    {
                        IFNUMBER         => '2',
                        IFNAME           => 'Xerox Phaser 8560 Ethernet Interface, 10/100 Mbps, v31.92.12.14.2006, RJ-45, Ethernet, 100 Mbps, full duplex',
                        IFDESCR          => 'Xerox Phaser 8560 Ethernet Interface, 10/100 Mbps, v31.92.12.14.2006, RJ-45, Ethernet, 100 Mbps, full duplex',
                        IFTYPE           => 'softwareLoopback(24)',
                        IFSPEED          => '0',
                        IFMTU            => '1536',
                        IP               => '127.0.0.1',
                        MAC              => '00:00:AA:AB:96:82',
                        IFSTATUS         => 'up(1)',
                        IFINTERNALSTATUS => 'up(1)',
                        IFLASTCHANGE     => '(0) 0:00:00.00',
                        IFINOCTETS       => '0',
                        IFINERRORS       => '0',
                        IFOUTOCTETS      => '0',
                        IFOUTERRORS      => '0',
                    },
                ]
            },
        }
    ],
    'xerox/Phaser_8560DN.14.walk' => [
        {
            MANUFACTURER => 'Xerox',
            TYPE         => 'PRINTER',
            DESCRIPTION  => 'Xerox Phaser 8560DN; OS 9.86, PS 4.10.0, Eng 22.L0.4.10.0, Net 37.58.08.31.2009, Adobe PostScript 3016.101 (11), PCL 5c Version 5.0',
            SNMPHOSTNAME => 'c3003a',
            MAC          => '00:00:AA:C4:28:2C',
            MODEL        => 'Phaser 8560DN',
        },
        {
            MANUFACTURER => 'Xerox',
            TYPE         => 'PRINTER',
            DESCRIPTION  => 'Xerox Phaser 8560DN; OS 9.86, PS 4.10.0, Eng 22.L0.4.10.0, Net 37.58.08.31.2009, Adobe PostScript 3016.101 (11), PCL 5c Version 5.0',
            SNMPHOSTNAME => 'c3003a',
            MAC          => '00:00:AA:C4:28:2C',
            MODEL        => 'Phaser 8560DN',
        },
        {
            INFO => {
                ID           => undef,
                MANUFACTURER => 'Xerox',
                TYPE         => 'PRINTER',
                MODEL        => 'Phaser 8560DN',
                UPTIME       => '(80535700) 9 days, 7:42:37.00',
                COMMENTS     => 'Xerox Phaser 8560DN; OS 9.86, PS 4.10.0, Eng 22.L0.4.10.0, Net 37.58.08.31.2009, Adobe PostScript 3016.101 (11), PCL 5c Version 5.0',
                NAME         => 'c3003a',
                IPS          => {
                    IP => [
                        '127.0.0.1',
                        '128.93.22.221',
                    ]
                },
                MEMORY       => 0,
            },
            CARTRIDGES => {
                WASTETONER       => '100',
                MAINTENANCEKIT   => '93',
                CARTRIDGEBLACK   => '100',
                CARTRIDGECYAN    => '100',
                CARTRIDGEMAGENTA => '100',
                CARTRIDGEYELLOW  => '100',
            },
            PAGECOUNTERS => {
                TOTAL => '42500',
            },
            PORTS => {
                PORT => [
                    {
                        IFNUMBER         => '1',
                        IFNAME           => 'Xerox Phaser 8560DN Ethernet Interface, 10/100 Mbps, v37.58.08.31.2009, RJ-45, Ethernet, 100 Mbps, half duplex',
                        IFDESCR          => 'Xerox Phaser 8560DN Ethernet Interface, 10/100 Mbps, v37.58.08.31.2009, RJ-45, Ethernet, 100 Mbps, half duplex',
                        IFTYPE           => 'softwareLoopback(24)',
                        IFSPEED          => '0',
                        IFMTU            => '1536',
                        IP               => '127.0.0.1',
                        MAC              => '00:00:AA:C4:28:2C',
                        IFSTATUS         => 'up(1)',
                        IFINTERNALSTATUS => 'up(1)',
                        IFLASTCHANGE     => '(0) 0:00:00.00',
                        IFINOCTETS       => '0',
                        IFINERRORS       => '0',
                        IFOUTOCTETS      => '0',
                        IFOUTERRORS      => '0',
                    },
                    {
                        IFNUMBER         => '2',
                        IFNAME           => 'Xerox Phaser 8560DN Ethernet Interface, 10/100 Mbps, v37.58.08.31.2009, RJ-45, Ethernet, 100 Mbps, half duplex',
                        IFDESCR          => 'Xerox Phaser 8560DN Ethernet Interface, 10/100 Mbps, v37.58.08.31.2009, RJ-45, Ethernet, 100 Mbps, half duplex',
                        IFTYPE           => 'ethernetCsmacd(6)',
                        IFSPEED          => '100000000',
                        IFMTU            => '1500',
                        IP               => '128.93.22.221',
                        MAC              => '00:00:AA:C4:28:2C',
                        IFSTATUS         => 'up(1)',
                        IFINTERNALSTATUS => 'up(1)',
                        IFLASTCHANGE     => '(0) 0:00:00.00',
                        IFINOCTETS       => '0',
                        IFINERRORS       => '0',
                        IFOUTOCTETS      => '0',
                        IFOUTERRORS      => '0',
                    },
                ]
            },
        }
    ],
    'xerox/Phaser_8560DP.01.walk' => [
        {
            MANUFACTURER => 'Xerox',
            TYPE         => 'PRINTER',
            DESCRIPTION  => 'Xerox Phaser 8550DP;PS 3.11.0,Net 24.38.04.28.2005,Eng 18.P1.3.11.0,OS 4.278',
            SNMPHOSTNAME => 'c1A110a-1',
            MAC          => '00:00:AA:95:17:A7',
            MODEL        => 'Phaser 8560DP',
        },
        {
            MANUFACTURER => 'Xerox',
            TYPE         => 'PRINTER',
            DESCRIPTION  => 'Xerox Phaser 8550DP;PS 3.11.0,Net 24.38.04.28.2005,Eng 18.P1.3.11.0,OS 4.278',
            SNMPHOSTNAME => 'c1A110a-1',
            MAC          => '00:00:AA:95:17:A7',
            MODEL        => 'Phaser 8560DP',
            FIRMWARE     => undef,
            SERIAL       => 'WYP050086',
            MODELSNMP    => 'Printer0451'
        },
        {
            INFO => {
                ID           => undef,
                MANUFACTURER => 'Xerox',
                TYPE         => 'PRINTER',
                COMMENTS     => 'Xerox Phaser 8550DP;PS 3.11.0,Net 24.38.04.28.2005,Eng 18.P1.3.11.0,OS 4.278',
                NAME         => 'c1A110a-1',
                MODEL        => 'Phaser 8560DP',
                SERIAL       => 'WYP050086',
                MEMORY       => 0,
                IPS          => {
                    IP => [
                        '127.0.0.1',
                        '128.93.22.95',
                    ]
                },
                UPTIME       => '(339691530) 39 days, 7:35:15.30'
            },
            PAGECOUNTERS => {
                BLACK => 'Black Impressions',
                TOTAL => '68621',
            },
            CARTRIDGES => {
                WASTETONER       => '100',
                MAINTENANCEKIT   => '100',
                CARTRIDGEBLACK   => '100',
                CARTRIDGECYAN    => '100',
                CARTRIDGEMAGENTA => '100',
                CARTRIDGEYELLOW  => '100',
            },
            PORTS => {
                PORT => [
                    {
                        IFNUMBER         => '1',
                        IFNAME           => 'Xerox Phaser 8550 Ethernet Interface, 10/100 Mbps, v(3.11.0/24.38.04.28.2005/18.P1.3.11.0/4.278), RJ-45, Ethernet, 100 Mbps, full duplex',
                        IFDESCR          => 'Xerox Phaser 8550 Ethernet Interface, 10/100 Mbps, v(3.11.0/24.38.04.28.2005/18.P1.3.11.0/4.278), RJ-45, Ethernet, 100 Mbps, full duplex',
                        IFTYPE           => 'ethernetCsmacd(6)',
                        IFSPEED          => '100000000',
                        IFMTU            => '1500',
                        IP               => '128.93.22.95',
                        MAC              => '00:00:AA:95:17:A7',
                        IFSTATUS         => 'up(1)',
                        IFINTERNALSTATUS => 'up(1)',
                        IFLASTCHANGE     => '(0) 0:00:00.00',
                        IFINOCTETS       => '0',
                        IFINERRORS       => '0',
                        IFOUTOCTETS      => '0',
                        IFOUTERRORS      => '0',
                    },
                    {
                        IFNUMBER         => '2',
                        IFNAME           => 'Xerox Phaser 8550 Ethernet Interface, 10/100 Mbps, v(3.11.0/24.38.04.28.2005/18.P1.3.11.0/4.278), RJ-45, Ethernet, 100 Mbps, full duplex',
                        IFDESCR          => 'Xerox Phaser 8550 Ethernet Interface, 10/100 Mbps, v(3.11.0/24.38.04.28.2005/18.P1.3.11.0/4.278), RJ-45, Ethernet, 100 Mbps, full duplex',
                        IFTYPE           => 'softwareLoopback(24)',
                        IFSPEED          => '0',
                        IFMTU            => '32768',
                        IP               => '127.0.0.1',
                        MAC              => '00:00:AA:95:17:A7',
                        IFSTATUS         => 'up(1)',
                        IFINTERNALSTATUS => 'up(1)',
                        IFLASTCHANGE     => '(0) 0:00:00.00',
                        IFINOCTETS       => '4294967295',
                        IFINERRORS       => '0',
                        IFOUTOCTETS      => '4294967295',
                        IFOUTERRORS      => '0',
                    },
                ]
            },
        }
    ],
    'xerox/Phaser_8560DP.02.walk' => [
        {
            MANUFACTURER => 'Xerox',
            TYPE         => 'PRINTER',
            DESCRIPTION  => 'Xerox Phaser 8550DP;PS 3.11.0,Net 24.38.04.28.2005,Eng 18.P1.3.11.0,OS 4.278',
            SNMPHOSTNAME => 'c2009a',
            MAC          => '00:00:AA:95:16:50',
            MODEL        => 'Phaser 8560DP',
        },
        {
            MANUFACTURER => 'Xerox',
            TYPE         => 'PRINTER',
            DESCRIPTION  => 'Xerox Phaser 8550DP;PS 3.11.0,Net 24.38.04.28.2005,Eng 18.P1.3.11.0,OS 4.278',
            SNMPHOSTNAME => 'c2009a',
            MAC          => '00:00:AA:95:16:50',
            MODEL        => 'Phaser 8560DP',
            MODELSNMP    => 'Printer0451',
            SERIAL       => 'WYP050250',
            FIRMWARE     => undef,
        },
        {
            INFO => {
                COMMENTS     => 'Xerox Phaser 8550DP;PS 3.11.0,Net 24.38.04.28.2005,Eng 18.P1.3.11.0,OS 4.278',
                MODEL        => 'Phaser 8560DP',
                SERIAL       => 'WYP050250',
                NAME         => 'c2009a',
                MEMORY       => 0,
                ID           => undef,
                MANUFACTURER => 'Xerox',
                TYPE         => 'PRINTER',
                IPS          => {
                    IP => [
                        '127.0.0.1',
                        '128.93.22.40',
                    ]
                },
                UPTIME       => '(284944040) 32 days, 23:30:40.40'
            },
            PAGECOUNTERS => {
                BLACK => 'Black Impressions',
                TOTAL => '140861',
            },
            CARTRIDGES => {
                WASTETONER       => '100',
                MAINTENANCEKIT   => '100',
                CARTRIDGEBLACK   => '100',
                CARTRIDGECYAN    => '100',
                CARTRIDGEMAGENTA => '100',
                CARTRIDGEYELLOW  => '100',
            },
            PORTS => {
                PORT => [
                    {
                        IFNUMBER         => '1',
                        IFNAME           => 'Xerox Phaser 8550 Ethernet Interface, 10/100 Mbps, v(3.11.0/24.38.04.28.2005/18.P1.3.11.0/4.278), RJ-45, Ethernet, 100 Mbps, full duplex',
                        IFDESCR          => 'Xerox Phaser 8550 Ethernet Interface, 10/100 Mbps, v(3.11.0/24.38.04.28.2005/18.P1.3.11.0/4.278), RJ-45, Ethernet, 100 Mbps, full duplex',
                        IFTYPE           => 'ethernetCsmacd(6)',
                        IFSPEED          => '100000000',
                        IFMTU            => '1500',
                        IP               => '128.93.22.40',
                        MAC              => '00:00:AA:95:16:50',
                        IFSTATUS         => 'up(1)',
                        IFINTERNALSTATUS => 'up(1)',
                        IFLASTCHANGE     => '(0) 0:00:00.00',
                        IFINOCTETS       => '0',
                        IFINERRORS       => '0',
                        IFOUTOCTETS      => '0',
                        IFOUTERRORS      => '0',
                    },
                    {
                        IFNUMBER         => '2',
                        IFNAME           => 'Xerox Phaser 8550 Ethernet Interface, 10/100 Mbps, v(3.11.0/24.38.04.28.2005/18.P1.3.11.0/4.278), RJ-45, Ethernet, 100 Mbps, full duplex',
                        IFDESCR          => 'Xerox Phaser 8550 Ethernet Interface, 10/100 Mbps, v(3.11.0/24.38.04.28.2005/18.P1.3.11.0/4.278), RJ-45, Ethernet, 100 Mbps, full duplex',
                        IFTYPE           => 'softwareLoopback(24)',
                        IFSPEED          => '0',
                        IFMTU            => '32768',
                        IP               => '127.0.0.1',
                        MAC              => '00:00:AA:95:16:50',
                        IFSTATUS         => 'up(1)',
                        IFINTERNALSTATUS => 'up(1)',
                        IFLASTCHANGE     => '(0) 0:00:00.00',
                        IFINOCTETS       => '4294967295',
                        IFINERRORS       => '0',
                        IFOUTOCTETS      => '4294967295',
                        IFOUTERRORS      => '0',
                    },
                ]
            },
        }
    ],
    'xerox/Phaser_8560DP.03.walk' => [
        {
            MANUFACTURER => 'Xerox',
            TYPE         => 'PRINTER',
            DESCRIPTION  => 'Xerox Phaser 8550DP;PS 3.11.0,Net 24.38.04.28.2005,Eng 18.P1.3.11.0,OS 4.278',
            SNMPHOSTNAME => 'Phaser 8550DP',
            MAC          => '00:00:AA:95:17:A8',
            MODEL        => 'Phaser 8560DP',
        },
        {
            MANUFACTURER => 'Xerox',
            TYPE         => 'PRINTER',
            DESCRIPTION  => 'Xerox Phaser 8550DP;PS 3.11.0,Net 24.38.04.28.2005,Eng 18.P1.3.11.0,OS 4.278',
            MODELSNMP    => 'Printer0451',
            SNMPHOSTNAME => 'Phaser 8550DP',
            SERIAL       => 'WYP050085',
            FIRMWARE     => undef,
            MAC          => '00:00:AA:95:17:A8',
            MODEL        => 'Phaser 8560DP',
        },
        {
            INFO => {
                ID           => undef,
                MANUFACTURER => 'Xerox',
                TYPE         => 'PRINTER',
                COMMENTS     => 'Xerox Phaser 8550DP;PS 3.11.0,Net 24.38.04.28.2005,Eng 18.P1.3.11.0,OS 4.278',
                NAME         => 'Phaser 8550DP',
                MEMORY       => 0,
                SERIAL       => 'WYP050085',
                MODEL        => 'Phaser 8560DP',
                IPS          => {
                    IP => [
                        '127.0.0.1',
                        '128.93.22.54',
                    ]
                },
                UPTIME       => '(543157724) 62 days, 20:46:17.24',
            },
            PAGECOUNTERS => {
                BLACK => 'Black Impressions',
                TOTAL => '36147',
            },
            CARTRIDGES => {
                WASTETONER       => '100',
                MAINTENANCEKIT   => '100',
                CARTRIDGEBLACK   => '100',
                CARTRIDGECYAN    => '100',
                CARTRIDGEMAGENTA => '100',
                CARTRIDGEYELLOW  => '100',
            },
            PORTS => {
                PORT => [
                    {
                        IFNUMBER         => '1',
                        IFNAME           => 'Xerox Phaser 8550 Ethernet Interface, 10/100 Mbps, v(3.11.0/24.38.04.28.2005/18.P1.3.11.0/4.278), RJ-45, Ethernet, 100 Mbps, full duplex',
                        IFDESCR          => 'Xerox Phaser 8550 Ethernet Interface, 10/100 Mbps, v(3.11.0/24.38.04.28.2005/18.P1.3.11.0/4.278), RJ-45, Ethernet, 100 Mbps, full duplex',
                        IFTYPE           => 'ethernetCsmacd(6)',
                        IFSPEED          => '100000000',
                        IFMTU            => '1500',
                        IP               => '128.93.22.54',
                        MAC              => '00:00:AA:95:17:A8',
                        IFSTATUS         => 'up(1)',
                        IFINTERNALSTATUS => 'up(1)',
                        IFLASTCHANGE     => '(0) 0:00:00.00',
                        IFINOCTETS       => '0',
                        IFINERRORS       => '0',
                        IFOUTOCTETS      => '0',
                        IFOUTERRORS      => '0',
                    },
                    {
                        IFNUMBER         => '2',
                        IFNAME           => 'Xerox Phaser 8550 Ethernet Interface, 10/100 Mbps, v(3.11.0/24.38.04.28.2005/18.P1.3.11.0/4.278), RJ-45, Ethernet, 100 Mbps, full duplex',
                        IFDESCR          => 'Xerox Phaser 8550 Ethernet Interface, 10/100 Mbps, v(3.11.0/24.38.04.28.2005/18.P1.3.11.0/4.278), RJ-45, Ethernet, 100 Mbps, full duplex',
                        IFTYPE           => 'softwareLoopback(24)',
                        IFSPEED          => '0',
                        IFMTU            => '32768',
                        IP               => '127.0.0.1',
                        MAC              => '00:00:AA:95:17:A8',
                        IFSTATUS         => 'up(1)',
                        IFINTERNALSTATUS => 'up(1)',
                        IFLASTCHANGE     => '(0) 0:00:00.00',
                        IFINOCTETS       => '4294967295',
                        IFINERRORS       => '0',
                        IFOUTOCTETS      => '4294967295',
                        IFOUTERRORS      => '0',
                    },
                ]
            },
        }
    ],
    'xerox/Phaser_8560DP.04.walk' => [
        {
            MANUFACTURER => 'Xerox',
            TYPE         => 'PRINTER',
            DESCRIPTION  => 'Xerox Phaser 8550DP;PS 3.11.0,Net 24.38.04.28.2005,Eng 18.P1.3.11.0,OS 4.278',
            SNMPHOSTNAME => 'c2700a',
            MAC          => '00:00:AA:95:15:B8',
            MODEL        => 'Phaser 8560DP',
        },
        {
            MANUFACTURER => 'Xerox',
            TYPE         => 'PRINTER',
            DESCRIPTION  => 'Xerox Phaser 8550DP;PS 3.11.0,Net 24.38.04.28.2005,Eng 18.P1.3.11.0,OS 4.278',
            SERIAL       => 'WYP050251',
            SNMPHOSTNAME => 'c2700a',
            MODELSNMP    => 'Printer0451',
            MAC          => '00:00:AA:95:15:B8',
            MODEL        => 'Phaser 8560DP',
            FIRMWARE     => undef
        },
        {
            INFO => {
                ID           => undef,
                MANUFACTURER => 'Xerox',
                TYPE         => 'PRINTER',
                COMMENTS     => 'Xerox Phaser 8550DP;PS 3.11.0,Net 24.38.04.28.2005,Eng 18.P1.3.11.0,OS 4.278',
                MODEL        => 'Phaser 8560DP',
                MEMORY       => 0,
                NAME         => 'c2700a',
                SERIAL       => 'WYP050251',
                IPS          => {
                    IP => [
                        '127.0.0.1',
                        '128.93.22.207',
                    ]
                },
                UPTIME       => '(543164034) 62 days, 20:47:20.34',
            },
            CARTRIDGES => {
                WASTETONER      => '100',
                MAINTENANCEKIT  => '100',
                CARTRIDGEBLACK   => '100',
                CARTRIDGECYAN    => '100',
                CARTRIDGEMAGENTA => '100',
                CARTRIDGEYELLOW  => '100',
            },
            PAGECOUNTERS => {
                BLACK => 'Black Impressions',
                TOTAL => '138980',
            },
            PORTS => {
                PORT => [
                    {
                        IFNUMBER         => '1',
                        IFNAME           => 'Xerox Phaser 8550 Ethernet Interface, 10/100 Mbps, v(3.11.0/24.38.04.28.2005/18.P1.3.11.0/4.278), RJ-45, Ethernet, 100 Mbps, full duplex',
                        IFDESCR          => 'Xerox Phaser 8550 Ethernet Interface, 10/100 Mbps, v(3.11.0/24.38.04.28.2005/18.P1.3.11.0/4.278), RJ-45, Ethernet, 100 Mbps, full duplex',
                        IFTYPE           => 'ethernetCsmacd(6)',
                        IFSPEED          => '100000000',
                        IFMTU            => '1500',
                        IP               => '128.93.22.207',
                        MAC              => '00:00:AA:95:15:B8',
                        IFSTATUS         => 'up(1)',
                        IFINTERNALSTATUS => 'up(1)',
                        IFLASTCHANGE     => '(0) 0:00:00.00',
                        IFINOCTETS       => '0',
                        IFINERRORS       => '0',
                        IFOUTOCTETS      => '0',
                        IFOUTERRORS      => '0',
                    },
                    {
                        IFNUMBER         => '2',
                        IFNAME           => 'Xerox Phaser 8550 Ethernet Interface, 10/100 Mbps, v(3.11.0/24.38.04.28.2005/18.P1.3.11.0/4.278), RJ-45, Ethernet, 100 Mbps, full duplex',
                        IFDESCR          => 'Xerox Phaser 8550 Ethernet Interface, 10/100 Mbps, v(3.11.0/24.38.04.28.2005/18.P1.3.11.0/4.278), RJ-45, Ethernet, 100 Mbps, full duplex',
                        IFTYPE           => 'softwareLoopback(24)',
                        IFSPEED          => '0',
                        IFMTU            => '32768',
                        IP               => '127.0.0.1',
                        MAC              => '00:00:AA:95:15:B8',
                        IFSTATUS         => 'up(1)',
                        IFINTERNALSTATUS => 'up(1)',
                        IFLASTCHANGE     => '(0) 0:00:00.00',
                        IFINOCTETS       => '4294967295',
                        IFINERRORS       => '0',
                        IFOUTOCTETS      => '4294967295',
                        IFOUTERRORS      => '0',
                    },
                ]
            },
        }
    ],
    'xerox/Phaser_8560DT.01.walk' => [
        {
            MANUFACTURER => 'Xerox',
            TYPE         => 'PRINTER',
            DESCRIPTION  => 'Xerox Phaser 8560DT; OS 9.82, PS 4.7.0, Eng 22.L0.4.7.0, Net 37.54.03.02.2008, Adobe PostScript 3016.101 (11), PCL 5c Version 5.0',
            SNMPHOSTNAME => 'ciT400a',
            MAC          => '00:00:AA:D2:C5:EB',
            MODEL        => 'Phaser 8560DT',
        },
        {
            MANUFACTURER => 'Xerox',
            TYPE         => 'PRINTER',
            DESCRIPTION  => 'Xerox Phaser 8560DT; OS 9.82, PS 4.7.0, Eng 22.L0.4.7.0, Net 37.54.03.02.2008, Adobe PostScript 3016.101 (11), PCL 5c Version 5.0',
            SNMPHOSTNAME => 'ciT400a',
            MAC          => '00:00:AA:D2:C5:EB',
            MODEL        => 'Phaser 8560DT',
        },
        {
            INFO => {
                MANUFACTURER => 'Xerox',
                TYPE         => 'PRINTER',
                MODEL        => 'Phaser 8560DT',
                ID           => undef,
                UPTIME       => '(132190381) 15 days, 7:11:43.81',
                COMMENTS     => 'Xerox Phaser 8560DT; OS 9.82, PS 4.7.0, Eng 22.L0.4.7.0, Net 37.54.03.02.2008, Adobe PostScript 3016.101 (11), PCL 5c Version 5.0',
                NAME         => 'ciT400a',
                IPS          => {
                    IP => [
                        '127.0.0.1',
                        '128.93.22.240',
                    ]
                },
                MEMORY       => 0,
            },
            CARTRIDGES => {
                WASTETONER       => '100',
                MAINTENANCEKIT   => '56',
                CARTRIDGEBLACK   => '100',
                CARTRIDGECYAN    => '100',
                CARTRIDGEMAGENTA => '100',
                CARTRIDGEYELLOW  => '100',
            },
            PAGECOUNTERS => {
                TOTAL => '17310',
            },
            PORTS => {
                PORT => [
                    {
                        IFNUMBER         => '1',
                        IFNAME           => 'Xerox Phaser 8560DT Ethernet Interface, 10/100 Mbps, v37.54.03.02.2008, RJ-45, Ethernet, 100 Mbps, full duplex',
                        IFDESCR          => 'Xerox Phaser 8560DT Ethernet Interface, 10/100 Mbps, v37.54.03.02.2008, RJ-45, Ethernet, 100 Mbps, full duplex',
                        IFTYPE           => 'softwareLoopback(24)',
                        IFSPEED          => '0',
                        IFMTU            => '1536',
                        IP               => '127.0.0.1',
                        MAC              => '00:00:AA:D2:C5:EB',
                        IFSTATUS         => 'up(1)',
                        IFINTERNALSTATUS => 'up(1)',
                        IFLASTCHANGE     => '(0) 0:00:00.00',
                        IFINOCTETS       => '0',
                        IFINERRORS       => '0',
                        IFOUTOCTETS      => '0',
                        IFOUTERRORS      => '0',
                    },
                    {
                        IFNUMBER         => '2',
                        IFNAME           => 'Xerox Phaser 8560DT Ethernet Interface, 10/100 Mbps, v37.54.03.02.2008, RJ-45, Ethernet, 100 Mbps, full duplex',
                        IFDESCR          => 'Xerox Phaser 8560DT Ethernet Interface, 10/100 Mbps, v37.54.03.02.2008, RJ-45, Ethernet, 100 Mbps, full duplex',
                        IFTYPE           => 'ethernetCsmacd(6)',
                        IFSPEED          => '100000000',
                        IFMTU            => '1500',
                        IP               => '128.93.22.240',
                        MAC              => '00:00:AA:D2:C5:EB',
                        IFSTATUS         => 'up(1)',
                        IFINTERNALSTATUS => 'up(1)',
                        IFLASTCHANGE     => '(0) 0:00:00.00',
                        IFINOCTETS       => '0',
                        IFINERRORS       => '0',
                        IFOUTOCTETS      => '0',
                        IFOUTERRORS      => '0',
                    },
                ]
            },
        }
    ],
    'xerox/WorkCentre_5632.01.walk' => [
        {
            MANUFACTURER => 'Xerox',
            TYPE         => 'PRINTER',
            DESCRIPTION  => 'Xerox WorkCentre 5632 v1 Multifunction System; System Software 025.054.055.00060, ESS 061.060.03400',
            SNMPHOSTNAME => 'SO007XN',
            MAC          => '00:00:AA:CF:9E:5A',
            MODEL        => 'WorkCentre 5632 v1',
        },
        {
            MANUFACTURER => 'Xerox',
            TYPE         => 'PRINTER',
            DESCRIPTION  => 'Xerox WorkCentre 5632 v1 Multifunction System; System Software 025.054.055.00060, ESS 061.060.03400',
            SNMPHOSTNAME => 'SO007XN',
            MAC          => '00:00:AA:CF:9E:5A',
            MODEL        => 'WorkCentre 5632 v1',
            MODELSNMP    => 'Printer0705',
            FIRMWARE     => undef,
            SERIAL       => '3641509891',
        },
        {
            INFO => {
                MANUFACTURER => 'Xerox',
                TYPE         => 'PRINTER',
                COMMENTS     => 'Xerox WorkCentre 5632 v1 Multifunction System; System Software 025.054.055.00060, ESS 061.060.03400',
                MODEL        => 'WorkCentre 5632 v1',
                MEMORY       => 0,
                ID           => undef,
                CONTACT      => 'System Administrator name not set; System Administrator phone number not set; System Administrator location not set; Device Administrator name not set; Device Administrator phone number not set; Device Administrator location not set; company URL not set',
                LOCATION     => 'machine location not set',
                NAME         => 'SO007XN',
                SERIAL       => '3641509891',
                IPS          => {
                    IP => [
                        '127.0.0.1',
                        '129.181.20.136',
                    ]
                },
                UPTIME       => '(36879516) 4 days, 6:26:35.16'
            },
            CARTRIDGES => {
                TONERBLACK => 45,
                WASTETONER => '100',
            },
            PAGECOUNTERS => {
                TOTAL => '127638'
            },
            PORTS => {
                PORT => [
                    {
                        IFNUMBER         => '1',
                        IFNAME           => 'Xerox Embedded Ethernet Controller, 10/100/1000 Mbps, v1.0, RJ45, 100 Mbps full duplex',
                        IFDESCR          => 'Xerox Embedded Ethernet Controller, 10/100/1000 Mbps, v1.0, RJ45, 100 Mbps full duplex',
                        IFTYPE           => '6',
                        IFSPEED          => '100000000',
                        IFMTU            => '1500',
                        IP               => '129.181.20.136',
                        MAC              => '00:00:AA:CF:9E:5A',
                        IFSTATUS         => '1',
                        IFINTERNALSTATUS => '1',
                        IFLASTCHANGE     => '(0) 0:00:00.00',
                        IFINOCTETS       => '174621423',
                        IFINERRORS       => '0',
                        IFOUTOCTETS      => '15497831',
                        IFOUTERRORS      => '0',
                    },
                    {
                        IFNUMBER         => '2',
                        IFNAME           => 'Xerox internal TCP Software Loopback Interface, v2.0',
                        IFDESCR          => 'Xerox internal TCP Software Loopback Interface, v2.0',
                        IFTYPE           => '24',
                        IFMTU            => '16436',
                        IP               => '127.0.0.1',
                        MAC              => '00:00:00:00:00:00',
                        IFSTATUS         => '1',
                        IFINTERNALSTATUS => '1',
                        IFLASTCHANGE     => '(0) 0:00:00.00',
                        IFINOCTETS       => '21653217',
                        IFINERRORS       => '0',
                        IFOUTOCTETS      => '21653217',
                        IFOUTERRORS      => '0',
                    },
                ]
            },
        }
    ],
    'xerox/WorkCentre_5632.02.walk' => [
        {
            MANUFACTURER => 'Xerox',
            TYPE         => 'PRINTER',
            DESCRIPTION  => 'Xerox WorkCentre 5632 v1 Multifunction System; System Software 025.054.055.00060, ESS 061.060.03400',
            SNMPHOSTNAME => 'SO011XN',
            MAC          => '00:00:AA:CF:84:10',
            MODEL        => 'WorkCentre 5632 v1',
        },
        {
            MANUFACTURER => 'Xerox',
            TYPE         => 'PRINTER',
            DESCRIPTION  => 'Xerox WorkCentre 5632 v1 Multifunction System; System Software 025.054.055.00060, ESS 061.060.03400',
            SNMPHOSTNAME => 'SO011XN',
            MAC          => '00:00:AA:CF:84:10',
            MODEL        => 'WorkCentre 5632 v1',
            MODELSNMP    => 'Printer0705',
            FIRMWARE     => undef,
            SERIAL       => '3641504792',
        },
        {
            INFO => {
                MANUFACTURER => 'Xerox',
                TYPE         => 'PRINTER',
                COMMENTS     => 'Xerox WorkCentre 5632 v1 Multifunction System; System Software 025.054.055.00060, ESS 061.060.03400',
                LOCATION     => 'machine location not set',
                NAME         => 'SO011XN',
                CONTACT      => 'System Administrator name not set; System Administrator phone number not set; System Administrator location not set; Device Administrator name not set; Device Administrator phone number not set; Device Administrator location not set; company URL not set',
                MODEL        => 'WorkCentre 5632 v1',
                SERIAL       => '3641504792',
                MEMORY       => 0,
                ID           => undef,
                IPS          => {
                    IP => [
                        '127.0.0.1',
                        '129.181.20.135',
                    ]
                },
                UPTIME       => '(717880872) 83 days, 2:06:48.72'
            },
            CARTRIDGES => {
                TONERBLACK => 90,
                WASTETONER => '100',
            },
            PAGECOUNTERS => {
                TOTAL => '72513'
            },
            PORTS => {
                PORT => [
                    {
                        IFNUMBER         => '1',
                        IFNAME           => 'Xerox Embedded Ethernet Controller, 10/100/1000 Mbps, v1.0, RJ45, 100 Mbps full duplex',
                        IFDESCR          => 'Xerox Embedded Ethernet Controller, 10/100/1000 Mbps, v1.0, RJ45, 100 Mbps full duplex',
                        IFTYPE           => '6',
                        IFSPEED          => '100000000',
                        IFMTU            => '1500',
                        IP               => '129.181.20.135',
                        MAC              => '00:00:AA:CF:84:10',
                        IFSTATUS         => '1',
                        IFINTERNALSTATUS => '1',
                        IFLASTCHANGE     => '(0) 0:00:00.00',
                        IFINOCTETS       => '3111470450',
                        IFINERRORS       => '5',
                        IFOUTOCTETS      => '279825127',
                        IFOUTERRORS      => '0',
                    },
                    {
                        IFNUMBER         => '2',
                        IFNAME           => 'Xerox internal TCP Software Loopback Interface, v2.0',
                        IFDESCR          => 'Xerox internal TCP Software Loopback Interface, v2.0',
                        IFTYPE           => '24',
                        IFMTU            => '16436',
                        IP               => '127.0.0.1',
                        MAC              => '00:00:00:00:00:00',
                        IFSTATUS         => '1',
                        IFINTERNALSTATUS => '1',
                        IFLASTCHANGE     => '(0) 0:00:00.00',
                        IFINOCTETS       => '200465217',
                        IFINERRORS       => '0',
                        IFOUTOCTETS      => '200465217',
                        IFOUTERRORS      => '0',
                    },
                ]
            },
        }
    ],
    'xerox/WorkCentre_7125.01.walk' => [
        {
            MANUFACTURER => 'Xerox',
            TYPE         => 'PRINTER',
            DESCRIPTION  => 'Xerox WorkCentre 7125;System 71.21.21,ESS1.210.4,IOT 5.12.0,FIN A15.2.0,ADF 11.0.1,SJFI3.0.16,SSMI1.14.1',
            SNMPHOSTNAME => 'XEROX WorkCentre 7125',
            MAC          => '08:00:37:B9:16:5D',
            MODEL        => 'WorkCentre 7125',
        },
        {
            MANUFACTURER  => 'Xerox',
            TYPE          => 'PRINTER',
            DESCRIPTION   => 'Xerox WorkCentre 7125;System 71.21.21,ESS1.210.4,IOT 5.12.0,FIN A15.2.0,ADF 11.0.1,SJFI3.0.16,SSMI1.14.1',
            SNMPHOSTNAME  => 'XEROX WorkCentre 7125',
            MAC           => '08:00:37:B9:16:5D',
            MODEL        => 'WorkCentre 7125',
            MODELSNMP     => 'Printer0690',
            FIRMWARE      => undef,
            SERIAL        => '3325295030',
        },
        {
            INFO         => {
                MANUFACTURER => 'Xerox',
                TYPE         => 'PRINTER',
                COMMENTS     => 'Xerox WorkCentre 7125;System 71.21.21,ESS1.210.4,IOT 5.12.0,FIN A15.2.0,ADF 11.0.1,SJFI3.0.16,SSMI1.14.1',
                SERIAL       => '3325295030',
                ID           => undef,
                MODEL        => 'WorkCentre 7125',
                MEMORY       => 2,
                NAME         => 'XEROX WorkCentre 7125',
                IPS          => {
                    IP => [
                        '127.0.0.1',
                        '172.16.3.54',
                    ],
                },
                UPTIME       => '(9495100) 1 day, 2:22:31.00'
            },
            PAGECOUNTERS => {
                COLOR      => '6964',
                PRINTBLACK => '3251',
                PRINTTOTAL => '13755',
                BLACK      => '4086',
                COPYCOLOR  => '1394',
                PRINTCOLOR => '6964',
                COPYBLACK  => '1311',
                TOTAL      => '13755'
            },
            CARTRIDGES => {
                DRUMBLACK    => '79',
                DRUMCYAN     => '83',
                DRUMMAGENTA  => '83',
                DRUMYELLOW   => '83',
                TONERBLACK   => '31',
                TONERCYAN    => '48',
                TONERMAGENTA => '58',
                TONERYELLOW  => '45',
                WASTETONER   => '100',
            },
            PORTS => {
                PORT => [
                    {
                        IFNUMBER         => '1',
                        IFNAME           => 'Xerox Embedded Ethernet Controller, 10/100 Mbps, v1.0, RJ45, auto',
                        IFDESCR          => 'Xerox Embedded Ethernet Controller, 10/100 Mbps, v1.0, RJ45, auto',
                        IFTYPE           => 'iso88023Csmacd(7)',
                        IFSPEED          => '100000000',
                        IFMTU            => '1518',
                        IP               => '172.16.3.54',
                        MAC              => '08:00:37:B9:16:5D',
                        IFSTATUS         => 'up(1)',
                        IFINTERNALSTATUS => 'up(1)',
                        IFLASTCHANGE     => '(0) 0:00:00.00',
                        IFINOCTETS       => '0',
                        IFINERRORS       => '0',
                        IFOUTOCTETS      => '0',
                        IFOUTERRORS      => '0',
                    },
                    {
                        IFNUMBER         => '2',
                        IFNAME           => 'Xerox USB-1 - Network Interface',
                        IFDESCR          => 'Xerox USB-1 - Network Interface',
                        IFTYPE           => 'usb(160)',
                        IFSPEED          => '480000000',
                        IFMTU            => '0',
                        IFSTATUS         => 'up(1)',
                        IFINTERNALSTATUS => 'up(1)',
                        IFLASTCHANGE     => '(0) 0:00:00.00',
                        IFINOCTETS       => '0',
                        IFINERRORS       => '0',
                        IFOUTOCTETS      => '0',
                        IFOUTERRORS      => '0',
                    },
                    {
                        IFNUMBER         => '3',
                        IFNAME           => 'Xerox Internal TCP Software Loopback Interface',
                        IFDESCR          => 'Xerox Internal TCP Software Loopback Interface',
                        IFTYPE           => 'softwareLoopback(24)',
                        IFSPEED          => '10000000',
                        IFMTU            => '4096',
                        IP               => '127.0.0.1',
                        IFSTATUS         => 'up(1)',
                        IFINTERNALSTATUS => 'up(1)',
                        IFLASTCHANGE     => '(0) 0:00:00.00',
                        IFINOCTETS       => '0',
                        IFINERRORS       => '0',
                        IFOUTOCTETS      => '0',
                        IFOUTERRORS      => '0',
                    },
                ]
            },
        }
    ],
    'xerox/WorkCentre_7435.01.walk' => [
        {
            MANUFACTURER => 'Xerox',
            TYPE         => 'PRINTER',
            DESCRIPTION  => 'Xerox WorkCentre 7435;System 75.3.1,ESS PS1.222.18,IOT 41.1.0,FIN B13.8.0,IIT 22.13.1,ADF 20.0.0,SJFI3.0.12,SSMI1.11.1',
            SNMPHOSTNAME => 'WorkCentre 7435',
            MAC          => '08:00:37:9B:8F:CA',
            MODEL        => 'WorkCentre 7435',
        },
        {
            MANUFACTURER => 'Xerox',
            TYPE         => 'PRINTER',
            DESCRIPTION  => 'Xerox WorkCentre 7435;System 75.3.1,ESS PS1.222.18,IOT 41.1.0,FIN B13.8.0,IIT 22.13.1,ADF 20.0.0,SJFI3.0.12,SSMI1.11.1',
            SNMPHOSTNAME => 'WorkCentre 7435',
            MAC          => '08:00:37:9B:8F:CA',
            MODEL        => 'WorkCentre 7435',
        },
        {
            INFO => {
                MANUFACTURER => 'Xerox',
                TYPE         => 'PRINTER',
                ID           => undef,
                MODEL        => 'WorkCentre 7435',
                COMMENTS     => 'Xerox WorkCentre 7435;System 75.3.1,ESS PS1.222.18,IOT 41.1.0,FIN B13.8.0,IIT 22.13.1,ADF 20.0.0,SJFI3.0.12,SSMI1.11.1',
                NAME         => 'WorkCentre 7435',
            },
            CARTRIDGES => {
                DRUMBLACK    => '90',
                DRUMCYAN     => '90',
                DRUMMAGENTA  => '91',
                DRUMYELLOW   => '91',
                TONERBLACK   => '33',
                TONERCYAN    => '62',
                TONERMAGENTA => '76',
                TONERYELLOW  => '74',
                WASTETONER   => '100',
            },
            PAGECOUNTERS => {
                TOTAL => '125346'
            },
            PORTS => {
                PORT => [
                    {
                        IFNUMBER         => '1',
                        IFNAME           => 'Xerox Embedded Ethernet Controller, 10/100 Mbps, v1.0, RJ45, auto',
                        IFDESCR          => 'Xerox Embedded Ethernet Controller, 10/100 Mbps, v1.0, RJ45, auto',
                        IFTYPE           => 'iso88023Csmacd(7)',
                        IFSPEED          => '100000000',
                        IFMTU            => '1518',
                        MAC              => '08:00:37:9B:8F:CA',
                        IFLASTCHANGE     => '(0) 0:00:00.00',
                        IFINOCTETS       => '0',
                        IFINERRORS       => '0',
                        IFOUTOCTETS      => '0',
                        IFOUTERRORS      => '0',
                    },
                    {
                        IFNUMBER         => '2',
                        IFNAME           => 'Xerox USB-1 - Network Interface',
                        IFDESCR          => 'Xerox USB-1 - Network Interface',
                        IFTYPE           => 'usb(160)',
                        IFSPEED          => '12000000',
                        IFMTU            => '0',
                        IFLASTCHANGE     => '(0) 0:00:00.00',
                        IFINOCTETS       => '0',
                        IFINERRORS       => '0',
                        IFOUTOCTETS      => '0',
                        IFOUTERRORS      => '0',
                    },
                    {
                        IFNUMBER         => '3',
                        IFNAME           => 'Xerox Internal TCP Software Loopback Interface',
                        IFDESCR          => 'Xerox Internal TCP Software Loopback Interface',
                        IFTYPE           => 'softwareLoopback(24)',
                        IFSPEED          => '10000000',
                        IFMTU            => '4096',
                        IFLASTCHANGE     => '(0) 0:00:00.00',
                        IFINOCTETS       => '0',
                        IFINERRORS       => '0',
                        IFOUTOCTETS      => '0',
                        IFOUTERRORS      => '0',
                    },
                ]
            },
        }
    ],
);

setPlan(scalar keys %tests);

my $dictionary = getDictionnary();
my $index      = getIndex();

foreach my $test (sort keys %tests) {
    my $snmp  = getSNMP($test);
    my $model = getModel($index, $tests{$test}->[1]->{MODELSNMP});

    my %device0 = getDeviceInfo(
        snmp    => $snmp,
        model   => $model,
        datadir => './share'
    );
    cmp_deeply(\%device0, $tests{$test}->[0], "$test: base stage");

    my %device1 = getDeviceInfo(
        snmp       => $snmp,
        dictionary => $dictionary,
        datadir    => './share'
    );
    cmp_deeply(\%device1, $tests{$test}->[1], "$test: base + dictionnary stage");

    my $device3 = getDeviceFullInfo(
        snmp    => $snmp,
        model   => $model,
        datadir => './share'
    );
    cmp_deeply($device3, $tests{$test}->[2], "$test: base + model stage");
}
