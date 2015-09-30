" Vim syntax file
" Language:     CBOT
" Maintainer:   Kompowiec2 <chipteken@gmail.com>
" Filenames:    *.cbot
" URL:		http://www.kompowiec2.cba.pl
" Last Change:  2015 September 30

if !exists("main_syntax")
if version < 600
syntax clear
elseif exists("b:current_syntax")
finish
endif
let main_syntax = 'cbot'
endif

runtime! syntax/c.vim

syntax case match

syntax keyword CbotType int float bool string point object void extern 
syn keyword CbotStatement Houston SpaceShip BotFactory ResearchCenter RadarStation ExchangePost RepairCenter DefenseTower AutoLab PowerStation PowerPlant NuclerPlant Converter Derrick PowerCaptor Vault StartArea GoalArea AlienNest TitaniumOre UraniumOre Titanium PowerCell NuclearCell OrgaMatter BlackBox TNT KeyA KeyB KeyC KeyD PracticeBot TargetBot TrackedGrabber WheeledGrabber WingedGrabber LeggedGrabber WheeledSniffer TrackedSniffer WingedSniffer LeggedSniffer WheeledShooter TrackedShooter WingedShooter LeggedShooter WheeledOrgaShooter TackedOrgaShooter WingedOrgaShooter LeggedOrgaShooter Subber recycler Shielder Thumper PhazerShooter AlienQueen AlienEgg AlienAnt AlienSpider AlienWasp AlienWorm Me Mine Barrier Wreck Ruin BlueFlag RedFlag GreenFlag YellowFlag VioletFlag WayPoint EnergySpot TitaniumSpot UraniumSpot
syn keyword CbotString radar direction distance distance2d wait move turn goto motor jet message retobject errmode abstime space topo flatground grab drop sniff thump recycle shueld fire aim receive send testinfo deleteinfo new this strlen streft stright strmrid strfind strval strupper strlower open close writeln readln eof deletefile


if version >= 508 || !exists("did_xxd_syntax_inits")
  if version < 508
    let did_xxd_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

 HiLink CbotType	Type
 HiLink CbotStatement 	Statement
 HiLink CbotString 	String

 delcommand HiLink
endif
