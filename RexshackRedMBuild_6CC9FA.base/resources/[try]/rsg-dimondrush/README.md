

This resource is a conversion of the original work by adamrakon from VORPCORE's Vorp Crawfish resource. It has been adapted to work with the RSG Core framework. Please note that I take no credit for the original work. This readme provides an overview of the resource and its functionality.

## Usage

### Client-side (main.lua)

The `main.lua` file contains the client-side implementation of the RSG Crawfish resource. It handles events and interactions related to searching for and harvesting crawfish.

#### Events

- `rsg-crawfish:try_search`: Triggered when the player attempts to search for crawfish.
- `rsg-crawfish:do_search`: Triggered when the player successfully searches a crawfish hole.
- `rsg-crawfish:abort_search`: Triggered when the player aborts the search process.
- `rsg-crawfish:harvest`: Triggered when the player harvests a crawfish.

#### Functions

- `TrySearch`: Triggers the `rsg-crawfish:try_search` event.
- `DoSearch`: Triggers the `rsg-crawfish:do_search` event.
- `AbortSearch`: Triggers the `rsg-crawfish:abort_search` event.
- `Harvest`: Triggers the `rsg-crawfish:harvest` event.

### Server-side (server/main.lua)

The `main.lua` file contains the server-side implementation of the RSG Crawfish resource. It handles server events and interactions related to searching for and harvesting crawfish.

#### Events

- `rsg-crawfish:try_search`: Triggered when a player attempts to search for crawfish.
- `rsg-crawfish:do_search`: Triggered when a player successfully searches a crawfish hole.
- `rsg-crawfish:abort_search`: Triggered when a player aborts the search process.
- `rsg-crawfish:harvest`: Triggered when a player harvests a crawfish.

#### Functions

- `AbortSearch`: Aborts the search process for a specific player.
- `CreateUseableItem`: Creates a useable item for the crawfish.

### Configuration (config.lua)

The `config.lua` file contains various customizable settings for the RSG Crawfish resource. These settings include search time, search delay, reward count, item names, and spawn locations for the crawfish holes. Adjust these settings according to your preferences.

## Installation

To install the RSG Crawfish resource, follow these steps:

1. Copy the `rsg-crawfish` folder to your RedM server's `resources` directory.
2. Add `ensure rsg-crawfish` to your server.cfg file.
3. Add  
    ['crawfish']     = {['name'] = 'crawfish',     ['label'] = 'crawfish', ['weight'] = 10, ['type'] = 'item', ['image'] = 'upgrade_fsh_bait_crayfish.png', ['unique'] = false, ['useable'] = true,    ['shouldClose'] = true, ['combinable'] = nil, ['level'] = 0, ['description'] = 'put that on a cracker', ["created"] = nil, ["decay"] = 3.0, ["delete"] = false},
    ['p_crawdad01x']     = {['name'] = 'p_crawdad01x',     ['label'] = 'Crawfish Bait', ['weight'] = 10, ['type'] = 'item', ['image'] = 'upgrade_fsh_bait_crayfish.png', ['unique'] = false, ['useable'] = true,    ['shouldClose'] = true, ['combinable'] = nil, ['level'] = 0, ['description'] = 'used for fishing', ["created"] = nil, ["decay"] = 3.0, ["delete"] = false},
To your shared items if they dont already exist or adjust the config accordingly.
3. Start or restart your RedM server.

## Dependencies

This resource has a dependency on the `rsg-core` resource. Make sure you have the `rsg-core` resource installed and running on your server for the RSG Crawfish resource to work correctly.

## Credits

The original code for this resource was developed by adamdrakon https://github.com/adamdrakon

