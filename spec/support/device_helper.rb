class Device
  class << self
    def udid
      udid = `adb devices -l |awk -F : 'NR==2{print $2}'|awk '{print $1}'`
      return udid    
    end
    
    def version
      device_version = `adb shell getprop ro.build.version.release`.chomp
      return device_version    
    end
  end
end