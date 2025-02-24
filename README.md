# Code Realms - RPG Maker XP Game Documentation

## Table of Contents
- [Project Overview](#project-overview)
- [Team - Fault Finders](#team---fault-finders)
- [Game Documentation - Code Realms](#game-documentation---code-realms)
- [System Requirements](#system-requirements)
- [Installation of Dependencies](#installation-of-dependencies)
- [Troubleshooting](#troubleshooting)
- [Preparation for Execution](#preparation-for-execution)
- [Project Structure](#project-structure)
- [File Relationships](#file-relationships)
- [How to Execute the Game](#how-to-execute-the-game)
- [Demonstration](#demonstration)
- [Contribution](#contribution)
- [Contact](#contact)
- [Acknowledgments](#acknowledgments)
- [References](#references)
- [License](#license)

## Project Overview
This project is a role-playing game (RPG) developed using RPG Maker XP. The game explores the theme of "Technical Debt" and features three phases with different types of challenges and a final boss encounter.

## Team - Fault Finders
- **Pedro Ulisses Pereira Castro Maia** ([GitHub](https://github.com/pedroulissespu))  
- **Samuel Cristhian Alcantara De Oliveira** ([GitHub](https://github.com/OliSammy))  
- **Francisco Matheus Fernandes Freitas** ([GitHub](https://github.com/Fer-Matheus))  
- **Leticia Carneiro De Araújo** ([GitHub](https://github.com/letcarj))  
- **Larissa Kelly Dantas Batista** ([GitHub](https://github.com/larikelly))

## Game Documentation - Code Realms

### 🔹 Introduction
- **Game Name:** Code Realms
- **Developer Team:** Fault Finders
- **Description:** The digital world of CodeRealms is in crisis. The main city, Techland, is being consumed by creatures known as “Bugs,” “Code Smells,” and “Hotfix Minions.” These threats arise from the growing Technical Debt that has been neglected for too long. Now, the systems are on the brink of collapse. You are a young developer known as Alex Byte, recently hired by the legendary coding guild, the Refactorers. Your mission is simple: identify, combat, and eliminate the Technical Debt, restoring stability to CodeRealms.

### 🔹 General Settings
- **Resolution:** 640x480
- **Custom Scripts:** No custom scripts were used
- **Plugins Used:** No plugins were used

### 🔹 Database
- 📌 **Characters** : Alex Byte(Protagonist), Mark Turing(Tech lead), Mentor Linus(Protagonist's mentor), Big Love, Alan Gates, Overlord Legacy(Main antagonist), King(Senior Dev)
- 📌 **Items** : No items were used, just the power of refactoring and testing
- 📌 **Enemies** : Big Love (At the beginning of the game to teach the protagonist about trials), NullPointer Beasts, Memory Leak Wraith, Hydra and the Overlord Legacy
- 📌 **Skills** : Automated testing and stress testing
- 📌 **Classes** : Junior Dev, Mid Dev and Senior Dev
- 📌 **Weapons & Armors** : Nothing

### 🔹 Maps & Events
- 📌 **Map List** : Main Base, Base after the conversation, Canyon Database, Forest of Obsolete Frameworks, Castle and Guild
- 📌 **Important Events (NPCs, Cutscenes, Bosses)** : Conversation with Tech Lead (Mark Turing), conversation with Mentor Linus, conversation with Big Love, conversation with Alan Gates and the final conversation with Overlord Legacy and his battle

### 🔹 Conclusion
It is believed that it is possible, through this game, to have a brief introductory knowledge about what causes, what it is and how to solve technical debt, as technical debt is a very recurring problem in many projects, even renowned projects!

## System Requirements
- Operating System: Windows XP or higher  
- RPG Maker XP Runtime Package (RTP)  
- Minimum RAM: 512 MB  
- Disk Space: 200 MB

## Installation of Dependencies
1. Download and install the RPG Maker XP Runtime Package (RTP) from the official Enterbrain website.
2. Ensure your system meets the minimum requirements.

## Troubleshooting
- **Game crashes on startup:** Ensure that the RTP is installed correctly.
- **Missing graphics or audio:** Verify that the `Graphics` and `Audio` directories are intact.
- **Script errors:** Double-check any modifications made to the `Scripts.rxdata` file.

## Preparation for Execution
1. Install the required RTP.
2. Extract the game files to a directory of your choice.
3. Navigate to the game folder.

## Project Structure
```
Data/
  Actors.rxdata          # Character definitions
  Animations.rxdata      # Animation data
  Armors.rxdata          # Equipment definitions
  Classes.rxdata         # Class definitions
  CommonEvents.rxdata    # Reusable events
  Enemies.rxdata         # Enemy definitions
  Items.rxdata           # Item definitions
  Map001.rxdata          # Map 1 data
  Map002.rxdata          # Map 2 data
  Map003.rxdata          # Map 3 data
  Map004.rxdata          # Map 4 data
  Map005.rxdata          # Map 5 data
  Map006.rxdata          # Map 6 data
  MapInfos.rxdata        # Map information
  Scripts.rxdata         # Core game logic scripts
  Skills.rxdata          # Skills data
  States.rxdata          # States data
  System.rxdata          # System logic data
  Tilesets.rxdata        # Tilesets data
  Troops.rxdata          # Troops definitions
  Weapons.rxdata         # Weapons definitions and data
Graphics/
  Titles/
    Title.png.jpg        # Title screen image
Scripts/
  Arrow_Actor.rb            # Logic for playable characters' interactions  
  Arrow_Base.rb             # Base functionality for arrow interactions  
  Arrow_Enemy.rb            # Arrow interactions for enemies  
  Game_Actor.rb             # Actor data and behavior  
  Game_Actors.rb            # Management of multiple actors  
  Game_BattleAction.rb      # Battle action definitions  
  Game_Battler 1.rb         # Part 1 of battler logic (actors/enemies)  
  Game_Battler 2.rb         # Part 2 of battler logic (states/actions)  
  Game_Battler 3.rb         # Part 3 of battler logic (damage/effects)  
  Game_Character 1.rb       # Part 1 of game character logic (movements)  
  Game_Character 2.rb       # Part 2 of game character logic (collisions)  
  Game_Character 3.rb       # Part 3 of game character logic (triggers)  
  Game_CommonEvent.rb       # Logic for reusable common events  
  Game_Enemy.rb             # Enemy definitions and behavior  
  Game_Event.rb             # Event handling during gameplay  
  Game_Map.rb               # Core map logic and interactions  
  Game_Party.rb             # Party management  
  Game_Picture.rb           # Picture management logic  
  Game_Screen.rb            # Screen display and effects  
  Game_SelfSwitches.rb      # Persistent switch system for events  
  Game_Switches.rb          # Global switch management  
  Game_System.rb            # Game system and configuration  
  Game_Temp.rb              # Temporary data storage  
  Game_Troop.rb             # Enemy troop definitions and logic  
  Game_Variables.rb         # Global variable management  
  Interpreter 1.rb          # Event interpreter logic (part 1)  
  Interpreter 2.rb          # Event interpreter logic (part 2)  
  Interpreter 3.rb          # Event interpreter logic (part 3)  
  Interpreter 4.rb          # Event interpreter logic (part 4)  
  Interpreter 5.rb          # Event interpreter logic (part 5)  
  Interpreter 6.rb          # Event interpreter logic (part 6)  
  Interpreter 7.rb          # Event interpreter logic (part 7)  
  Main.rb                   # Main entry point for game execution  
  Scene_Battle 1.rb         # Battle scene logic (part 1)  
  Scene_Battle 2.rb         # Battle scene logic (part 2)  
  Scene_Battle 3.rb         # Battle scene logic (part 3)  
  Scene_Battle 4.rb         # Battle scene logic (part 4)  
  Scene_Debug.rb            # Debug scene for testing features  
  Scene_End.rb              # End game scene logic  
  Scene_Equip.rb            # Equipment menu scene  
  Scene_File.rb             # File management scene  
  Scene_Gameover.rb         # Game over scene logic  
  Scene_Item.rb             # Item menu scene logic  
  Scene_Load.rb             # Save file loading scene  
  Scene_Map.rb              # Main map scene logic  
  Scene_Menu.rb             # Main menu scene logic  
  Scene_Name.rb             # Name input scene logic  
  Scene_Save.rb             # Save file scene  
  Scene_Shop.rb             # Shop menu scene  
  Scene_Skill.rb            # Skill menu scene  
  Scene_Status.rb           # Character status scene  
  Scene_Title.rb            # Title screen scene logic  
  Sprite_Battler.rb         # Rendering logic for battlers in battles  
  Sprite_Character.rb       # Rendering logic for map characters  
  Sprite_Picture.rb         # Picture sprite rendering  
  Sprite_Timer.rb           # Timer sprite logic  
  Spriteset_Battle.rb       # Battle scene sprites  
  Spriteset_Map.rb          # Map scene sprites  
  Window_Base.rb            # Base class for all windows  
  Window_BattleResult.rb    # Battle result window  
  Window_BattleStatus.rb    # Battle status window  
  Window_Command.rb         # Command window logic  
  Window_DebugLeft.rb       # Debug window (left panel)  
  Window_DebugRight.rb      # Debug window (right panel)  
  Window_EquipItem.rb       # Equip item selection window  
  Window_EquipLeft.rb       # Equip screen left panel  
  Window_EquipRight.rb      # Equip screen right panel  
  Window_Gold.rb            # Gold display window  
  Window_Help.rb            # Help window display  
  Window_InputNumber.rb     # Number input window  
  Window_Item.rb            # Item menu window  
  Window_MenuStatus.rb      # Menu status window  
  Window_Message.rb         # Message display window  
  Window_NameEdit.rb        # Name editing window  
  Window_NameInput.rb       # Name input selection window  
  Window_PartyCommand.rb    # Party command window  
  Window_PlayTime.rb        # Playtime display window  
  Window_SaveFile.rb        # Save file window  
  Window_Selectable.rb      # Base class for selectable windows  
  Window_ShopBuy.rb         # Shop buy window  
  Window_ShopCommand.rb     # Shop command window  
  Window_ShopNumber.rb      # Shop quantity input window  
  Window_ShopSell.rb        # Shop sell window  
  Window_ShopStatus.rb      # Shop status window  
  Window_Skill.rb           # Skill menu window  
  Window_SkillStatus.rb     # Skill status display window  
  Window_Status.rb          # Status menu window  
  Window_Steps.rb           # Steps display window  
  Window_Target.rb          # Target selection window  
```

## File Relationships
- `Scripts.rxdata and Script/ directory`: Contains the core game logic, event triggers, and custom gameplay functions.
- `MapXXX.rxdata`: Individual map data files that define the layout and events.
- `Actors.rxdata`, `Items.rxdata`, `Enemies.rxdata`: Define in-game entities.
- `Graphics/Titles/Title.png.jpg`: Image file for the title screen.

## How to Execute the Game
1. Open the game folder.
2. Double-click on the game executable (`Game.exe`).
3. Enjoy the adventure!

## Demonstration
![Desktop 2025-02-02 1-48-25 AM](https://github.com/user-attachments/assets/8acc4977-5ace-449c-8387-d1278f49a548)
![Desktop 2025-02-02 1-47-03 AM](https://github.com/user-attachments/assets/923b9dac-e657-4e30-8995-c106e1ef8278)
![Desktop 2025-02-02 1-47-37 AM](https://github.com/user-attachments/assets/72af9f89-f4f1-4a4e-be9d-23c5ef9b2604)
![Desktop 2025-02-02 1-47-24 AM](https://github.com/user-attachments/assets/ecae6d68-1dba-4ac5-b77f-d141cc0c30f1)


## Contribution
If you would like to contribute to the game, please follow these steps:
1. Fork the repository.
2. Create a new branch for your feature (`git checkout -b feature/new-feature`).
3. Commit your changes (`git commit -m 'Add new feature'`).
4. Push to the branch (`git push origin feature/new-feature`).
5. Open a Pull Request.

## Contact
- Pedro Ulisses Pereira Castro Maia ([GitHub](https://github.com/pedroulissespu))
- Samuel Cristhian Alcantara De Oliveira ([GitHub](https://github.com/OliSammy))
- Francisco Matheus Fernandes Freitas ([GitHub](https://github.com/Fer-Matheus))
- Leticia Carneiro De Araújo ([GitHub](https://github.com/letcarj))
- Larissa Kelly Dantas Batista ([GitHub](https://github.com/larikelly))

## Acknowledgments
- Special thanks to all the contributors and playtesters.
- RPG Maker XP community for helpful scripts and assets.

## References
- RPG Maker XP Documentation: [Enterbrain](https://www.rpgmakerweb.com)
- Community Tutorials and Guides.

## License
This project is licensed under the [MIT License](LICENSE).

## Special Thanks
Many thanks to everyone who attended Game Day, tested, played and had fun with the game! The game was supposed to be something bigger, addressing technical debt in more detail. However, since the content on technical debt is quite extensive, we compressed the content to something small that is around a 15-20 minute gameplay, but that can go over what technical debt is, how it can impact and how to solve it by mixing it with some RPG aspects, creating through RPG Maker XP. Special thanks also to Professor Ismayle who organized this Game Day day, I hope he uses this project to continue! For other people to try to expand or improve the story, try to address other issues related to technical debt! And also, who knows, try to import everything that was done in RPG Maker XP, to more current versions of RPG Maker and make the game playable in the browser! See you next time, everyone! - Pedro Ulisses 02/24/2025
