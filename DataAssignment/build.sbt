val scalaVersionUsed = "2.13.11"  // Change this to your actual Scala version

libraryDependencies ++= Seq(
  "com.thesamet.scalapb" %% "scalapb-runtime" % "0.11.4" % "protobuf",
  "com.google.protobuf" % "protobuf-java" % "3.17.3",
  "org.scalameta" %% "munit" % "0.7.29" % Test,
  "com.thesamet.scalapb" %% "compilerplugin" % "0.10.10"  // Add this line
)

lazy val root = project
  .in(file("."))
  .settings(
    name := "DataAssignment",
    version := "0.1.0-SNAPSHOT",
    scalaVersion := scalaVersionUsed,
    Compile / unmanagedSourceDirectories += baseDirectory.value // Migrating to slash syntax
  )
