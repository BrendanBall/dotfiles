rule = {
    matches = {
      {
        { "node.name", "equals", "alsa_output.usb-Burr-Brown_from_TI_USB_audio_CODEC-00.analog-stereo" },
      },
    },
    apply_properties = {
      ["device.disabled"] = true,
    },
  }
  
  table.insert(alsa_monitor.rules,rule)