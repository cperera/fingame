# fingame
Fingame is a game about dealing with finances! At any point in time, there are resources of various sorts available to you, and you have goals you'd love to achieve. Take a scenario with a defined initial resources and goal, or start a campaign with an initial start state.

Run it from the command line. `julia src/fingame.jl`
## Setup

## Project Structure (this section is a Work In Progress!)
Needed: 
### Core
These are basic structures we put in place to make the game!
 - players' data
 - individual player objects
 - asset classes
   - risk and rewards
   - timing considerations
 - transactions
 - ability to timestep
### Context: command line
For the first (mildly) playable version, we should have:
 - controls (allow decisions, and admin level things such as Quit or NewGame)
 - display current state, maybe allow a more verbose description
 - buy an asset, sell an asset, wait a timestep
### Context: Scenario
Specific financial goal and asset structure.
What do we need to make this happen?
Examples:
 - You want X of Y gizmos (land holdings? stocks? etc), in the shortest time.
 - You want to be out of debt by June 2030!
 - You want financing for a Ferrari! You are willing to go into debt.

### Context: Campaign
This will be more freeform, you might start with the same initial conditions and just see where you can go from there.
Exploratory! "Discovery" of the possibilities available is super important.
Ability to represent random shocks and random events is important!

## Testing

## Questions?
