plugins {

    id ("com.android.application")
    id ("kotlin-android")
    id ("dev.flutter.flutter-gradle-plugin")

}

android {

    namespace = "com.example.linette"
    compileSdk = flutter.compileSdkVersion
    ndkVersion = flutter.ndkVersion

    compileOptions {

        sourceCompatibility = JavaVersion.VERSION_17
        targetCompatibility = JavaVersion.VERSION_17

    }

	kotlin {

		compilerOptions {

			jvmTarget = org.jetbrains.kotlin.gradle.dsl.JvmTarget.JVM_17

		}

	}

    defaultConfig {

        applicationId = "com.example.linette"
        minSdk = flutter.minSdkVersion
        targetSdk = flutter.targetSdkVersion
        versionCode = flutter.versionCode
        versionName = flutter.versionName

    }

	signingConfigs {

        create ("release") {

            // Настройки keystore

        }

    }

    buildTypes {

        release {

			signingConfig = signingConfigs.getByName ("release")

        }

    }

}

flutter {

    source = "../.."

}