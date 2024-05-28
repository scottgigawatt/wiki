# Direct Ethernet Connection Between Two Synology NAS Devices

To enable direct Ethernet-to-Ethernet connection between two Synology DSM NAS devices, follow these steps:

## Configure Ethernet Connections

Ensure you have the correct Cat 6 or better Ethernet cables connecting the LAN2 ports of both NAS devices.

- **NAS1 LAN2:** IP address 10.10.10.1, subnet mask 255.255.255.0, gateway 10.10.10.1
- **NAS2 LAN2:** IP address 10.10.10.2, subnet mask 255.255.255.0, gateway 10.10.10.2

## Enable Multiple Gateways

To route each network interface through their respective gateways:

- Navigate to **Control Panel** > **Network** > **General**.
- In the **General** section, click **Advanced Settings**.
- In the pop-up window, check **Enable Multiple Gateway**.
- Click **Apply** to save your settings.

This ensures routing for each network interface to go through their respective gateways.

## Add Firewall Rules

Add a firewall rule to both NAS devices allowing access from the 10.10.10.0 subnet. As the connection is physically on one Ethernet cable between the two NAS devices, open all ports and services to avoid any man-in-the-middle concerns.

**Note:**

- You do NOT need to set up a static route.
- You do NOT need to change the Network Interface Service Order.

## Setting Up Rsync

### Enable Rsync Backup Service

1. Navigate to **Control Panel** > **File Services** > **Rsync**.
2. Check the **Enable Rsync service** box to set up the shared folder sync. The default port can be left as is.
3. Both Synology NAS devices must have Rsync enabled.

### Assign Rsync Privileges

1. Grant Rsync backup permissions by going to **Control Panel** > **Application Privileges** > **Rsync (Shared Folder Sync, LUN Backup on supported models)** > **Edit**.
2. Assign privileges to the desired users or specify specific users' allowed IP addresses by clicking **Advanced Permissions** > **Advanced Shared Permissions**.

Finally, give the user account Read/Write permissions.

### Sync Files Between Devices

1. Go to **Control Panel** > **File Services** > **Advanced** > **Task List**.
2. Click **Create** and name the task.
3. Choose the folders you want to sync, then check the box and click **Next**.
4. Enter the information for the destination Synology NAS, customize the settings at the bottom, and test the connection.
5. Change the schedule on which you want this task to run.
6. Confirm the operations and click **Apply** for the folder to begin syncing.

These steps enable you to synchronize files between Synology NAS devices efficiently using Rsync.
