/*
 * settings.gradle.kts
 * badger
 */

rootProject.name = "badger"

val swiftPM = file("../../gradle/SwiftPM-Plugin")
if (swiftPM.exists()) {
    // Include SwiftPM plugin project in composite build
    includeBuild(swiftPM) {
        dependencySubstitution {
            substitute(module("at.phatbl:swiftpm")).with(project(":"))
        }
    }
}

pluginManagement {
    repositories {
        gradlePluginPortal()
    }
    resolutionStrategy {
        eachPlugin {
            when (requested.id.id) {
                "at.phatbl.swiftpm" ->
                    useModule("at.phatbl:swiftpm:${requested.version}")
                else -> Unit
            }
        }
    }
}