val scala3Version = "2.13.11"  // your Scala version

// Add ScalaPB plugin settings
addSbtPlugin("com.thesamet" % "sbt-protoc" % "1.0.0")

libraryDependencies ++= Seq(
  // Add ScalaPB runtime dependency
  "com.thesamet.scalapb" %% "scalapb-runtime" % scalapb.compiler.Version.scalapbVersion % "protobuf",
  
  // Your existing dependencies
  "org.scalameta" %% "munit" % "0.7.29" % Test
)

lazy val root = project
  .in(file("."))
  .settings(
    name := "DataAssignment",  // updated project name
    version := "0.1.0-SNAPSHOT",
    scalaVersion := scala3Version,

    // Add this line to include the root directory
    unmanagedSourceDirectories in Compile += baseDirectory.value,

    // Specify the main class if you wish
    mainClass in Compile := Some("PuzzleReaderWriter")
  )
