# PRD: Minikanban

## Problem
Issues across a project's modules are tracked in scattered places. Nobody can see at a glance how far along each module is or which work is most urgent.

## Goal
One simple board where you add and edit issues in place, see progress per module, and spot urgent work at a glance. It's available as a web board and as a Mac app with a menu bar drop-down and a desktop widget.

## Principles
- **Edit in place.** No forms or pop-ups. Type straight onto the card.
- **Few fields.** Title, description, module, priority, status.
- **Colour carries meaning.** Priority colours show up on cards and on module tiles.

## Concepts
| Concept | Fields |
|---|---|
| **Module** | Name, colour |
| **Issue** | Title, description, module, priority, status |
| **Priority** | None → Low (blue) → Medium (purple) → High (red) |
| **Status** | To do → In progress → Done |

## Requirements (v1)
1. **Modules strip:** each module tile shows its name, a progress bar (done / total) and a gradient made from its open issues' priority colours, with bands sized by count. Click the name to rename it, the tile to filter, and × to delete it. Add a module by typing a name and pressing Enter.
2. **Board:** To do and In progress columns. Type in a column's input and press Enter to add an issue, picking its module beside the input.
3. **Inline editing:** title and description are edited on the card and save when you leave the field. The module tag on each card is a dropdown.
4. **Priority:** a signal-bar icon on each card. Clicking it moves to the next level, and the card takes that level's colour. Higher priority sorts first.
5. **Move:** drag a card onto another column (including a collapsed one), or use the "Start →" and "← To do" buttons on the card. Dragging starts outside the text fields, so selecting text still works.
6. **Complete:** the ✓ marks an issue done and hides it, with Undo. A "Show completed" switch adds a Done column where issues can be reopened.
7. **Progress:** an overall bar in the header that switches to the selected module's progress.
8. **Responsive:** works from phone width up, with no sideways scrolling.

## Mac app
- Menu bar drop-down and a window, both showing the same board.
- Appearance setting: match system (default), light or dark.
- Desktop widget: small shows open issues by priority; medium and large list the most urgent open issues, with a button to complete each one.
- Data is saved on the Mac and shared between the app and the widget. It isn't synced across people.

## Later
Due dates, search, comments, reordering cards within a column, sync between the Mac app and the web board.
