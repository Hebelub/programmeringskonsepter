val scala3Version = "3.3.0"

lazy val root = project
  .in(file("."))
  .settings(
    name := "ScalaAssignement",
    version := "0.1.0-SNAPSHOT",
    scalaVersion := scala3Version,

    // Add this line to include the root directory
    unmanagedSourceDirectories in Compile += baseDirectory.value,

    libraryDependencies += "org.scalameta" %% "munit" % "0.7.29" % Test
  )
