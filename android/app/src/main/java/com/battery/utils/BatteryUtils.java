package com.battery.utils;

import static android.content.Context.BATTERY_SERVICE;

import android.app.Activity;
import android.os.BatteryManager;
import android.os.Build;
import android.widget.Toast;

import io.flutter.embedding.android.FlutterActivity;

public class BatteryUtils {

    BatteryManager batteryManager;
    Activity activity;

    public BatteryUtils(Activity activity) {
        this.activity = activity;
        batteryManager = (BatteryManager) activity.getSystemService(BATTERY_SERVICE);
    }

    public int getBatteryStatus(){
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP) {
            return batteryManager.getIntProperty(BatteryManager.BATTERY_PROPERTY_CAPACITY);
        }
        return 0;
    }
}
