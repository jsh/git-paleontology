### How to Create a Cloud Server with Google Compute Engine

Google Compute Engine isn't the most powerful cloud service, with the most bells and whistles, but using it is dirt-simple.
Here's a step-by-step.

1. Sign up

  ``` bash
  $ chrome https://console.developers.google.com/
  ```

  Click on *Try Google Cloud Platform for Free*, up at the top,
  then fill in all your info.
  It's free for 60 days. After that, it's almost free.
  No, really.

  Google bills you based on complicated formulas that charge for disk space and CPU usage.
  If you spin up giant machines with huge virtual disks and run them 24/7, it gets expensive.
  If you sporadically spin up a small machine, and bring it down at the end of the session, it's cheap, and accessible from any browser with internet access.

  I get monthly invoices for quantities like $0.93 and $1.57.
  If you can't afford that, ask for a raise.

1. Make a project

  Just fill in the blanks. Make stuff up.

1. Create a VM

  Click on your project, then on

  *Compute -> Compute Engine -> VM Instances -> New instance*

1. Configure your new VM

  I name my instances something descriptive, choose a nearby zone, like *us-central a*, and a boot disk.
  I typically use the latest Ubuntu LTS, because that's what I'm used to.
  Pick anything you're comfortable with.

  The default size (1 vCPU, 3.75 G memory) is usually fine.
  If I'm just writing and running shell scripts, I'll use micro instances.

1. Launch It

  Click *Create*

  When the spinning arrow goes away and your instance is created,
  find the line on the console that names your new instance,
  click the SSH button on the right side of the page in that line, and you'll get a terminal in your browser.

  On all the Linuxes I've tried, GCE automatically makes me a sudoer.
  You can use sudo whenever you need root permissions for an operation.

1. Customize It

  The installations are minimal. If you want to install packages, use the normal package manager for your distro.
  Unless the distro was just released, update the package database. For Ubuntu, for example, you'll certainly want this:

  ``` bash
  $ sudo apt-get update
  $ sudo apt-get install git
  ```

1. Stop and Restart It At Will

  - You can stop an instance by clicking the *Stop* button, near the top of the page. No point in having it run unless you're using it.

  - When it's stopped, you can start it again with the *Start* button. It will still have all your customizations and all your files.

  - When you're done and want to remove it forever, use the *Delete* button.

When you have more than one VM, check the checkbox to the left of the instance name to show which one you want to start, stop, delete, or get an ssh terminal to.

Dirt simple.
