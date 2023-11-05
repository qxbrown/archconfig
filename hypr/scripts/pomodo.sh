#!/bin/bash

# Function to display a notification
function show_notification() {
    notify-send "Locking in 40 seconds" "Your device will be locked in 40 seconds. Save your work!"
}

# Function to lock the device with swaylock
function lock_device() {
    swaylock
}

# Function for the countdown timer
function countdown_timer() {
    sleep 300
    killall swaylock
    done
}

# Main script
while true; do
    # Wait for 30 minutes
    sleep 1800

    # Show notification 40 seconds before locking
    show_notification

    # Wait for 40 seconds
    sleep 40

    # Lock the device
    lock_device

    # Start countdown timer
    countdown_timer
done