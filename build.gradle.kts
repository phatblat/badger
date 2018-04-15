/*
 * build.gradle.kts
 * badger
 */

/* -------------------------------------------------------------------------- */
// 🛃 Imports
/* -------------------------------------------------------------------------- */

import org.gradle.api.DefaultTask

/* -------------------------------------------------------------------------- */
// 🔌 Plugins
/* -------------------------------------------------------------------------- */

plugins {
    base
    id("at.phatbl.clamp") version "1.0.0"
    id("at.phatbl.swiftpm") version "1.0.0"
}

/* -------------------------------------------------------------------------- */
// ☑️ Tasks
/* -------------------------------------------------------------------------- */

open class BadgerTask : DefaultTask() {
    init {
        group = "🦔 Badger"
    }
}

tasks {
    "clean" {
        dependsOn("swiftClean")
        dependsOn("swiftpmReset")
    }
    "assemble" {
        dependsOn("swiftBuild")
    }
    "test"(BadgerTask::class) {
        dependsOn("swiftTest")
    }
    "codeQuality"(BadgerTask::class) {
        doLast { logger.lifecycle("$name task not implemented") }
    }
    "build" {
        dependsOn("assemble")
        dependsOn("test")
        dependsOn("codeQuality")
    }
    "release"(BadgerTask::class) {
        doLast { logger.lifecycle("$name task not implemented") }
    }
    "deploy"(BadgerTask::class) {
        doLast { logger.lifecycle("$name task not implemented") }
    }
}
