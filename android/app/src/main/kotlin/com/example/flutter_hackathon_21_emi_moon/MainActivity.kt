package com.example.flutter_hackathon_21_emi_moon

import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.android.SplashScreen

class MainActivity: FlutterActivity() {
    
    override fun provideSplashScreen(): SplashScreen? = SplashView()
}
