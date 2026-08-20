If the workstation is not connected to Active Directory, the script will remove unused local user accounts.

## Usage

### Setup

Copy the `User Remove.bat`, `Task Create.bat`, and `.ps1` files to the `C:\Temp` folder.

### Single Run

Run the `User Remove.bat` file as Administrator.

### Daily Use

Run the `Task Create User Remove.bat` file once as Administrator.
This will create a scheduled task that runs the user removal script automatically.

### Configuration

The default threshold is 180 days.

To change the threshold, set the desired number of days in the following variable in the `.ps1` file:

`$thresholdDays = 180`
