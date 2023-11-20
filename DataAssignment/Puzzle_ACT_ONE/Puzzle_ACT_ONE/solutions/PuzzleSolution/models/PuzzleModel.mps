<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:bc82e00b-46d1-4309-80a8-dda2207122b1(PuzzleModel)">
  <persistence version="9" />
  <languages>
    <use id="b4fcd96f-fa06-46a4-9520-beaeb32aa9a1" name="ActOne" version="0" />
  </languages>
  <imports>
    <import index="zaie" ref="r:2beb8917-7e4c-43c9-b7bd-08fe08e3aed6(ActOne.Predefined)" implicit="true" />
  </imports>
  <registry>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
      <concept id="3717301156197626279" name="jetbrains.mps.lang.core.structure.BasePlaceholder" flags="ng" index="3DQ70j" />
      <concept id="709746936026466394" name="jetbrains.mps.lang.core.structure.ChildAttribute" flags="ng" index="3VBwX9">
        <property id="709746936026609031" name="linkId" index="3V$3ak" />
        <property id="709746936026609029" name="role_DebugInfo" index="3V$3am" />
      </concept>
    </language>
    <language id="b4fcd96f-fa06-46a4-9520-beaeb32aa9a1" name="ActOne">
      <concept id="8112596015367418118" name="ActOne.structure.Variables" flags="ng" index="26FcCh">
        <child id="8112596015367418119" name="declarations" index="26FcCg" />
        <child id="8112596015367418124" name="sort" index="26FcCr" />
      </concept>
      <concept id="8112596015369271211" name="ActOne.structure.AnonVariable" flags="ng" index="26K0MW" />
      <concept id="5276604095072500071" name="ActOne.structure.VariableDeclaration" flags="ng" index="2a4bCg" />
      <concept id="5276604095072592121" name="ActOne.structure.Axiom" flags="ng" index="2a5yee">
        <child id="5276604095072592132" name="rightTerm" index="2a5y9N" />
        <child id="5276604095072592129" name="leftTerm" index="2a5y9Q" />
      </concept>
      <concept id="8445081754001449717" name="ActOne.structure.Sort" flags="ng" index="bklvD" />
      <concept id="8445081754001417286" name="ActOne.structure.Specification" flags="ng" index="bkt5q">
        <child id="8445081754001526283" name="sorts" index="blzGn" />
        <child id="6300386900480986014" name="variables" index="pRJcv" />
        <child id="6300386900480908542" name="axioms" index="pRMhZ" />
        <child id="6300386900480909287" name="operators" index="pRMtA" />
        <child id="6849908093511409942" name="actions" index="YRu88" />
        <child id="6816510776893429603" name="imports" index="3QKWGc" />
      </concept>
      <concept id="8445081754001646503" name="ActOne.structure.SortReference" flags="ng" index="bl5qV">
        <reference id="8445081754001646504" name="reference" index="bl5qO" />
      </concept>
      <concept id="6300386900481288729" name="ActOne.structure.OperatorReference" flags="ng" index="pQlao">
        <property id="5944539236828360693" name="vertical" index="3IYp45" />
        <reference id="6300386900481288730" name="ref" index="pQlar" />
        <child id="7054597004572770024" name="parameters" index="EZGxL" />
      </concept>
      <concept id="6300386900480985806" name="ActOne.structure.Operator" flags="ng" index="pRJ9f">
        <property id="6300386900480985810" name="isConstructor" index="pRJ9j" />
        <child id="6300386900480985813" name="parameters" index="pRJ9k" />
        <child id="6300386900480985816" name="output" index="pRJ9p" />
      </concept>
      <concept id="4779260070265770977" name="ActOne.structure.EmptyLine" flags="ng" index="rdghn" />
      <concept id="6849908093511409885" name="ActOne.structure.Reduce" flags="ng" index="YRuf3">
        <property id="1955001717827324002" name="exhaustive" index="1lgsvm" />
        <property id="1955001717825840243" name="steps" index="1lq2J7" />
        <child id="6849908093511409912" name="termToReduce" index="YRufA" />
      </concept>
      <concept id="7333886121707328801" name="ActOne.structure.Let" flags="ng" index="1mjQuN">
        <child id="7333886121707328825" name="storeTerm" index="1mjQuF" />
      </concept>
      <concept id="7333886121707328804" name="ActOne.structure.LetReference" flags="ng" index="1mjQuQ">
        <reference id="7333886121707328805" name="reference" index="1mjQuR" />
      </concept>
      <concept id="7911722725550616649" name="ActOne.structure.VariableReference" flags="ng" index="3O66mJ">
        <reference id="7911722725550616650" name="variableRef" index="3O66mG" />
      </concept>
      <concept id="6816510776893429610" name="ActOne.structure.SpecificationReference" flags="ng" index="3QKWG5">
        <reference id="6816510776893429611" name="reference" index="3QKWG4" />
      </concept>
    </language>
  </registry>
  <node concept="bkt5q" id="5wEF59lkheC">
    <property role="TrG5h" value="PEARL" />
    <node concept="26FcCh" id="3rXORfo7eEc" role="pRJcv">
      <node concept="2a4bCg" id="3rXORfo7eEd" role="26FcCg">
        <property role="TrG5h" value="userPearl" />
      </node>
      <node concept="bl5qV" id="3rXORfo7eEe" role="26FcCr">
        <ref role="bl5qO" node="5wEF59lkheF" resolve="Pearl" />
      </node>
    </node>
    <node concept="26FcCh" id="4ryo8lMDppA" role="pRJcv">
      <node concept="2a4bCg" id="4ryo8lMDppB" role="26FcCg">
        <property role="TrG5h" value="pearl" />
      </node>
      <node concept="bl5qV" id="4ryo8lMDppC" role="26FcCr">
        <ref role="bl5qO" node="4ryo8lMCcz8" resolve="Pearl" />
      </node>
    </node>
    <node concept="26FcCh" id="3rXORfo7Jy7" role="pRJcv">
      <node concept="2a4bCg" id="3rXORfo7Jy8" role="26FcCg">
        <property role="TrG5h" value="row1" />
      </node>
      <node concept="2a4bCg" id="3rXORfo7Jyh" role="26FcCg">
        <property role="TrG5h" value="row2" />
      </node>
      <node concept="2a4bCg" id="3rXORfo7Jyo" role="26FcCg">
        <property role="TrG5h" value="row3" />
      </node>
      <node concept="2a4bCg" id="3rXORfo7Jys" role="26FcCg">
        <property role="TrG5h" value="row4" />
      </node>
      <node concept="2a4bCg" id="3rXORfo7Jyz" role="26FcCg">
        <property role="TrG5h" value="row5" />
      </node>
      <node concept="bl5qV" id="3rXORfo7Jy9" role="26FcCr">
        <ref role="bl5qO" node="4ryo8lMtJ5s" resolve="Row" />
      </node>
    </node>
    <node concept="26FcCh" id="3rXORfo9uYI" role="pRJcv">
      <node concept="2a4bCg" id="3rXORfo9uYJ" role="26FcCg">
        <property role="TrG5h" value="cell1" />
      </node>
      <node concept="2a4bCg" id="4ryo8lMtLjd" role="26FcCg">
        <property role="TrG5h" value="cell2" />
      </node>
      <node concept="2a4bCg" id="4ryo8lMukas" role="26FcCg">
        <property role="TrG5h" value="cell3" />
      </node>
      <node concept="2a4bCg" id="4ryo8lMukDt" role="26FcCg">
        <property role="TrG5h" value="cell4" />
      </node>
      <node concept="2a4bCg" id="4ryo8lMul8p" role="26FcCg">
        <property role="TrG5h" value="cell5" />
      </node>
      <node concept="2a4bCg" id="4ryo8lMAUsD" role="26FcCg">
        <property role="TrG5h" value="cell6" />
      </node>
      <node concept="2a4bCg" id="4ryo8lMAVaZ" role="26FcCg">
        <property role="TrG5h" value="cell7" />
      </node>
      <node concept="2a4bCg" id="4ryo8lMAVTm" role="26FcCg">
        <property role="TrG5h" value="cell8" />
      </node>
      <node concept="2a4bCg" id="4ryo8lMAWBL" role="26FcCg">
        <property role="TrG5h" value="cell9" />
      </node>
      <node concept="2a4bCg" id="4ryo8lMAXm7" role="26FcCg">
        <property role="TrG5h" value="cell10" />
      </node>
      <node concept="2a4bCg" id="4ryo8lMAY4x" role="26FcCg">
        <property role="TrG5h" value="cell11" />
      </node>
      <node concept="2a4bCg" id="4ryo8lMAYMW" role="26FcCg">
        <property role="TrG5h" value="cell12" />
      </node>
      <node concept="2a4bCg" id="4ryo8lMAZxl" role="26FcCg">
        <property role="TrG5h" value="cell13" />
      </node>
      <node concept="2a4bCg" id="4ryo8lMB0fM" role="26FcCg">
        <property role="TrG5h" value="cell14" />
      </node>
      <node concept="2a4bCg" id="4ryo8lMB0Yg" role="26FcCg">
        <property role="TrG5h" value="cell15" />
      </node>
      <node concept="bl5qV" id="3rXORfo9uYK" role="26FcCr">
        <ref role="bl5qO" node="4ryo8lMsAuT" resolve="Cell" />
      </node>
    </node>
    <node concept="26FcCh" id="4ryo8lMtygz" role="pRJcv">
      <node concept="2a4bCg" id="4ryo8lMtyg$" role="26FcCg">
        <property role="TrG5h" value="conn1" />
      </node>
      <node concept="2a4bCg" id="4ryo8lMtyha" role="26FcCg">
        <property role="TrG5h" value="conn2" />
      </node>
      <node concept="2a4bCg" id="4ryo8lMtyhm" role="26FcCg">
        <property role="TrG5h" value="conn3" />
      </node>
      <node concept="2a4bCg" id="4ryo8lMtyhw" role="26FcCg">
        <property role="TrG5h" value="conn4" />
      </node>
      <node concept="2a4bCg" id="4ryo8lMtYbY" role="26FcCg">
        <property role="TrG5h" value="conn5" />
      </node>
      <node concept="2a4bCg" id="4ryo8lMtYD$" role="26FcCg">
        <property role="TrG5h" value="conn6" />
      </node>
      <node concept="2a4bCg" id="4ryo8lMtZ75" role="26FcCg">
        <property role="TrG5h" value="conn7" />
      </node>
      <node concept="2a4bCg" id="4ryo8lMtZ$H" role="26FcCg">
        <property role="TrG5h" value="conn8" />
      </node>
      <node concept="2a4bCg" id="4ryo8lMuBzp" role="26FcCg">
        <property role="TrG5h" value="conn9" />
      </node>
      <node concept="2a4bCg" id="4ryo8lMuC33" role="26FcCg">
        <property role="TrG5h" value="conn10" />
      </node>
      <node concept="2a4bCg" id="4ryo8lMuCyF" role="26FcCg">
        <property role="TrG5h" value="conn11" />
      </node>
      <node concept="2a4bCg" id="4ryo8lMuD2n" role="26FcCg">
        <property role="TrG5h" value="conn12" />
      </node>
      <node concept="bl5qV" id="4ryo8lMtyg_" role="26FcCr">
        <ref role="bl5qO" to="zaie:7zB5IrGSITC" resolve="Bool" />
      </node>
    </node>
    <node concept="26FcCh" id="4ryo8lMuHZn" role="pRJcv">
      <node concept="2a4bCg" id="4ryo8lMuHZo" role="26FcCg">
        <property role="TrG5h" value="cellType1" />
      </node>
      <node concept="bl5qV" id="4ryo8lMuHZp" role="26FcCr">
        <ref role="bl5qO" node="4ryo8lMsAx7" resolve="CellType" />
      </node>
    </node>
    <node concept="26FcCh" id="4ryo8lMyCl6" role="pRJcv">
      <node concept="2a4bCg" id="4ryo8lMyCl7" role="26FcCg">
        <property role="TrG5h" value="star1" />
      </node>
      <node concept="2a4bCg" id="4ryo8lM$YGk" role="26FcCg">
        <property role="TrG5h" value="star2" />
      </node>
      <node concept="2a4bCg" id="4ryo8lM$Zkh" role="26FcCg">
        <property role="TrG5h" value="star3" />
      </node>
      <node concept="2a4bCg" id="4ryo8lM$ZWi" role="26FcCg">
        <property role="TrG5h" value="star4" />
      </node>
      <node concept="2a4bCg" id="4ryo8lM_0$h" role="26FcCg">
        <property role="TrG5h" value="star5" />
      </node>
      <node concept="bl5qV" id="4ryo8lMyCl8" role="26FcCr">
        <ref role="bl5qO" node="4ryo8lMyCfH" resolve="Star" />
      </node>
    </node>
    <node concept="26FcCh" id="4ryo8lM_mZ_" role="pRJcv">
      <node concept="2a4bCg" id="4ryo8lM_mZA" role="26FcCg">
        <property role="TrG5h" value="starRow1" />
      </node>
      <node concept="2a4bCg" id="4ryo8lM_n0v" role="26FcCg">
        <property role="TrG5h" value="starRow2" />
      </node>
      <node concept="2a4bCg" id="4ryo8lM_n0F" role="26FcCg">
        <property role="TrG5h" value="starRow3" />
      </node>
      <node concept="2a4bCg" id="4ryo8lM_n0S" role="26FcCg">
        <property role="TrG5h" value="starRow4" />
      </node>
      <node concept="2a4bCg" id="4ryo8lM_n13" role="26FcCg">
        <property role="TrG5h" value="starRow5" />
      </node>
      <node concept="bl5qV" id="4ryo8lM_mZB" role="26FcCr">
        <ref role="bl5qO" node="4ryo8lM$WEk" resolve="StarRow" />
      </node>
    </node>
    <node concept="26FcCh" id="4ryo8lMDGAW" role="pRJcv">
      <node concept="2a4bCg" id="4ryo8lMDGAX" role="26FcCg">
        <property role="TrG5h" value="userRow1" />
      </node>
      <node concept="2a4bCg" id="4ryo8lMDGC7" role="26FcCg">
        <property role="TrG5h" value="userRow2" />
      </node>
      <node concept="2a4bCg" id="4ryo8lMDGCj" role="26FcCg">
        <property role="TrG5h" value="userRow3" />
      </node>
      <node concept="2a4bCg" id="4ryo8lMDGCt" role="26FcCg">
        <property role="TrG5h" value="userRow4" />
      </node>
      <node concept="2a4bCg" id="4ryo8lMDGCF" role="26FcCg">
        <property role="TrG5h" value="userRow5" />
      </node>
      <node concept="bl5qV" id="4ryo8lMDGAY" role="26FcCr">
        <ref role="bl5qO" node="3rXORfo7b_6" resolve="UserRow" />
      </node>
    </node>
    <node concept="26FcCh" id="29McdkvZQNS" role="pRJcv">
      <node concept="2a4bCg" id="29McdkvZQNT" role="26FcCg">
        <property role="TrG5h" value="userCell1" />
      </node>
      <node concept="2a4bCg" id="29McdkvZQP7" role="26FcCg">
        <property role="TrG5h" value="userCell2" />
      </node>
      <node concept="2a4bCg" id="29McdkvZQPg" role="26FcCg">
        <property role="TrG5h" value="userCell3" />
      </node>
      <node concept="2a4bCg" id="29McdkvZQPq" role="26FcCg">
        <property role="TrG5h" value="userCell4" />
      </node>
      <node concept="2a4bCg" id="29McdkvZQP_" role="26FcCg">
        <property role="TrG5h" value="userCell5" />
      </node>
      <node concept="bl5qV" id="29McdkvZQNU" role="26FcCr">
        <ref role="bl5qO" node="3rXORfo7bKn" resolve="UserCell" />
      </node>
    </node>
    <node concept="3DQ70j" id="3rXORfo7fdA" role="lGtFl">
      <property role="3V$3am" value="variables" />
      <property role="3V$3ak" value="b4fcd96f-fa06-46a4-9520-beaeb32aa9a1/8445081754001417286/6300386900480986014" />
    </node>
    <node concept="2a5yee" id="4ryo8lMsOfl" role="pRMhZ">
      <node concept="pQlao" id="4ryo8lMsOfP" role="2a5y9Q">
        <ref role="pQlar" node="4ryo8lMskK2" resolve="userCellToCell" />
        <node concept="pQlao" id="4ryo8lMsOg5" role="EZGxL">
          <ref role="pQlar" node="4ryo8lMrOwV" resolve="cell" />
        </node>
      </node>
      <node concept="pQlao" id="4ryo8lMsOw1" role="2a5y9N">
        <ref role="pQlar" node="4ryo8lMsCK$" resolve="mkCell" />
        <node concept="pQlao" id="4ryo8lMsOJ_" role="EZGxL">
          <ref role="pQlar" node="4ryo8lMsLXR" resolve="cellTypeEmpty" />
        </node>
        <node concept="pQlao" id="4ryo8lMsPu8" role="EZGxL">
          <ref role="pQlar" to="zaie:34Rb5Oc3jwF" resolve="False" />
        </node>
        <node concept="pQlao" id="4ryo8lMsPXg" role="EZGxL">
          <ref role="pQlar" to="zaie:34Rb5Oc3jwF" resolve="False" />
        </node>
        <node concept="pQlao" id="4ryo8lMsQsu" role="EZGxL">
          <ref role="pQlar" to="zaie:34Rb5Oc3jwF" resolve="False" />
        </node>
        <node concept="pQlao" id="4ryo8lMsQVX" role="EZGxL">
          <ref role="pQlar" to="zaie:34Rb5Oc3jwF" resolve="False" />
        </node>
      </node>
    </node>
    <node concept="2a5yee" id="4ryo8lMsSF4" role="pRMhZ">
      <node concept="pQlao" id="4ryo8lMsSF5" role="2a5y9Q">
        <ref role="pQlar" node="4ryo8lMskK2" resolve="userCellToCell" />
        <node concept="pQlao" id="4ryo8lMsSF6" role="EZGxL">
          <ref role="pQlar" node="4ryo8lMrOBf" resolve="cellWhite" />
        </node>
      </node>
      <node concept="pQlao" id="4ryo8lMsSF7" role="2a5y9N">
        <ref role="pQlar" node="4ryo8lMsCK$" resolve="mkCell" />
        <node concept="pQlao" id="4ryo8lMsSF8" role="EZGxL">
          <ref role="pQlar" node="4ryo8lMsM1H" resolve="cellTypeWhite" />
        </node>
        <node concept="pQlao" id="4ryo8lMsSF9" role="EZGxL">
          <ref role="pQlar" to="zaie:34Rb5Oc3jwF" resolve="False" />
        </node>
        <node concept="pQlao" id="4ryo8lMsSFa" role="EZGxL">
          <ref role="pQlar" to="zaie:34Rb5Oc3jwF" resolve="False" />
        </node>
        <node concept="pQlao" id="4ryo8lMsSFb" role="EZGxL">
          <ref role="pQlar" to="zaie:34Rb5Oc3jwF" resolve="False" />
        </node>
        <node concept="pQlao" id="4ryo8lMsSFc" role="EZGxL">
          <ref role="pQlar" to="zaie:34Rb5Oc3jwF" resolve="False" />
        </node>
      </node>
    </node>
    <node concept="2a5yee" id="4ryo8lMsSHd" role="pRMhZ">
      <node concept="pQlao" id="4ryo8lMsSHe" role="2a5y9Q">
        <ref role="pQlar" node="4ryo8lMskK2" resolve="userCellToCell" />
        <node concept="pQlao" id="4ryo8lMsSHf" role="EZGxL">
          <ref role="pQlar" node="4ryo8lMrODA" resolve="cellBlack" />
        </node>
      </node>
      <node concept="pQlao" id="4ryo8lMsSHg" role="2a5y9N">
        <ref role="pQlar" node="4ryo8lMsCK$" resolve="mkCell" />
        <node concept="pQlao" id="4ryo8lMsSHh" role="EZGxL">
          <ref role="pQlar" node="4ryo8lMsM3I" resolve="cellTypeBlack" />
        </node>
        <node concept="pQlao" id="4ryo8lMsSHi" role="EZGxL">
          <ref role="pQlar" to="zaie:34Rb5Oc3jwF" resolve="False" />
        </node>
        <node concept="pQlao" id="4ryo8lMsSHj" role="EZGxL">
          <ref role="pQlar" to="zaie:34Rb5Oc3jwF" resolve="False" />
        </node>
        <node concept="pQlao" id="4ryo8lMsSHk" role="EZGxL">
          <ref role="pQlar" to="zaie:34Rb5Oc3jwF" resolve="False" />
        </node>
        <node concept="pQlao" id="4ryo8lMsSHl" role="EZGxL">
          <ref role="pQlar" to="zaie:34Rb5Oc3jwF" resolve="False" />
        </node>
      </node>
    </node>
    <node concept="2a5yee" id="4ryo8lMsSIs" role="pRMhZ">
      <node concept="pQlao" id="4ryo8lMsSIt" role="2a5y9Q">
        <ref role="pQlar" node="4ryo8lMskK2" resolve="userCellToCell" />
        <node concept="pQlao" id="4ryo8lMsSIu" role="EZGxL">
          <ref role="pQlar" node="4ryo8lMrNsN" resolve="cellUp" />
        </node>
      </node>
      <node concept="pQlao" id="4ryo8lMsSIv" role="2a5y9N">
        <ref role="pQlar" node="4ryo8lMsCK$" resolve="mkCell" />
        <node concept="pQlao" id="4ryo8lMsSIw" role="EZGxL">
          <ref role="pQlar" node="4ryo8lMsLXR" resolve="cellTypeEmpty" />
        </node>
        <node concept="pQlao" id="4ryo8lMsSIx" role="EZGxL">
          <ref role="pQlar" to="zaie:34Rb5Oc3jw_" resolve="True" />
        </node>
        <node concept="pQlao" id="4ryo8lMsSIy" role="EZGxL">
          <ref role="pQlar" to="zaie:34Rb5Oc3jwF" resolve="False" />
        </node>
        <node concept="pQlao" id="4ryo8lMsSIz" role="EZGxL">
          <ref role="pQlar" to="zaie:34Rb5Oc3jwF" resolve="False" />
        </node>
        <node concept="pQlao" id="4ryo8lMsSI$" role="EZGxL">
          <ref role="pQlar" to="zaie:34Rb5Oc3jwF" resolve="False" />
        </node>
      </node>
    </node>
    <node concept="2a5yee" id="4ryo8lMsSJL" role="pRMhZ">
      <node concept="pQlao" id="4ryo8lMsSJM" role="2a5y9Q">
        <ref role="pQlar" node="4ryo8lMskK2" resolve="userCellToCell" />
        <node concept="pQlao" id="4ryo8lMsSJN" role="EZGxL">
          <ref role="pQlar" node="4ryo8lMrNM$" resolve="cellUpWhite" />
        </node>
      </node>
      <node concept="pQlao" id="4ryo8lMsSJO" role="2a5y9N">
        <ref role="pQlar" node="4ryo8lMsCK$" resolve="mkCell" />
        <node concept="pQlao" id="4ryo8lMsSJP" role="EZGxL">
          <ref role="pQlar" node="4ryo8lMsM1H" resolve="cellTypeWhite" />
        </node>
        <node concept="pQlao" id="4ryo8lMsSJQ" role="EZGxL">
          <ref role="pQlar" to="zaie:34Rb5Oc3jw_" resolve="True" />
        </node>
        <node concept="pQlao" id="4ryo8lMsSJR" role="EZGxL">
          <ref role="pQlar" to="zaie:34Rb5Oc3jwF" resolve="False" />
        </node>
        <node concept="pQlao" id="4ryo8lMsSJS" role="EZGxL">
          <ref role="pQlar" to="zaie:34Rb5Oc3jwF" resolve="False" />
        </node>
        <node concept="pQlao" id="4ryo8lMsSJT" role="EZGxL">
          <ref role="pQlar" to="zaie:34Rb5Oc3jwF" resolve="False" />
        </node>
      </node>
    </node>
    <node concept="2a5yee" id="4ryo8lMsSLi" role="pRMhZ">
      <node concept="pQlao" id="4ryo8lMsSLj" role="2a5y9Q">
        <ref role="pQlar" node="4ryo8lMskK2" resolve="userCellToCell" />
        <node concept="pQlao" id="4ryo8lMsSLk" role="EZGxL">
          <ref role="pQlar" node="4ryo8lMrO1L" resolve="cellUpBlack" />
        </node>
      </node>
      <node concept="pQlao" id="4ryo8lMsSLl" role="2a5y9N">
        <ref role="pQlar" node="4ryo8lMsCK$" resolve="mkCell" />
        <node concept="pQlao" id="4ryo8lMsSLm" role="EZGxL">
          <ref role="pQlar" node="4ryo8lMsM3I" resolve="cellTypeBlack" />
        </node>
        <node concept="pQlao" id="4ryo8lMsSLn" role="EZGxL">
          <ref role="pQlar" to="zaie:34Rb5Oc3jw_" resolve="True" />
        </node>
        <node concept="pQlao" id="4ryo8lMsSLo" role="EZGxL">
          <ref role="pQlar" to="zaie:34Rb5Oc3jwF" resolve="False" />
        </node>
        <node concept="pQlao" id="4ryo8lMsSLp" role="EZGxL">
          <ref role="pQlar" to="zaie:34Rb5Oc3jwF" resolve="False" />
        </node>
        <node concept="pQlao" id="4ryo8lMsSLq" role="EZGxL">
          <ref role="pQlar" to="zaie:34Rb5Oc3jwF" resolve="False" />
        </node>
      </node>
    </node>
    <node concept="2a5yee" id="4ryo8lMsSMr" role="pRMhZ">
      <node concept="pQlao" id="4ryo8lMsSMs" role="2a5y9Q">
        <ref role="pQlar" node="4ryo8lMskK2" resolve="userCellToCell" />
        <node concept="pQlao" id="4ryo8lMsSMt" role="EZGxL">
          <ref role="pQlar" node="4ryo8lMrNyR" resolve="cellRight" />
        </node>
      </node>
      <node concept="pQlao" id="4ryo8lMsSMu" role="2a5y9N">
        <ref role="pQlar" node="4ryo8lMsCK$" resolve="mkCell" />
        <node concept="pQlao" id="4ryo8lMsSMw" role="EZGxL">
          <ref role="pQlar" node="4ryo8lMsLXR" resolve="cellTypeEmpty" />
        </node>
        <node concept="pQlao" id="4ryo8lMt8wt" role="EZGxL">
          <ref role="pQlar" to="zaie:34Rb5Oc3jwF" resolve="False" />
        </node>
        <node concept="pQlao" id="4ryo8lMsSMx" role="EZGxL">
          <ref role="pQlar" to="zaie:34Rb5Oc3jw_" resolve="True" />
        </node>
        <node concept="pQlao" id="4ryo8lMsSMy" role="EZGxL">
          <ref role="pQlar" to="zaie:34Rb5Oc3jwF" resolve="False" />
        </node>
        <node concept="pQlao" id="4ryo8lMsSMz" role="EZGxL">
          <ref role="pQlar" to="zaie:34Rb5Oc3jwF" resolve="False" />
        </node>
      </node>
    </node>
    <node concept="2a5yee" id="4ryo8lMsSOD" role="pRMhZ">
      <node concept="pQlao" id="4ryo8lMsSOE" role="2a5y9Q">
        <ref role="pQlar" node="4ryo8lMskK2" resolve="userCellToCell" />
        <node concept="pQlao" id="4ryo8lMsSOF" role="EZGxL">
          <ref role="pQlar" node="4ryo8lMrO3I" resolve="cellRightWhite" />
        </node>
      </node>
      <node concept="pQlao" id="4ryo8lMsSOG" role="2a5y9N">
        <ref role="pQlar" node="4ryo8lMsCK$" resolve="mkCell" />
        <node concept="pQlao" id="4ryo8lMsSOH" role="EZGxL">
          <ref role="pQlar" node="4ryo8lMsM1H" resolve="cellTypeWhite" />
        </node>
        <node concept="pQlao" id="4ryo8lMsSOI" role="EZGxL">
          <ref role="pQlar" to="zaie:34Rb5Oc3jwF" resolve="False" />
        </node>
        <node concept="pQlao" id="4ryo8lMsSOJ" role="EZGxL">
          <ref role="pQlar" to="zaie:34Rb5Oc3jw_" resolve="True" />
        </node>
        <node concept="pQlao" id="4ryo8lMsSOK" role="EZGxL">
          <ref role="pQlar" to="zaie:34Rb5Oc3jwF" resolve="False" />
        </node>
        <node concept="pQlao" id="4ryo8lMsSOL" role="EZGxL">
          <ref role="pQlar" to="zaie:34Rb5Oc3jwF" resolve="False" />
        </node>
      </node>
    </node>
    <node concept="2a5yee" id="4ryo8lMsSQ4" role="pRMhZ">
      <node concept="pQlao" id="4ryo8lMsSQ5" role="2a5y9Q">
        <ref role="pQlar" node="4ryo8lMskK2" resolve="userCellToCell" />
        <node concept="pQlao" id="4ryo8lMsSQ6" role="EZGxL">
          <ref role="pQlar" node="4ryo8lMrO5y" resolve="cellRightBlack" />
        </node>
      </node>
      <node concept="pQlao" id="4ryo8lMsSQ7" role="2a5y9N">
        <ref role="pQlar" node="4ryo8lMsCK$" resolve="mkCell" />
        <node concept="pQlao" id="4ryo8lMsSQ8" role="EZGxL">
          <ref role="pQlar" node="4ryo8lMsM3I" resolve="cellTypeBlack" />
        </node>
        <node concept="pQlao" id="4ryo8lMsSQ9" role="EZGxL">
          <ref role="pQlar" to="zaie:34Rb5Oc3jwF" resolve="False" />
        </node>
        <node concept="pQlao" id="4ryo8lMsSQa" role="EZGxL">
          <ref role="pQlar" to="zaie:34Rb5Oc3jw_" resolve="True" />
        </node>
        <node concept="pQlao" id="4ryo8lMsSQb" role="EZGxL">
          <ref role="pQlar" to="zaie:34Rb5Oc3jwF" resolve="False" />
        </node>
        <node concept="pQlao" id="4ryo8lMsSQc" role="EZGxL">
          <ref role="pQlar" to="zaie:34Rb5Oc3jwF" resolve="False" />
        </node>
      </node>
    </node>
    <node concept="2a5yee" id="4ryo8lMsSRF" role="pRMhZ">
      <node concept="pQlao" id="4ryo8lMsSRG" role="2a5y9Q">
        <ref role="pQlar" node="4ryo8lMskK2" resolve="userCellToCell" />
        <node concept="pQlao" id="4ryo8lMsSRH" role="EZGxL">
          <ref role="pQlar" node="4ryo8lMrN$w" resolve="cellDown" />
        </node>
      </node>
      <node concept="pQlao" id="4ryo8lMsSRI" role="2a5y9N">
        <ref role="pQlar" node="4ryo8lMsCK$" resolve="mkCell" />
        <node concept="pQlao" id="4ryo8lMsSRJ" role="EZGxL">
          <ref role="pQlar" node="4ryo8lMsLXR" resolve="cellTypeEmpty" />
        </node>
        <node concept="pQlao" id="4ryo8lMsSRK" role="EZGxL">
          <ref role="pQlar" to="zaie:34Rb5Oc3jwF" resolve="False" />
        </node>
        <node concept="pQlao" id="4ryo8lMsSRL" role="EZGxL">
          <ref role="pQlar" to="zaie:34Rb5Oc3jwF" resolve="False" />
        </node>
        <node concept="pQlao" id="4ryo8lMsSRM" role="EZGxL">
          <ref role="pQlar" to="zaie:34Rb5Oc3jw_" resolve="True" />
        </node>
        <node concept="pQlao" id="4ryo8lMsSRN" role="EZGxL">
          <ref role="pQlar" to="zaie:34Rb5Oc3jwF" resolve="False" />
        </node>
      </node>
    </node>
    <node concept="2a5yee" id="4ryo8lMsSTo" role="pRMhZ">
      <node concept="pQlao" id="4ryo8lMsSTp" role="2a5y9Q">
        <ref role="pQlar" node="4ryo8lMskK2" resolve="userCellToCell" />
        <node concept="pQlao" id="4ryo8lMsSTq" role="EZGxL">
          <ref role="pQlar" node="4ryo8lMrO7s" resolve="cellDownWhite" />
        </node>
      </node>
      <node concept="pQlao" id="4ryo8lMsSTr" role="2a5y9N">
        <ref role="pQlar" node="4ryo8lMsCK$" resolve="mkCell" />
        <node concept="pQlao" id="4ryo8lMsSTs" role="EZGxL">
          <ref role="pQlar" node="4ryo8lMsM1H" resolve="cellTypeWhite" />
        </node>
        <node concept="pQlao" id="4ryo8lMsSTt" role="EZGxL">
          <ref role="pQlar" to="zaie:34Rb5Oc3jwF" resolve="False" />
        </node>
        <node concept="pQlao" id="4ryo8lMsSTu" role="EZGxL">
          <ref role="pQlar" to="zaie:34Rb5Oc3jwF" resolve="False" />
        </node>
        <node concept="pQlao" id="4ryo8lMsSTv" role="EZGxL">
          <ref role="pQlar" to="zaie:34Rb5Oc3jw_" resolve="True" />
        </node>
        <node concept="pQlao" id="4ryo8lMsSTw" role="EZGxL">
          <ref role="pQlar" to="zaie:34Rb5Oc3jwF" resolve="False" />
        </node>
      </node>
    </node>
    <node concept="2a5yee" id="4ryo8lMsSVe" role="pRMhZ">
      <node concept="pQlao" id="4ryo8lMsSVf" role="2a5y9Q">
        <ref role="pQlar" node="4ryo8lMskK2" resolve="userCellToCell" />
        <node concept="pQlao" id="4ryo8lMsSVg" role="EZGxL">
          <ref role="pQlar" node="4ryo8lMrO9n" resolve="cellDownBlack" />
        </node>
      </node>
      <node concept="pQlao" id="4ryo8lMsSVh" role="2a5y9N">
        <ref role="pQlar" node="4ryo8lMsCK$" resolve="mkCell" />
        <node concept="pQlao" id="4ryo8lMsSVi" role="EZGxL">
          <ref role="pQlar" node="4ryo8lMsM3I" resolve="cellTypeBlack" />
        </node>
        <node concept="pQlao" id="4ryo8lMsSVj" role="EZGxL">
          <ref role="pQlar" to="zaie:34Rb5Oc3jwF" resolve="False" />
        </node>
        <node concept="pQlao" id="4ryo8lMsSVk" role="EZGxL">
          <ref role="pQlar" to="zaie:34Rb5Oc3jwF" resolve="False" />
        </node>
        <node concept="pQlao" id="4ryo8lMsSVl" role="EZGxL">
          <ref role="pQlar" to="zaie:34Rb5Oc3jw_" resolve="True" />
        </node>
        <node concept="pQlao" id="4ryo8lMsSVm" role="EZGxL">
          <ref role="pQlar" to="zaie:34Rb5Oc3jwF" resolve="False" />
        </node>
      </node>
    </node>
    <node concept="2a5yee" id="4ryo8lMsSXd" role="pRMhZ">
      <node concept="pQlao" id="4ryo8lMsSXe" role="2a5y9Q">
        <ref role="pQlar" node="4ryo8lMskK2" resolve="userCellToCell" />
        <node concept="pQlao" id="4ryo8lMsSXf" role="EZGxL">
          <ref role="pQlar" node="4ryo8lMrNA6" resolve="cellLeft" />
        </node>
      </node>
      <node concept="pQlao" id="4ryo8lMsSXg" role="2a5y9N">
        <ref role="pQlar" node="4ryo8lMsCK$" resolve="mkCell" />
        <node concept="pQlao" id="4ryo8lMsSXh" role="EZGxL">
          <ref role="pQlar" node="4ryo8lMsLXR" resolve="cellTypeEmpty" />
        </node>
        <node concept="pQlao" id="4ryo8lMsSXi" role="EZGxL">
          <ref role="pQlar" to="zaie:34Rb5Oc3jwF" resolve="False" />
        </node>
        <node concept="pQlao" id="4ryo8lMsSXj" role="EZGxL">
          <ref role="pQlar" to="zaie:34Rb5Oc3jwF" resolve="False" />
        </node>
        <node concept="pQlao" id="4ryo8lMsSXk" role="EZGxL">
          <ref role="pQlar" to="zaie:34Rb5Oc3jwF" resolve="False" />
        </node>
        <node concept="pQlao" id="4ryo8lMsSXl" role="EZGxL">
          <ref role="pQlar" to="zaie:34Rb5Oc3jw_" resolve="True" />
        </node>
      </node>
    </node>
    <node concept="2a5yee" id="4ryo8lMsT29" role="pRMhZ">
      <node concept="pQlao" id="4ryo8lMsT2a" role="2a5y9Q">
        <ref role="pQlar" node="4ryo8lMskK2" resolve="userCellToCell" />
        <node concept="pQlao" id="4ryo8lMsT2b" role="EZGxL">
          <ref role="pQlar" node="4ryo8lMrObo" resolve="cellLeftWhite" />
        </node>
      </node>
      <node concept="pQlao" id="4ryo8lMsT2c" role="2a5y9N">
        <ref role="pQlar" node="4ryo8lMsCK$" resolve="mkCell" />
        <node concept="pQlao" id="4ryo8lMsT2d" role="EZGxL">
          <ref role="pQlar" node="4ryo8lMsM1H" resolve="cellTypeWhite" />
        </node>
        <node concept="pQlao" id="4ryo8lMsT2e" role="EZGxL">
          <ref role="pQlar" to="zaie:34Rb5Oc3jwF" resolve="False" />
        </node>
        <node concept="pQlao" id="4ryo8lMsT2f" role="EZGxL">
          <ref role="pQlar" to="zaie:34Rb5Oc3jwF" resolve="False" />
        </node>
        <node concept="pQlao" id="4ryo8lMsT2g" role="EZGxL">
          <ref role="pQlar" to="zaie:34Rb5Oc3jwF" resolve="False" />
        </node>
        <node concept="pQlao" id="4ryo8lMsT2h" role="EZGxL">
          <ref role="pQlar" to="zaie:34Rb5Oc3jw_" resolve="True" />
        </node>
      </node>
    </node>
    <node concept="2a5yee" id="4ryo8lMsT4V" role="pRMhZ">
      <node concept="pQlao" id="4ryo8lMsT4W" role="2a5y9Q">
        <ref role="pQlar" node="4ryo8lMskK2" resolve="userCellToCell" />
        <node concept="pQlao" id="4ryo8lMsT4X" role="EZGxL">
          <ref role="pQlar" node="4ryo8lMrOdh" resolve="cellLeftBlack" />
        </node>
      </node>
      <node concept="pQlao" id="4ryo8lMsT4Y" role="2a5y9N">
        <ref role="pQlar" node="4ryo8lMsCK$" resolve="mkCell" />
        <node concept="pQlao" id="4ryo8lMsT4Z" role="EZGxL">
          <ref role="pQlar" node="4ryo8lMsM3I" resolve="cellTypeBlack" />
        </node>
        <node concept="pQlao" id="4ryo8lMsT50" role="EZGxL">
          <ref role="pQlar" to="zaie:34Rb5Oc3jwF" resolve="False" />
        </node>
        <node concept="pQlao" id="4ryo8lMsT51" role="EZGxL">
          <ref role="pQlar" to="zaie:34Rb5Oc3jwF" resolve="False" />
        </node>
        <node concept="pQlao" id="4ryo8lMsT52" role="EZGxL">
          <ref role="pQlar" to="zaie:34Rb5Oc3jwF" resolve="False" />
        </node>
        <node concept="pQlao" id="4ryo8lMsT53" role="EZGxL">
          <ref role="pQlar" to="zaie:34Rb5Oc3jw_" resolve="True" />
        </node>
      </node>
    </node>
    <node concept="2a5yee" id="4ryo8lMsT7N" role="pRMhZ">
      <node concept="pQlao" id="4ryo8lMsT7O" role="2a5y9Q">
        <ref role="pQlar" node="4ryo8lMskK2" resolve="userCellToCell" />
        <node concept="pQlao" id="4ryo8lMsT7P" role="EZGxL">
          <ref role="pQlar" node="4ryo8lMrNBH" resolve="cellUpRight" />
        </node>
      </node>
      <node concept="pQlao" id="4ryo8lMsT7Q" role="2a5y9N">
        <ref role="pQlar" node="4ryo8lMsCK$" resolve="mkCell" />
        <node concept="pQlao" id="4ryo8lMsT7R" role="EZGxL">
          <ref role="pQlar" node="4ryo8lMsLXR" resolve="cellTypeEmpty" />
        </node>
        <node concept="pQlao" id="4ryo8lMsT7S" role="EZGxL">
          <ref role="pQlar" to="zaie:34Rb5Oc3jw_" resolve="True" />
        </node>
        <node concept="pQlao" id="4ryo8lMsT7T" role="EZGxL">
          <ref role="pQlar" to="zaie:34Rb5Oc3jw_" resolve="True" />
        </node>
        <node concept="pQlao" id="4ryo8lMsT7U" role="EZGxL">
          <ref role="pQlar" to="zaie:34Rb5Oc3jwF" resolve="False" />
        </node>
        <node concept="pQlao" id="4ryo8lMsT7V" role="EZGxL">
          <ref role="pQlar" to="zaie:34Rb5Oc3jwF" resolve="False" />
        </node>
      </node>
    </node>
    <node concept="2a5yee" id="4ryo8lMsTam" role="pRMhZ">
      <node concept="pQlao" id="4ryo8lMsTan" role="2a5y9Q">
        <ref role="pQlar" node="4ryo8lMskK2" resolve="userCellToCell" />
        <node concept="pQlao" id="4ryo8lMsTao" role="EZGxL">
          <ref role="pQlar" node="4ryo8lMrOfy" resolve="cellUpRightBlack" />
        </node>
      </node>
      <node concept="pQlao" id="4ryo8lMsTap" role="2a5y9N">
        <ref role="pQlar" node="4ryo8lMsCK$" resolve="mkCell" />
        <node concept="pQlao" id="4ryo8lMsTaq" role="EZGxL">
          <ref role="pQlar" node="4ryo8lMsM3I" resolve="cellTypeBlack" />
        </node>
        <node concept="pQlao" id="4ryo8lMsTar" role="EZGxL">
          <ref role="pQlar" to="zaie:34Rb5Oc3jw_" resolve="True" />
        </node>
        <node concept="pQlao" id="4ryo8lMsTas" role="EZGxL">
          <ref role="pQlar" to="zaie:34Rb5Oc3jw_" resolve="True" />
        </node>
        <node concept="pQlao" id="4ryo8lMsTat" role="EZGxL">
          <ref role="pQlar" to="zaie:34Rb5Oc3jwF" resolve="False" />
        </node>
        <node concept="pQlao" id="4ryo8lMsTau" role="EZGxL">
          <ref role="pQlar" to="zaie:34Rb5Oc3jwF" resolve="False" />
        </node>
      </node>
    </node>
    <node concept="2a5yee" id="4ryo8lMsTd5" role="pRMhZ">
      <node concept="pQlao" id="4ryo8lMsTd6" role="2a5y9Q">
        <ref role="pQlar" node="4ryo8lMskK2" resolve="userCellToCell" />
        <node concept="pQlao" id="4ryo8lMsTd7" role="EZGxL">
          <ref role="pQlar" node="4ryo8lMrNDu" resolve="cellRightDown" />
        </node>
      </node>
      <node concept="pQlao" id="4ryo8lMsTd8" role="2a5y9N">
        <ref role="pQlar" node="4ryo8lMsCK$" resolve="mkCell" />
        <node concept="pQlao" id="4ryo8lMsTd9" role="EZGxL">
          <ref role="pQlar" node="4ryo8lMsLXR" resolve="cellTypeEmpty" />
        </node>
        <node concept="pQlao" id="4ryo8lMsTda" role="EZGxL">
          <ref role="pQlar" to="zaie:34Rb5Oc3jwF" resolve="False" />
        </node>
        <node concept="pQlao" id="4ryo8lMsTdb" role="EZGxL">
          <ref role="pQlar" to="zaie:34Rb5Oc3jw_" resolve="True" />
        </node>
        <node concept="pQlao" id="4ryo8lMsTdc" role="EZGxL">
          <ref role="pQlar" to="zaie:34Rb5Oc3jw_" resolve="True" />
        </node>
        <node concept="pQlao" id="4ryo8lMsTdd" role="EZGxL">
          <ref role="pQlar" to="zaie:34Rb5Oc3jwF" resolve="False" />
        </node>
      </node>
    </node>
    <node concept="2a5yee" id="4ryo8lMsThk" role="pRMhZ">
      <node concept="pQlao" id="4ryo8lMsThl" role="2a5y9Q">
        <ref role="pQlar" node="4ryo8lMskK2" resolve="userCellToCell" />
        <node concept="pQlao" id="4ryo8lMsThm" role="EZGxL">
          <ref role="pQlar" node="4ryo8lMrOhT" resolve="cellRightDownBlack" />
        </node>
      </node>
      <node concept="pQlao" id="4ryo8lMsThn" role="2a5y9N">
        <ref role="pQlar" node="4ryo8lMsCK$" resolve="mkCell" />
        <node concept="pQlao" id="4ryo8lMsTho" role="EZGxL">
          <ref role="pQlar" node="4ryo8lMsM3I" resolve="cellTypeBlack" />
        </node>
        <node concept="pQlao" id="4ryo8lMsThp" role="EZGxL">
          <ref role="pQlar" to="zaie:34Rb5Oc3jwF" resolve="False" />
        </node>
        <node concept="pQlao" id="4ryo8lMsThq" role="EZGxL">
          <ref role="pQlar" to="zaie:34Rb5Oc3jw_" resolve="True" />
        </node>
        <node concept="pQlao" id="4ryo8lMsThr" role="EZGxL">
          <ref role="pQlar" to="zaie:34Rb5Oc3jw_" resolve="True" />
        </node>
        <node concept="pQlao" id="4ryo8lMsThs" role="EZGxL">
          <ref role="pQlar" to="zaie:34Rb5Oc3jwF" resolve="False" />
        </node>
      </node>
    </node>
    <node concept="2a5yee" id="4ryo8lMsTki" role="pRMhZ">
      <node concept="pQlao" id="4ryo8lMsTkj" role="2a5y9Q">
        <ref role="pQlar" node="4ryo8lMskK2" resolve="userCellToCell" />
        <node concept="pQlao" id="4ryo8lMsTkk" role="EZGxL">
          <ref role="pQlar" node="4ryo8lMrNFp" resolve="cellLeftDown" />
        </node>
      </node>
      <node concept="pQlao" id="4ryo8lMsTkl" role="2a5y9N">
        <ref role="pQlar" node="4ryo8lMsCK$" resolve="mkCell" />
        <node concept="pQlao" id="4ryo8lMsTkm" role="EZGxL">
          <ref role="pQlar" node="4ryo8lMsLXR" resolve="cellTypeEmpty" />
        </node>
        <node concept="pQlao" id="4ryo8lMsTkn" role="EZGxL">
          <ref role="pQlar" to="zaie:34Rb5Oc3jwF" resolve="False" />
        </node>
        <node concept="pQlao" id="4ryo8lMsTko" role="EZGxL">
          <ref role="pQlar" to="zaie:34Rb5Oc3jwF" resolve="False" />
        </node>
        <node concept="pQlao" id="4ryo8lMsTkp" role="EZGxL">
          <ref role="pQlar" to="zaie:34Rb5Oc3jw_" resolve="True" />
        </node>
        <node concept="pQlao" id="4ryo8lMsTkq" role="EZGxL">
          <ref role="pQlar" to="zaie:34Rb5Oc3jw_" resolve="True" />
        </node>
      </node>
    </node>
    <node concept="2a5yee" id="4ryo8lMsTol" role="pRMhZ">
      <node concept="pQlao" id="4ryo8lMsTom" role="2a5y9Q">
        <ref role="pQlar" node="4ryo8lMskK2" resolve="userCellToCell" />
        <node concept="pQlao" id="4ryo8lMsTon" role="EZGxL">
          <ref role="pQlar" node="4ryo8lMrOk0" resolve="cellLeftDownBlack" />
        </node>
      </node>
      <node concept="pQlao" id="4ryo8lMsToo" role="2a5y9N">
        <ref role="pQlar" node="4ryo8lMsCK$" resolve="mkCell" />
        <node concept="pQlao" id="4ryo8lMsTop" role="EZGxL">
          <ref role="pQlar" node="4ryo8lMsM3I" resolve="cellTypeBlack" />
        </node>
        <node concept="pQlao" id="4ryo8lMsToq" role="EZGxL">
          <ref role="pQlar" to="zaie:34Rb5Oc3jwF" resolve="False" />
        </node>
        <node concept="pQlao" id="4ryo8lMsTor" role="EZGxL">
          <ref role="pQlar" to="zaie:34Rb5Oc3jwF" resolve="False" />
        </node>
        <node concept="pQlao" id="4ryo8lMsTos" role="EZGxL">
          <ref role="pQlar" to="zaie:34Rb5Oc3jw_" resolve="True" />
        </node>
        <node concept="pQlao" id="4ryo8lMsTot" role="EZGxL">
          <ref role="pQlar" to="zaie:34Rb5Oc3jw_" resolve="True" />
        </node>
      </node>
    </node>
    <node concept="2a5yee" id="4ryo8lMsTr_" role="pRMhZ">
      <node concept="pQlao" id="4ryo8lMsTrA" role="2a5y9Q">
        <ref role="pQlar" node="4ryo8lMskK2" resolve="userCellToCell" />
        <node concept="pQlao" id="4ryo8lMsTrB" role="EZGxL">
          <ref role="pQlar" node="4ryo8lMrNH9" resolve="cellUpLeft" />
        </node>
      </node>
      <node concept="pQlao" id="4ryo8lMsTrC" role="2a5y9N">
        <ref role="pQlar" node="4ryo8lMsCK$" resolve="mkCell" />
        <node concept="pQlao" id="4ryo8lMsTrD" role="EZGxL">
          <ref role="pQlar" node="4ryo8lMsLXR" resolve="cellTypeEmpty" />
        </node>
        <node concept="pQlao" id="4ryo8lMsTrE" role="EZGxL">
          <ref role="pQlar" to="zaie:34Rb5Oc3jw_" resolve="True" />
        </node>
        <node concept="pQlao" id="4ryo8lMsTrF" role="EZGxL">
          <ref role="pQlar" to="zaie:34Rb5Oc3jwF" resolve="False" />
        </node>
        <node concept="pQlao" id="4ryo8lMsTrG" role="EZGxL">
          <ref role="pQlar" to="zaie:34Rb5Oc3jwF" resolve="False" />
        </node>
        <node concept="pQlao" id="4ryo8lMsTrH" role="EZGxL">
          <ref role="pQlar" to="zaie:34Rb5Oc3jw_" resolve="True" />
        </node>
      </node>
    </node>
    <node concept="2a5yee" id="4ryo8lMsTv1" role="pRMhZ">
      <node concept="pQlao" id="4ryo8lMsTv2" role="2a5y9Q">
        <ref role="pQlar" node="4ryo8lMskK2" resolve="userCellToCell" />
        <node concept="pQlao" id="4ryo8lMsTv3" role="EZGxL">
          <ref role="pQlar" node="4ryo8lMrOmi" resolve="cellUpLeftBlack" />
        </node>
      </node>
      <node concept="pQlao" id="4ryo8lMsTv4" role="2a5y9N">
        <ref role="pQlar" node="4ryo8lMsCK$" resolve="mkCell" />
        <node concept="pQlao" id="4ryo8lMsTv5" role="EZGxL">
          <ref role="pQlar" node="4ryo8lMsM3I" resolve="cellTypeBlack" />
        </node>
        <node concept="pQlao" id="4ryo8lMsTv6" role="EZGxL">
          <ref role="pQlar" to="zaie:34Rb5Oc3jw_" resolve="True" />
        </node>
        <node concept="pQlao" id="4ryo8lMsTv7" role="EZGxL">
          <ref role="pQlar" to="zaie:34Rb5Oc3jwF" resolve="False" />
        </node>
        <node concept="pQlao" id="4ryo8lMsTv8" role="EZGxL">
          <ref role="pQlar" to="zaie:34Rb5Oc3jwF" resolve="False" />
        </node>
        <node concept="pQlao" id="4ryo8lMsTv9" role="EZGxL">
          <ref role="pQlar" to="zaie:34Rb5Oc3jw_" resolve="True" />
        </node>
      </node>
    </node>
    <node concept="2a5yee" id="4ryo8lMsTyz" role="pRMhZ">
      <node concept="pQlao" id="4ryo8lMsTy$" role="2a5y9Q">
        <ref role="pQlar" node="4ryo8lMskK2" resolve="userCellToCell" />
        <node concept="pQlao" id="4ryo8lMsTy_" role="EZGxL">
          <ref role="pQlar" node="4ryo8lMrNIY" resolve="cellUpDown" />
        </node>
      </node>
      <node concept="pQlao" id="4ryo8lMsTyA" role="2a5y9N">
        <ref role="pQlar" node="4ryo8lMsCK$" resolve="mkCell" />
        <node concept="pQlao" id="4ryo8lMsTyB" role="EZGxL">
          <ref role="pQlar" node="4ryo8lMsLXR" resolve="cellTypeEmpty" />
        </node>
        <node concept="pQlao" id="4ryo8lMsTyC" role="EZGxL">
          <ref role="pQlar" to="zaie:34Rb5Oc3jw_" resolve="True" />
        </node>
        <node concept="pQlao" id="4ryo8lMsTyD" role="EZGxL">
          <ref role="pQlar" to="zaie:34Rb5Oc3jwF" resolve="False" />
        </node>
        <node concept="pQlao" id="4ryo8lMsTyE" role="EZGxL">
          <ref role="pQlar" to="zaie:34Rb5Oc3jw_" resolve="True" />
        </node>
        <node concept="pQlao" id="4ryo8lMsTyF" role="EZGxL">
          <ref role="pQlar" to="zaie:34Rb5Oc3jwF" resolve="False" />
        </node>
      </node>
    </node>
    <node concept="2a5yee" id="4ryo8lMsTAe" role="pRMhZ">
      <node concept="pQlao" id="4ryo8lMsTAf" role="2a5y9Q">
        <ref role="pQlar" node="4ryo8lMskK2" resolve="userCellToCell" />
        <node concept="pQlao" id="4ryo8lMsTAg" role="EZGxL">
          <ref role="pQlar" node="4ryo8lMrOot" resolve="cellUpDownWhite" />
        </node>
      </node>
      <node concept="pQlao" id="4ryo8lMsTAh" role="2a5y9N">
        <ref role="pQlar" node="4ryo8lMsCK$" resolve="mkCell" />
        <node concept="pQlao" id="4ryo8lMsTAi" role="EZGxL">
          <ref role="pQlar" node="4ryo8lMsM1H" resolve="cellTypeWhite" />
        </node>
        <node concept="pQlao" id="4ryo8lMsTAj" role="EZGxL">
          <ref role="pQlar" to="zaie:34Rb5Oc3jw_" resolve="True" />
        </node>
        <node concept="pQlao" id="4ryo8lMsTAk" role="EZGxL">
          <ref role="pQlar" to="zaie:34Rb5Oc3jwF" resolve="False" />
        </node>
        <node concept="pQlao" id="4ryo8lMsTAl" role="EZGxL">
          <ref role="pQlar" to="zaie:34Rb5Oc3jw_" resolve="True" />
        </node>
        <node concept="pQlao" id="4ryo8lMsTAm" role="EZGxL">
          <ref role="pQlar" to="zaie:34Rb5Oc3jwF" resolve="False" />
        </node>
      </node>
    </node>
    <node concept="2a5yee" id="4ryo8lMsTE2" role="pRMhZ">
      <node concept="pQlao" id="4ryo8lMsTE3" role="2a5y9Q">
        <ref role="pQlar" node="4ryo8lMskK2" resolve="userCellToCell" />
        <node concept="pQlao" id="4ryo8lMsTE4" role="EZGxL">
          <ref role="pQlar" node="4ryo8lMrNKG" resolve="cellLeftRight" />
        </node>
      </node>
      <node concept="pQlao" id="4ryo8lMsTE5" role="2a5y9N">
        <ref role="pQlar" node="4ryo8lMsCK$" resolve="mkCell" />
        <node concept="pQlao" id="4ryo8lMsTE6" role="EZGxL">
          <ref role="pQlar" node="4ryo8lMsLXR" resolve="cellTypeEmpty" />
        </node>
        <node concept="pQlao" id="4ryo8lMsTE7" role="EZGxL">
          <ref role="pQlar" to="zaie:34Rb5Oc3jwF" resolve="False" />
        </node>
        <node concept="pQlao" id="4ryo8lMsTE8" role="EZGxL">
          <ref role="pQlar" to="zaie:34Rb5Oc3jw_" resolve="True" />
        </node>
        <node concept="pQlao" id="4ryo8lMsTE9" role="EZGxL">
          <ref role="pQlar" to="zaie:34Rb5Oc3jwF" resolve="False" />
        </node>
        <node concept="pQlao" id="4ryo8lMsTEa" role="EZGxL">
          <ref role="pQlar" to="zaie:34Rb5Oc3jw_" resolve="True" />
        </node>
      </node>
    </node>
    <node concept="2a5yee" id="4ryo8lMsTI2" role="pRMhZ">
      <node concept="pQlao" id="4ryo8lMsTI3" role="2a5y9Q">
        <ref role="pQlar" node="4ryo8lMskK2" resolve="userCellToCell" />
        <node concept="pQlao" id="4ryo8lMsTI4" role="EZGxL">
          <ref role="pQlar" node="4ryo8lMrOqB" resolve="cellLeftRightWhite" />
        </node>
      </node>
      <node concept="pQlao" id="4ryo8lMsTI5" role="2a5y9N">
        <ref role="pQlar" node="4ryo8lMsCK$" resolve="mkCell" />
        <node concept="pQlao" id="4ryo8lMsTI6" role="EZGxL">
          <ref role="pQlar" node="4ryo8lMsM1H" resolve="cellTypeWhite" />
        </node>
        <node concept="pQlao" id="4ryo8lMsTI7" role="EZGxL">
          <ref role="pQlar" to="zaie:34Rb5Oc3jwF" resolve="False" />
        </node>
        <node concept="pQlao" id="4ryo8lMsTI8" role="EZGxL">
          <ref role="pQlar" to="zaie:34Rb5Oc3jw_" resolve="True" />
        </node>
        <node concept="pQlao" id="4ryo8lMsTI9" role="EZGxL">
          <ref role="pQlar" to="zaie:34Rb5Oc3jwF" resolve="False" />
        </node>
        <node concept="pQlao" id="4ryo8lMsTIa" role="EZGxL">
          <ref role="pQlar" to="zaie:34Rb5Oc3jw_" resolve="True" />
        </node>
      </node>
    </node>
    <node concept="3DQ70j" id="4ryo8lMBuSX" role="lGtFl">
      <property role="3V$3am" value="axioms" />
      <property role="3V$3ak" value="b4fcd96f-fa06-46a4-9520-beaeb32aa9a1/8445081754001417286/6300386900480908542" />
    </node>
    <node concept="2a5yee" id="4ryo8lMBuKv" role="pRMhZ">
      <node concept="pQlao" id="4ryo8lMBv1s" role="2a5y9Q">
        <ref role="pQlar" node="4ryo8lMBu_N" resolve="emptyCell" />
      </node>
      <node concept="pQlao" id="4ryo8lMBv28" role="2a5y9N">
        <ref role="pQlar" node="4ryo8lMsCK$" resolve="mkCell" />
        <node concept="pQlao" id="4ryo8lMB$5j" role="EZGxL">
          <ref role="pQlar" node="4ryo8lMsLXR" resolve="cellTypeEmpty" />
        </node>
        <node concept="pQlao" id="4ryo8lMB_xF" role="EZGxL">
          <ref role="pQlar" to="zaie:34Rb5Oc3jwF" resolve="False" />
        </node>
        <node concept="pQlao" id="4ryo8lMBAYa" role="EZGxL">
          <ref role="pQlar" to="zaie:34Rb5Oc3jwF" resolve="False" />
        </node>
        <node concept="pQlao" id="4ryo8lMBCqJ" role="EZGxL">
          <ref role="pQlar" to="zaie:34Rb5Oc3jwF" resolve="False" />
        </node>
        <node concept="pQlao" id="4ryo8lMBDRC" role="EZGxL">
          <ref role="pQlar" to="zaie:34Rb5Oc3jwF" resolve="False" />
        </node>
      </node>
    </node>
    <node concept="2a5yee" id="4ryo8lMDeXZ" role="pRMhZ">
      <node concept="pQlao" id="4ryo8lMDf77" role="2a5y9Q">
        <ref role="pQlar" node="4ryo8lMDapX" resolve="emptyRow" />
      </node>
      <node concept="pQlao" id="4ryo8lMDf7k" role="2a5y9N">
        <ref role="pQlar" node="4ryo8lMtJig" resolve="mkRow" />
        <node concept="pQlao" id="4ryo8lMDfRA" role="EZGxL">
          <ref role="pQlar" node="4ryo8lMBu_N" resolve="emptyCell" />
        </node>
        <node concept="pQlao" id="4ryo8lMDhof" role="EZGxL">
          <ref role="pQlar" node="4ryo8lMBu_N" resolve="emptyCell" />
        </node>
        <node concept="pQlao" id="4ryo8lMDiST" role="EZGxL">
          <ref role="pQlar" node="4ryo8lMBu_N" resolve="emptyCell" />
        </node>
        <node concept="pQlao" id="4ryo8lMDkpD" role="EZGxL">
          <ref role="pQlar" node="4ryo8lMBu_N" resolve="emptyCell" />
        </node>
        <node concept="pQlao" id="4ryo8lMDlUE" role="EZGxL">
          <ref role="pQlar" node="4ryo8lMBu_N" resolve="emptyCell" />
        </node>
      </node>
    </node>
    <node concept="3DQ70j" id="4ryo8lMuNNl" role="lGtFl">
      <property role="3V$3am" value="axioms" />
      <property role="3V$3ak" value="b4fcd96f-fa06-46a4-9520-beaeb32aa9a1/8445081754001417286/6300386900480908542" />
    </node>
    <node concept="2a5yee" id="4ryo8lM_M34" role="pRMhZ">
      <node concept="pQlao" id="4ryo8lM_RRl" role="2a5y9Q">
        <property role="3IYp45" value="true" />
        <ref role="pQlar" node="4ryo8lM_LTh" resolve="starRowFromRows" />
        <node concept="pQlao" id="4ryo8lMArIB" role="EZGxL">
          <ref role="pQlar" node="4ryo8lMtJig" resolve="mkRow" />
          <node concept="3O66mJ" id="4ryo8lMALNI" role="EZGxL">
            <ref role="3O66mG" node="3rXORfo9uYJ" resolve="cell1" />
          </node>
          <node concept="3O66mJ" id="4ryo8lMANfA" role="EZGxL">
            <ref role="3O66mG" node="4ryo8lMtLjd" resolve="cell2" />
          </node>
          <node concept="3O66mJ" id="4ryo8lMAOFC" role="EZGxL">
            <ref role="3O66mG" node="4ryo8lMukas" resolve="cell3" />
          </node>
          <node concept="3O66mJ" id="4ryo8lMAQPF" role="EZGxL">
            <ref role="3O66mG" node="4ryo8lMukDt" resolve="cell4" />
          </node>
          <node concept="3O66mJ" id="4ryo8lMAT04" role="EZGxL">
            <ref role="3O66mG" node="4ryo8lMul8p" resolve="cell5" />
          </node>
        </node>
        <node concept="pQlao" id="4ryo8lMAy3y" role="EZGxL">
          <ref role="pQlar" node="4ryo8lMtJig" resolve="mkRow" />
          <node concept="3O66mJ" id="4ryo8lMB3QB" role="EZGxL">
            <ref role="3O66mG" node="4ryo8lMAUsD" resolve="cell6" />
          </node>
          <node concept="3O66mJ" id="4ryo8lMB5io" role="EZGxL">
            <ref role="3O66mG" node="4ryo8lMAVaZ" resolve="cell7" />
          </node>
          <node concept="3O66mJ" id="4ryo8lMB6Id" role="EZGxL">
            <ref role="3O66mG" node="4ryo8lMAVTm" resolve="cell8" />
          </node>
          <node concept="3O66mJ" id="4ryo8lMB8ab" role="EZGxL">
            <ref role="3O66mG" node="4ryo8lMAWBL" resolve="cell9" />
          </node>
          <node concept="3O66mJ" id="4ryo8lMB9Aq" role="EZGxL">
            <ref role="3O66mG" node="4ryo8lMAXm7" resolve="cell10" />
          </node>
        </node>
        <node concept="pQlao" id="4ryo8lMAztu" role="EZGxL">
          <ref role="pQlar" node="4ryo8lMtJig" resolve="mkRow" />
          <node concept="3O66mJ" id="4ryo8lMBcun" role="EZGxL">
            <ref role="3O66mG" node="4ryo8lMAY4x" resolve="cell11" />
          </node>
          <node concept="3O66mJ" id="4ryo8lMBdch" role="EZGxL">
            <ref role="3O66mG" node="4ryo8lMAYMW" resolve="cell12" />
          </node>
          <node concept="3O66mJ" id="4ryo8lMBdUd" role="EZGxL">
            <ref role="3O66mG" node="4ryo8lMAZxl" resolve="cell13" />
          </node>
          <node concept="3O66mJ" id="4ryo8lMBeCd" role="EZGxL">
            <ref role="3O66mG" node="4ryo8lMB0fM" resolve="cell14" />
          </node>
          <node concept="3O66mJ" id="4ryo8lMBfms" role="EZGxL">
            <ref role="3O66mG" node="4ryo8lMB0Yg" resolve="cell15" />
          </node>
        </node>
      </node>
      <node concept="pQlao" id="4ryo8lM_Xc1" role="2a5y9N">
        <property role="3IYp45" value="true" />
        <ref role="pQlar" node="4ryo8lM$WLj" resolve="mkStarRow" />
        <node concept="pQlao" id="4ryo8lM_XQO" role="EZGxL">
          <ref role="pQlar" node="4ryo8lMyCg6" resolve="mkStar" />
          <node concept="3O66mJ" id="4ryo8lMBhwM" role="EZGxL">
            <ref role="3O66mG" node="4ryo8lMAUsD" resolve="cell6" />
          </node>
          <node concept="3O66mJ" id="4ryo8lMBmyw" role="EZGxL">
            <ref role="3O66mG" node="3rXORfo9uYJ" resolve="cell1" />
          </node>
          <node concept="3O66mJ" id="4ryo8lMBnY4" role="EZGxL">
            <ref role="3O66mG" node="4ryo8lMAVaZ" resolve="cell7" />
          </node>
          <node concept="3O66mJ" id="4ryo8lMBq7t" role="EZGxL">
            <ref role="3O66mG" node="4ryo8lMAY4x" resolve="cell11" />
          </node>
          <node concept="pQlao" id="4ryo8lMBtHo" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMBu_N" resolve="emptyCell" />
          </node>
        </node>
        <node concept="pQlao" id="4ryo8lM_Zcp" role="EZGxL">
          <ref role="pQlar" node="4ryo8lMyCg6" resolve="mkStar" />
          <node concept="3O66mJ" id="4ryo8lMBjEY" role="EZGxL">
            <ref role="3O66mG" node="4ryo8lMAVaZ" resolve="cell7" />
          </node>
          <node concept="3O66mJ" id="4ryo8lMBIep" role="EZGxL">
            <ref role="3O66mG" node="4ryo8lMtLjd" resolve="cell2" />
          </node>
          <node concept="3O66mJ" id="4ryo8lMBJEE" role="EZGxL">
            <ref role="3O66mG" node="4ryo8lMAVTm" resolve="cell8" />
          </node>
          <node concept="3O66mJ" id="4ryo8lMBL74" role="EZGxL">
            <ref role="3O66mG" node="4ryo8lMAYMW" resolve="cell12" />
          </node>
          <node concept="3O66mJ" id="4ryo8lMBMzG" role="EZGxL">
            <ref role="3O66mG" node="4ryo8lMAUsD" resolve="cell6" />
          </node>
        </node>
        <node concept="pQlao" id="4ryo8lMA0y5" role="EZGxL">
          <ref role="pQlar" node="4ryo8lMyCg6" resolve="mkStar" />
          <node concept="3O66mJ" id="4ryo8lMBOIo" role="EZGxL">
            <ref role="3O66mG" node="4ryo8lMAVTm" resolve="cell8" />
          </node>
          <node concept="3O66mJ" id="4ryo8lMBQar" role="EZGxL">
            <ref role="3O66mG" node="4ryo8lMukas" resolve="cell3" />
          </node>
          <node concept="3O66mJ" id="4ryo8lMBRA_" role="EZGxL">
            <ref role="3O66mG" node="4ryo8lMAWBL" resolve="cell9" />
          </node>
          <node concept="3O66mJ" id="4ryo8lMBTKR" role="EZGxL">
            <ref role="3O66mG" node="4ryo8lMAZxl" resolve="cell13" />
          </node>
          <node concept="3O66mJ" id="4ryo8lMBVdo" role="EZGxL">
            <ref role="3O66mG" node="4ryo8lMAVaZ" resolve="cell7" />
          </node>
        </node>
        <node concept="pQlao" id="4ryo8lMA1RL" role="EZGxL">
          <ref role="pQlar" node="4ryo8lMyCg6" resolve="mkStar" />
          <node concept="3O66mJ" id="4ryo8lMBY5R" role="EZGxL">
            <ref role="3O66mG" node="4ryo8lMAWBL" resolve="cell9" />
          </node>
          <node concept="3O66mJ" id="4ryo8lMBZxK" role="EZGxL">
            <ref role="3O66mG" node="4ryo8lMukDt" resolve="cell4" />
          </node>
          <node concept="3O66mJ" id="4ryo8lMC0XK" role="EZGxL">
            <ref role="3O66mG" node="4ryo8lMAXm7" resolve="cell10" />
          </node>
          <node concept="3O66mJ" id="4ryo8lMC1FW" role="EZGxL">
            <ref role="3O66mG" node="4ryo8lMB0fM" resolve="cell14" />
          </node>
          <node concept="3O66mJ" id="4ryo8lMC38j" role="EZGxL">
            <ref role="3O66mG" node="4ryo8lMAVTm" resolve="cell8" />
          </node>
        </node>
        <node concept="pQlao" id="4ryo8lMA3dL" role="EZGxL">
          <ref role="pQlar" node="4ryo8lMyCg6" resolve="mkStar" />
          <node concept="3O66mJ" id="4ryo8lMC5ir" role="EZGxL">
            <ref role="3O66mG" node="4ryo8lMAXm7" resolve="cell10" />
          </node>
          <node concept="3O66mJ" id="4ryo8lMEGbh" role="EZGxL">
            <ref role="3O66mG" node="4ryo8lMul8p" resolve="cell5" />
          </node>
          <node concept="pQlao" id="4ryo8lMC8ac" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMBu_N" resolve="emptyCell" />
          </node>
          <node concept="3O66mJ" id="4ryo8lMC9Ab" role="EZGxL">
            <ref role="3O66mG" node="4ryo8lMB0Yg" resolve="cell15" />
          </node>
          <node concept="3O66mJ" id="4ryo8lMCb2o" role="EZGxL">
            <ref role="3O66mG" node="4ryo8lMAWBL" resolve="cell9" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3DQ70j" id="4ryo8lM_MaV" role="lGtFl">
      <property role="3V$3am" value="axioms" />
      <property role="3V$3ak" value="b4fcd96f-fa06-46a4-9520-beaeb32aa9a1/8445081754001417286/6300386900480908542" />
    </node>
    <node concept="2a5yee" id="4ryo8lMuNCV" role="pRMhZ">
      <node concept="pQlao" id="4ryo8lMuNS_" role="2a5y9Q">
        <ref role="pQlar" node="4ryo8lMuN8T" resolve="isCellStraight" />
        <node concept="pQlao" id="4ryo8lMuNSP" role="EZGxL">
          <property role="3IYp45" value="true" />
          <ref role="pQlar" node="4ryo8lMsCK$" resolve="mkCell" />
          <node concept="26K0MW" id="4ryo8lMuNT7" role="EZGxL" />
          <node concept="3O66mJ" id="4ryo8lMuTuA" role="EZGxL">
            <ref role="3O66mG" node="4ryo8lMtyg$" resolve="conn1" />
          </node>
          <node concept="3O66mJ" id="4ryo8lMuVx3" role="EZGxL">
            <ref role="3O66mG" node="4ryo8lMtyha" resolve="conn2" />
          </node>
          <node concept="3O66mJ" id="4ryo8lMuX2z" role="EZGxL">
            <ref role="3O66mG" node="4ryo8lMtyhm" resolve="conn3" />
          </node>
          <node concept="3O66mJ" id="4ryo8lMv_fX" role="EZGxL">
            <ref role="3O66mG" node="4ryo8lMtyhw" resolve="conn4" />
          </node>
        </node>
      </node>
      <node concept="pQlao" id="29Mcdkw3yiz" role="2a5y9N">
        <property role="3IYp45" value="true" />
        <ref role="pQlar" to="zaie:34Rb5OcqQZf" resolve="And" />
        <node concept="pQlao" id="29Mcdkw3$Kd" role="EZGxL">
          <property role="3IYp45" value="true" />
          <ref role="pQlar" to="zaie:34Rb5OcqQZf" resolve="And" />
          <node concept="pQlao" id="29Mcdkw3MLV" role="EZGxL">
            <ref role="pQlar" to="zaie:34Rb5Oc3jx3" resolve="Equal" />
            <node concept="3O66mJ" id="29Mcdkw3RJf" role="EZGxL">
              <ref role="3O66mG" node="4ryo8lMtyg$" resolve="conn1" />
            </node>
            <node concept="3O66mJ" id="29Mcdkw3Tph" role="EZGxL">
              <ref role="3O66mG" node="4ryo8lMtyhm" resolve="conn3" />
            </node>
          </node>
          <node concept="pQlao" id="29Mcdkw3OrE" role="EZGxL">
            <ref role="pQlar" to="zaie:34Rb5Oc3jx3" resolve="Equal" />
            <node concept="3O66mJ" id="29Mcdkw3Uep" role="EZGxL">
              <ref role="3O66mG" node="4ryo8lMtyha" resolve="conn2" />
            </node>
            <node concept="3O66mJ" id="29Mcdkw3VSy" role="EZGxL">
              <ref role="3O66mG" node="4ryo8lMtyhw" resolve="conn4" />
            </node>
          </node>
        </node>
        <node concept="pQlao" id="29Mcdkw4aPY" role="EZGxL">
          <ref role="pQlar" to="zaie:34Rb5Oc3jwP" resolve="Not" />
          <node concept="pQlao" id="29Mcdkw4bF7" role="EZGxL">
            <ref role="pQlar" to="zaie:34Rb5Oc3jx3" resolve="Equal" />
            <node concept="3O66mJ" id="29Mcdkw4cwc" role="EZGxL">
              <ref role="3O66mG" node="4ryo8lMtyg$" resolve="conn1" />
            </node>
            <node concept="3O66mJ" id="29Mcdkw4fOF" role="EZGxL">
              <ref role="3O66mG" node="4ryo8lMtyha" resolve="conn2" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3DQ70j" id="4ryo8lMtvaN" role="lGtFl">
      <property role="3V$3am" value="axioms" />
      <property role="3V$3ak" value="b4fcd96f-fa06-46a4-9520-beaeb32aa9a1/8445081754001417286/6300386900480908542" />
    </node>
    <node concept="2a5yee" id="4ryo8lMvkyZ" role="pRMhZ">
      <node concept="pQlao" id="4ryo8lMvkI1" role="2a5y9Q">
        <ref role="pQlar" node="4ryo8lMuNcc" resolve="isCellTurn" />
        <node concept="pQlao" id="4ryo8lMvkIk" role="EZGxL">
          <ref role="pQlar" node="4ryo8lMsCK$" resolve="mkCell" />
          <node concept="26K0MW" id="4ryo8lMvkIz" role="EZGxL" />
          <node concept="3O66mJ" id="4ryo8lMvlLF" role="EZGxL">
            <ref role="3O66mG" node="4ryo8lMtyg$" resolve="conn1" />
          </node>
          <node concept="3O66mJ" id="4ryo8lMvmOM" role="EZGxL">
            <ref role="3O66mG" node="4ryo8lMtyha" resolve="conn2" />
          </node>
          <node concept="3O66mJ" id="4ryo8lMvnS2" role="EZGxL">
            <ref role="3O66mG" node="4ryo8lMtyhm" resolve="conn3" />
          </node>
          <node concept="3O66mJ" id="4ryo8lMvzCA" role="EZGxL">
            <ref role="3O66mG" node="4ryo8lMtyhw" resolve="conn4" />
          </node>
        </node>
      </node>
      <node concept="pQlao" id="4ryo8lMvpt$" role="2a5y9N">
        <property role="3IYp45" value="true" />
        <ref role="pQlar" to="zaie:34Rb5OcqQZf" resolve="And" />
        <node concept="pQlao" id="4ryo8lMvpZw" role="EZGxL">
          <ref role="pQlar" to="zaie:34Rb5Oc3jwP" resolve="Not" />
          <node concept="pQlao" id="4ryo8lMvqxt" role="EZGxL">
            <ref role="pQlar" to="zaie:34Rb5Oc3jx3" resolve="Equal" />
            <node concept="3O66mJ" id="4ryo8lMvr3B" role="EZGxL">
              <ref role="3O66mG" node="4ryo8lMtyg$" resolve="conn1" />
            </node>
            <node concept="3O66mJ" id="4ryo8lMvs7J" role="EZGxL">
              <ref role="3O66mG" node="4ryo8lMtyhm" resolve="conn3" />
            </node>
          </node>
        </node>
        <node concept="pQlao" id="4ryo8lMvtce" role="EZGxL">
          <ref role="pQlar" to="zaie:34Rb5Oc3jwP" resolve="Not" />
          <node concept="pQlao" id="4ryo8lMvtI_" role="EZGxL">
            <ref role="pQlar" to="zaie:34Rb5Oc3jx3" resolve="Equal" />
            <node concept="3O66mJ" id="4ryo8lMvugS" role="EZGxL">
              <ref role="3O66mG" node="4ryo8lMtyha" resolve="conn2" />
            </node>
            <node concept="3O66mJ" id="4ryo8lMvvRO" role="EZGxL">
              <ref role="3O66mG" node="4ryo8lMtyhw" resolve="conn4" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3DQ70j" id="4ryo8lMzAR3" role="lGtFl">
      <property role="3V$3am" value="axioms" />
      <property role="3V$3ak" value="b4fcd96f-fa06-46a4-9520-beaeb32aa9a1/8445081754001417286/6300386900480908542" />
    </node>
    <node concept="2a5yee" id="4ryo8lMzADi" role="pRMhZ">
      <node concept="pQlao" id="4ryo8lMzAY7" role="2a5y9Q">
        <ref role="pQlar" node="4ryo8lMyEzE" resolve="validStarConnections" />
        <node concept="pQlao" id="4ryo8lMzAYq" role="EZGxL">
          <property role="3IYp45" value="true" />
          <ref role="pQlar" node="4ryo8lMyCg6" resolve="mkStar" />
          <node concept="pQlao" id="4ryo8lMzB_F" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMsCK$" resolve="mkCell" />
            <node concept="26K0MW" id="4ryo8lMzJAD" role="EZGxL" />
            <node concept="3O66mJ" id="4ryo8lMzKPS" role="EZGxL">
              <ref role="3O66mG" node="4ryo8lMtyg$" resolve="conn1" />
            </node>
            <node concept="3O66mJ" id="4ryo8lMzM53" role="EZGxL">
              <ref role="3O66mG" node="4ryo8lMtyha" resolve="conn2" />
            </node>
            <node concept="3O66mJ" id="4ryo8lMzMGL" role="EZGxL">
              <ref role="3O66mG" node="4ryo8lMtyhm" resolve="conn3" />
            </node>
            <node concept="3O66mJ" id="4ryo8lMzNWk" role="EZGxL">
              <ref role="3O66mG" node="4ryo8lMtyhw" resolve="conn4" />
            </node>
          </node>
          <node concept="pQlao" id="4ryo8lMzCOk" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMsCK$" resolve="mkCell" />
            <node concept="26K0MW" id="4ryo8lMzO$g" role="EZGxL" />
            <node concept="26K0MW" id="4ryo8lM$nx1" role="EZGxL" />
            <node concept="26K0MW" id="4ryo8lM$ki8" role="EZGxL" />
            <node concept="3O66mJ" id="4ryo8lM$ptk" role="EZGxL">
              <ref role="3O66mG" node="4ryo8lMtYbY" resolve="conn5" />
            </node>
            <node concept="26K0MW" id="4ryo8lM$l$O" role="EZGxL" />
          </node>
          <node concept="pQlao" id="4ryo8lMzE31" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMsCK$" resolve="mkCell" />
            <node concept="26K0MW" id="4ryo8lMzUPi" role="EZGxL" />
            <node concept="26K0MW" id="4ryo8lM$6RB" role="EZGxL" />
            <node concept="26K0MW" id="4ryo8lM$7w4" role="EZGxL" />
            <node concept="26K0MW" id="4ryo8lM$88w" role="EZGxL" />
            <node concept="3O66mJ" id="4ryo8lM$rpC" role="EZGxL">
              <ref role="3O66mG" node="4ryo8lMtYD$" resolve="conn6" />
            </node>
          </node>
          <node concept="pQlao" id="4ryo8lMzFhL" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMsCK$" resolve="mkCell" />
            <node concept="26K0MW" id="4ryo8lMzZfY" role="EZGxL" />
            <node concept="3O66mJ" id="4ryo8lM$tlT" role="EZGxL">
              <ref role="3O66mG" node="4ryo8lMtZ75" resolve="conn7" />
            </node>
            <node concept="26K0MW" id="4ryo8lM$fMy" role="EZGxL" />
            <node concept="26K0MW" id="4ryo8lM$h4e" role="EZGxL" />
            <node concept="26K0MW" id="4ryo8lM$hHq" role="EZGxL" />
          </node>
          <node concept="pQlao" id="4ryo8lMzGwP" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMsCK$" resolve="mkCell" />
            <node concept="26K0MW" id="4ryo8lM$9pG" role="EZGxL" />
            <node concept="26K0MW" id="4ryo8lM$aF8" role="EZGxL" />
            <node concept="3O66mJ" id="4ryo8lM$vhV" role="EZGxL">
              <ref role="3O66mG" node="4ryo8lMtZ$H" resolve="conn8" />
            </node>
            <node concept="26K0MW" id="4ryo8lM$bWO" role="EZGxL" />
            <node concept="26K0MW" id="4ryo8lM$deC" role="EZGxL" />
          </node>
        </node>
      </node>
      <node concept="pQlao" id="4ryo8lM$vVw" role="2a5y9N">
        <property role="3IYp45" value="true" />
        <ref role="pQlar" to="zaie:34Rb5OcqQZf" resolve="And" />
        <node concept="pQlao" id="4ryo8lM$w$X" role="EZGxL">
          <property role="3IYp45" value="true" />
          <ref role="pQlar" to="zaie:34Rb5OcqQZf" resolve="And" />
          <node concept="pQlao" id="4ryo8lM$zb3" role="EZGxL">
            <ref role="pQlar" to="zaie:34Rb5Oc3jx3" resolve="Equal" />
            <node concept="3O66mJ" id="4ryo8lM$B5p" role="EZGxL">
              <ref role="3O66mG" node="4ryo8lMtyg$" resolve="conn1" />
            </node>
            <node concept="3O66mJ" id="4ryo8lM$Cpd" role="EZGxL">
              <ref role="3O66mG" node="4ryo8lMtYbY" resolve="conn5" />
            </node>
          </node>
          <node concept="pQlao" id="4ryo8lM$$uk" role="EZGxL">
            <ref role="pQlar" to="zaie:34Rb5Oc3jx3" resolve="Equal" />
            <node concept="3O66mJ" id="4ryo8lM$D3b" role="EZGxL">
              <ref role="3O66mG" node="4ryo8lMtyha" resolve="conn2" />
            </node>
            <node concept="3O66mJ" id="4ryo8lM$F12" role="EZGxL">
              <ref role="3O66mG" node="4ryo8lMtYD$" resolve="conn6" />
            </node>
          </node>
        </node>
        <node concept="pQlao" id="4ryo8lM$xRY" role="EZGxL">
          <property role="3IYp45" value="true" />
          <ref role="pQlar" to="zaie:34Rb5OcqQZf" resolve="And" />
          <node concept="pQlao" id="4ryo8lM$_82" role="EZGxL">
            <ref role="pQlar" to="zaie:34Rb5Oc3jx3" resolve="Equal" />
            <node concept="3O66mJ" id="4ryo8lM$FFe" role="EZGxL">
              <ref role="3O66mG" node="4ryo8lMtyhm" resolve="conn3" />
            </node>
            <node concept="3O66mJ" id="4ryo8lM$GZy" role="EZGxL">
              <ref role="3O66mG" node="4ryo8lMtZ75" resolve="conn7" />
            </node>
          </node>
          <node concept="pQlao" id="4ryo8lM$Arw" role="EZGxL">
            <ref role="pQlar" to="zaie:34Rb5Oc3jx3" resolve="Equal" />
            <node concept="3O66mJ" id="4ryo8lM$HDQ" role="EZGxL">
              <ref role="3O66mG" node="4ryo8lMtyhw" resolve="conn4" />
            </node>
            <node concept="3O66mJ" id="4ryo8lM$Ike" role="EZGxL">
              <ref role="3O66mG" node="4ryo8lMtZ$H" resolve="conn8" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3DQ70j" id="4ryo8lMz_kh" role="lGtFl">
      <property role="3V$3am" value="axioms" />
      <property role="3V$3ak" value="b4fcd96f-fa06-46a4-9520-beaeb32aa9a1/8445081754001417286/6300386900480908542" />
    </node>
    <node concept="2a5yee" id="4ryo8lMyEDJ" role="pRMhZ">
      <node concept="pQlao" id="4ryo8lMyENK" role="2a5y9Q">
        <ref role="pQlar" node="4ryo8lMujsP" resolve="validStar" />
        <node concept="pQlao" id="4ryo8lMyENX" role="EZGxL">
          <ref role="pQlar" node="4ryo8lMyCg6" resolve="mkStar" />
          <node concept="pQlao" id="4ryo8lMyFz9" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMsCK$" resolve="mkCell" />
            <node concept="pQlao" id="4ryo8lMyGix" role="EZGxL">
              <ref role="pQlar" node="4ryo8lMsLXR" resolve="cellTypeEmpty" />
            </node>
            <node concept="26K0MW" id="4ryo8lMyHL0" role="EZGxL" />
            <node concept="26K0MW" id="4ryo8lMyJfw" role="EZGxL" />
            <node concept="26K0MW" id="4ryo8lMyKI2" role="EZGxL" />
            <node concept="26K0MW" id="4ryo8lMyMcL" role="EZGxL" />
          </node>
          <node concept="26K0MW" id="4ryo8lMyNG8" role="EZGxL" />
          <node concept="26K0MW" id="4ryo8lMyPbu" role="EZGxL" />
          <node concept="26K0MW" id="4ryo8lMyQEN" role="EZGxL" />
          <node concept="26K0MW" id="4ryo8lMySar" role="EZGxL" />
        </node>
      </node>
      <node concept="pQlao" id="4ryo8lMySUI" role="2a5y9N">
        <ref role="pQlar" to="zaie:34Rb5Oc3jw_" resolve="True" />
      </node>
    </node>
    <node concept="2a5yee" id="4ryo8lMvN2m" role="pRMhZ">
      <node concept="pQlao" id="4ryo8lMwAzq" role="2a5y9N">
        <ref role="pQlar" to="zaie:34Rb5Oc3jwP" resolve="Not" />
        <node concept="pQlao" id="4ryo8lMwBjG" role="EZGxL">
          <property role="3IYp45" value="true" />
          <ref role="pQlar" to="zaie:34Rb5OcqR1j" resolve="Or" />
          <node concept="pQlao" id="4ryo8lMwC43" role="EZGxL">
            <property role="3IYp45" value="true" />
            <ref role="pQlar" to="zaie:34Rb5OcqR1j" resolve="Or" />
            <node concept="pQlao" id="4ryo8lMwNs6" role="EZGxL">
              <ref role="pQlar" to="zaie:34Rb5OcqQZf" resolve="And" />
              <node concept="3O66mJ" id="4ryo8lMwS0v" role="EZGxL">
                <ref role="3O66mG" node="4ryo8lMtyg$" resolve="conn1" />
              </node>
              <node concept="pQlao" id="4ryo8lMwTyM" role="EZGxL">
                <ref role="pQlar" node="4ryo8lMuNcc" resolve="isCellTurn" />
                <node concept="3O66mJ" id="4ryo8lMx1Yd" role="EZGxL">
                  <ref role="3O66mG" node="3rXORfo9uYJ" resolve="cell1" />
                </node>
              </node>
            </node>
            <node concept="pQlao" id="4ryo8lMwOXi" role="EZGxL">
              <ref role="pQlar" to="zaie:34Rb5OcqQZf" resolve="And" />
              <node concept="3O66mJ" id="4ryo8lMwXny" role="EZGxL">
                <ref role="3O66mG" node="4ryo8lMtyha" resolve="conn2" />
              </node>
              <node concept="pQlao" id="4ryo8lMwYTG" role="EZGxL">
                <ref role="pQlar" node="4ryo8lMuNcc" resolve="isCellTurn" />
                <node concept="3O66mJ" id="4ryo8lMx0s0" role="EZGxL">
                  <ref role="3O66mG" node="4ryo8lMtLjd" resolve="cell2" />
                </node>
              </node>
            </node>
          </node>
          <node concept="pQlao" id="4ryo8lMwMFl" role="EZGxL">
            <property role="3IYp45" value="true" />
            <ref role="pQlar" to="zaie:34Rb5OcqR1j" resolve="Or" />
            <node concept="pQlao" id="4ryo8lMwPHZ" role="EZGxL">
              <ref role="pQlar" to="zaie:34Rb5OcqQZf" resolve="And" />
              <node concept="3O66mJ" id="4ryo8lMx2Jr" role="EZGxL">
                <ref role="3O66mG" node="4ryo8lMtyhm" resolve="conn3" />
              </node>
              <node concept="pQlao" id="4ryo8lMx4iE" role="EZGxL">
                <ref role="pQlar" node="4ryo8lMuNcc" resolve="isCellTurn" />
                <node concept="3O66mJ" id="4ryo8lMx53Z" role="EZGxL">
                  <ref role="3O66mG" node="4ryo8lMukas" resolve="cell3" />
                </node>
              </node>
            </node>
            <node concept="pQlao" id="4ryo8lMwRfu" role="EZGxL">
              <ref role="pQlar" to="zaie:34Rb5OcqQZf" resolve="And" />
              <node concept="3O66mJ" id="4ryo8lMx5Pp" role="EZGxL">
                <ref role="3O66mG" node="4ryo8lMtyhw" resolve="conn4" />
              </node>
              <node concept="pQlao" id="4ryo8lMx7oj" role="EZGxL">
                <ref role="pQlar" node="4ryo8lMuNcc" resolve="isCellTurn" />
                <node concept="3O66mJ" id="4ryo8lMx89O" role="EZGxL">
                  <ref role="3O66mG" node="4ryo8lMukDt" resolve="cell4" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="pQlao" id="4ryo8lMz2g4" role="2a5y9Q">
        <ref role="pQlar" node="4ryo8lMujsP" resolve="validStar" />
        <node concept="pQlao" id="4ryo8lMz2PT" role="EZGxL">
          <ref role="pQlar" node="4ryo8lMyCg6" resolve="mkStar" />
          <node concept="pQlao" id="4ryo8lMz3rD" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMsCK$" resolve="mkCell" />
            <node concept="pQlao" id="4ryo8lMz41z" role="EZGxL">
              <ref role="pQlar" node="4ryo8lMsM3I" resolve="cellTypeBlack" />
            </node>
            <node concept="3O66mJ" id="4ryo8lMz5dg" role="EZGxL">
              <ref role="3O66mG" node="4ryo8lMtyg$" resolve="conn1" />
            </node>
            <node concept="3O66mJ" id="4ryo8lMz5N7" role="EZGxL">
              <ref role="3O66mG" node="4ryo8lMtyha" resolve="conn2" />
            </node>
            <node concept="3O66mJ" id="4ryo8lMz6YR" role="EZGxL">
              <ref role="3O66mG" node="4ryo8lMtyhm" resolve="conn3" />
            </node>
            <node concept="3O66mJ" id="4ryo8lMz8aV" role="EZGxL">
              <ref role="3O66mG" node="4ryo8lMtyhw" resolve="conn4" />
            </node>
          </node>
          <node concept="3O66mJ" id="4ryo8lMz9nm" role="EZGxL">
            <ref role="3O66mG" node="3rXORfo9uYJ" resolve="cell1" />
          </node>
          <node concept="3O66mJ" id="4ryo8lMzazB" role="EZGxL">
            <ref role="3O66mG" node="4ryo8lMtLjd" resolve="cell2" />
          </node>
          <node concept="3O66mJ" id="4ryo8lMzbJY" role="EZGxL">
            <ref role="3O66mG" node="4ryo8lMukas" resolve="cell3" />
          </node>
          <node concept="3O66mJ" id="4ryo8lMzdyv" role="EZGxL">
            <ref role="3O66mG" node="4ryo8lMukDt" resolve="cell4" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2a5yee" id="4ryo8lMxjps" role="pRMhZ">
      <node concept="pQlao" id="4ryo8lMxDnX" role="2a5y9N">
        <ref role="pQlar" to="zaie:34Rb5Oc3jwP" resolve="Not" />
        <node concept="pQlao" id="4ryo8lMxGxB" role="EZGxL">
          <property role="3IYp45" value="true" />
          <ref role="pQlar" to="zaie:34Rb5OcqR1j" resolve="Or" />
          <node concept="pQlao" id="4ryo8lMxHk5" role="EZGxL">
            <property role="3IYp45" value="true" />
            <ref role="pQlar" to="zaie:34Rb5OcqQZf" resolve="And" />
            <node concept="pQlao" id="4ryo8lMxJFw" role="EZGxL">
              <ref role="pQlar" to="zaie:34Rb5OcqQZf" resolve="And" />
              <node concept="3O66mJ" id="4ryo8lMxOrr" role="EZGxL">
                <ref role="3O66mG" node="4ryo8lMtyg$" resolve="conn1" />
              </node>
              <node concept="3O66mJ" id="4ryo8lMxSpq" role="EZGxL">
                <ref role="3O66mG" node="4ryo8lMtyhm" resolve="conn3" />
              </node>
            </node>
            <node concept="pQlao" id="4ryo8lMxLgw" role="EZGxL">
              <ref role="pQlar" to="zaie:34Rb5OcqQZf" resolve="And" />
              <node concept="pQlao" id="4ryo8lMxZ$q" role="EZGxL">
                <ref role="pQlar" node="4ryo8lMuN8T" resolve="isCellStraight" />
                <node concept="3O66mJ" id="29Mcdkw4BCZ" role="EZGxL">
                  <ref role="3O66mG" node="3rXORfo9uYJ" resolve="cell1" />
                </node>
              </node>
              <node concept="pQlao" id="29Mcdkw4G$3" role="EZGxL">
                <ref role="pQlar" node="4ryo8lMuN8T" resolve="isCellStraight" />
                <node concept="3O66mJ" id="29Mcdkw4HoB" role="EZGxL">
                  <ref role="3O66mG" node="4ryo8lMukas" resolve="cell3" />
                </node>
              </node>
            </node>
          </node>
          <node concept="pQlao" id="4ryo8lMxISS" role="EZGxL">
            <property role="3IYp45" value="true" />
            <ref role="pQlar" to="zaie:34Rb5OcqQZf" resolve="And" />
            <node concept="pQlao" id="4ryo8lMxM3g" role="EZGxL">
              <ref role="pQlar" to="zaie:34Rb5OcqQZf" resolve="And" />
              <node concept="3O66mJ" id="4ryo8lMxPej" role="EZGxL">
                <ref role="3O66mG" node="4ryo8lMtyha" resolve="conn2" />
              </node>
              <node concept="3O66mJ" id="4ryo8lMxTZl" role="EZGxL">
                <ref role="3O66mG" node="4ryo8lMtyhw" resolve="conn4" />
              </node>
            </node>
            <node concept="pQlao" id="29Mcdkw4KEe" role="EZGxL">
              <ref role="pQlar" to="zaie:34Rb5OcqQZf" resolve="And" />
              <node concept="pQlao" id="29Mcdkw4Luy" role="EZGxL">
                <ref role="pQlar" node="4ryo8lMuN8T" resolve="isCellStraight" />
                <node concept="3O66mJ" id="29Mcdkw4MiL" role="EZGxL">
                  <ref role="3O66mG" node="4ryo8lMtLjd" resolve="cell2" />
                </node>
              </node>
              <node concept="pQlao" id="29Mcdkw4NVz" role="EZGxL">
                <ref role="pQlar" node="4ryo8lMuN8T" resolve="isCellStraight" />
                <node concept="3O66mJ" id="29Mcdkw4OJW" role="EZGxL">
                  <ref role="3O66mG" node="4ryo8lMukDt" resolve="cell4" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="pQlao" id="4ryo8lMzfWc" role="2a5y9Q">
        <ref role="pQlar" node="4ryo8lMujsP" resolve="validStar" />
        <node concept="pQlao" id="4ryo8lMzgy6" role="EZGxL">
          <ref role="pQlar" node="4ryo8lMyCg6" resolve="mkStar" />
          <node concept="pQlao" id="4ryo8lMzh89" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMsCK$" resolve="mkCell" />
            <node concept="pQlao" id="4ryo8lMzhIe" role="EZGxL">
              <ref role="pQlar" node="4ryo8lMsM1H" resolve="cellTypeWhite" />
            </node>
            <node concept="3O66mJ" id="4ryo8lMziUn" role="EZGxL">
              <ref role="3O66mG" node="4ryo8lMtyg$" resolve="conn1" />
            </node>
            <node concept="3O66mJ" id="4ryo8lMzjws" role="EZGxL">
              <ref role="3O66mG" node="4ryo8lMtyha" resolve="conn2" />
            </node>
            <node concept="3O66mJ" id="4ryo8lMzkG_" role="EZGxL">
              <ref role="3O66mG" node="4ryo8lMtyhm" resolve="conn3" />
            </node>
            <node concept="3O66mJ" id="4ryo8lMzlSZ" role="EZGxL">
              <ref role="3O66mG" node="4ryo8lMtyhw" resolve="conn4" />
            </node>
          </node>
          <node concept="3O66mJ" id="4ryo8lMzn5P" role="EZGxL">
            <ref role="3O66mG" node="3rXORfo9uYJ" resolve="cell1" />
          </node>
          <node concept="3O66mJ" id="4ryo8lMzoiD" role="EZGxL">
            <ref role="3O66mG" node="4ryo8lMtLjd" resolve="cell2" />
          </node>
          <node concept="3O66mJ" id="4ryo8lMzpvz" role="EZGxL">
            <ref role="3O66mG" node="4ryo8lMukas" resolve="cell3" />
          </node>
          <node concept="3O66mJ" id="4ryo8lMzriZ" role="EZGxL">
            <ref role="3O66mG" node="4ryo8lMukDt" resolve="cell4" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3DQ70j" id="4ryo8lMzv64" role="lGtFl">
      <property role="3V$3am" value="axioms" />
      <property role="3V$3ak" value="b4fcd96f-fa06-46a4-9520-beaeb32aa9a1/8445081754001417286/6300386900480908542" />
    </node>
    <node concept="2a5yee" id="4ryo8lMzuZd" role="pRMhZ">
      <node concept="pQlao" id="4ryo8lMzvcT" role="2a5y9Q">
        <ref role="pQlar" node="4ryo8lMztIa" resolve="validStar" />
        <node concept="3O66mJ" id="4ryo8lMzvdf" role="EZGxL">
          <ref role="3O66mG" node="4ryo8lMyCl7" resolve="star1" />
        </node>
      </node>
      <node concept="pQlao" id="4ryo8lMzvdH" role="2a5y9N">
        <ref role="pQlar" to="zaie:34Rb5OcqQZf" resolve="And" />
        <node concept="pQlao" id="4ryo8lMzyRL" role="EZGxL">
          <ref role="pQlar" node="4ryo8lMyEzE" resolve="validStarConnections" />
          <node concept="3O66mJ" id="4ryo8lMzzuP" role="EZGxL">
            <ref role="3O66mG" node="4ryo8lMyCl7" resolve="star1" />
          </node>
        </node>
        <node concept="pQlao" id="4ryo8lMzvOW" role="EZGxL">
          <ref role="pQlar" node="4ryo8lMujsP" resolve="validStarHints" />
          <node concept="3O66mJ" id="4ryo8lMzwrQ" role="EZGxL">
            <ref role="3O66mG" node="4ryo8lMyCl7" resolve="star1" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3DQ70j" id="4ryo8lM$Yys" role="lGtFl">
      <property role="3V$3am" value="axioms" />
      <property role="3V$3ak" value="b4fcd96f-fa06-46a4-9520-beaeb32aa9a1/8445081754001417286/6300386900480908542" />
    </node>
    <node concept="2a5yee" id="4ryo8lM$YkF" role="pRMhZ">
      <node concept="pQlao" id="4ryo8lM$YDs" role="2a5y9Q">
        <ref role="pQlar" node="4ryo8lM$YaL" resolve="validStarRow" />
        <node concept="pQlao" id="4ryo8lM$YDJ" role="EZGxL">
          <ref role="pQlar" node="4ryo8lM$WLj" resolve="mkStarRow" />
          <node concept="3O66mJ" id="4ryo8lM$YE1" role="EZGxL">
            <ref role="3O66mG" node="4ryo8lMyCl7" resolve="star1" />
          </node>
          <node concept="3O66mJ" id="4ryo8lM_1ct" role="EZGxL">
            <ref role="3O66mG" node="4ryo8lM$YGk" resolve="star2" />
          </node>
          <node concept="3O66mJ" id="4ryo8lM_1Oz" role="EZGxL">
            <ref role="3O66mG" node="4ryo8lM$Zkh" resolve="star3" />
          </node>
          <node concept="3O66mJ" id="4ryo8lM_2s_" role="EZGxL">
            <ref role="3O66mG" node="4ryo8lM$ZWi" resolve="star4" />
          </node>
          <node concept="3O66mJ" id="4ryo8lM_34A" role="EZGxL">
            <ref role="3O66mG" node="4ryo8lM_0$h" resolve="star5" />
          </node>
        </node>
      </node>
      <node concept="pQlao" id="4ryo8lM_3GG" role="2a5y9N">
        <property role="3IYp45" value="true" />
        <ref role="pQlar" to="zaie:34Rb5OcqQZf" resolve="And" />
        <node concept="pQlao" id="4ryo8lM_4kK" role="EZGxL">
          <property role="3IYp45" value="true" />
          <ref role="pQlar" to="zaie:34Rb5OcqQZf" resolve="And" />
          <node concept="pQlao" id="4ryo8lM_4Xa" role="EZGxL">
            <property role="3IYp45" value="true" />
            <ref role="pQlar" to="zaie:34Rb5OcqQZf" resolve="And" />
            <node concept="pQlao" id="4ryo8lM_5_b" role="EZGxL">
              <property role="3IYp45" value="true" />
              <ref role="pQlar" to="zaie:34Rb5OcqQZf" resolve="And" />
              <node concept="pQlao" id="4ryo8lM_6dk" role="EZGxL">
                <ref role="pQlar" node="4ryo8lMztIa" resolve="validStar" />
                <node concept="3O66mJ" id="4ryo8lM_6Pp" role="EZGxL">
                  <ref role="3O66mG" node="4ryo8lMyCl7" resolve="star1" />
                </node>
              </node>
              <node concept="pQlao" id="4ryo8lM_8HM" role="EZGxL">
                <ref role="pQlar" node="4ryo8lMztIa" resolve="validStar" />
                <node concept="3O66mJ" id="4ryo8lM_9m4" role="EZGxL">
                  <ref role="3O66mG" node="4ryo8lM$YGk" resolve="star2" />
                </node>
              </node>
            </node>
            <node concept="pQlao" id="4ryo8lM_aAQ" role="EZGxL">
              <ref role="pQlar" node="4ryo8lMztIa" resolve="validStar" />
              <node concept="3O66mJ" id="4ryo8lM_bfl" role="EZGxL">
                <ref role="3O66mG" node="4ryo8lM$Zkh" resolve="star3" />
              </node>
            </node>
          </node>
          <node concept="pQlao" id="4ryo8lM_epZ" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMztIa" resolve="validStar" />
            <node concept="3O66mJ" id="4ryo8lM_f2F" role="EZGxL">
              <ref role="3O66mG" node="4ryo8lM$ZWi" resolve="star4" />
            </node>
          </node>
        </node>
        <node concept="pQlao" id="4ryo8lM_gkn" role="EZGxL">
          <ref role="pQlar" node="4ryo8lMztIa" resolve="validStar" />
          <node concept="3O66mJ" id="4ryo8lM_gXg" role="EZGxL">
            <ref role="3O66mG" node="4ryo8lM_0$h" resolve="star5" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3DQ70j" id="4ryo8lM_mOa" role="lGtFl">
      <property role="3V$3am" value="axioms" />
      <property role="3V$3ak" value="b4fcd96f-fa06-46a4-9520-beaeb32aa9a1/8445081754001417286/6300386900480908542" />
    </node>
    <node concept="2a5yee" id="4ryo8lM_mGF" role="pRMhZ">
      <node concept="pQlao" id="4ryo8lM_mYU" role="2a5y9Q">
        <ref role="pQlar" node="4ryo8lM_mV$" resolve="validStarPearl" />
        <node concept="pQlao" id="4ryo8lM_mZ7" role="EZGxL">
          <ref role="pQlar" node="4ryo8lM$Wqk" resolve="mkStarPearl" />
          <node concept="3O66mJ" id="4ryo8lM_n1A" role="EZGxL">
            <ref role="3O66mG" node="4ryo8lM_mZA" resolve="starRow1" />
          </node>
          <node concept="3O66mJ" id="4ryo8lM_n2k" role="EZGxL">
            <ref role="3O66mG" node="4ryo8lM_n0v" resolve="starRow2" />
          </node>
          <node concept="3O66mJ" id="4ryo8lM_n38" role="EZGxL">
            <ref role="3O66mG" node="4ryo8lM_n0F" resolve="starRow3" />
          </node>
          <node concept="3O66mJ" id="4ryo8lM_n3V" role="EZGxL">
            <ref role="3O66mG" node="4ryo8lM_n0S" resolve="starRow4" />
          </node>
          <node concept="3O66mJ" id="4ryo8lM_n4S" role="EZGxL">
            <ref role="3O66mG" node="4ryo8lM_n13" resolve="starRow5" />
          </node>
        </node>
      </node>
      <node concept="pQlao" id="4ryo8lM_n6$" role="2a5y9N">
        <property role="3IYp45" value="true" />
        <ref role="pQlar" to="zaie:34Rb5OcqQZf" resolve="And" />
        <node concept="pQlao" id="4ryo8lM_nKW" role="EZGxL">
          <property role="3IYp45" value="true" />
          <ref role="pQlar" to="zaie:34Rb5OcqQZf" resolve="And" />
          <node concept="pQlao" id="4ryo8lM_p43" role="EZGxL">
            <property role="3IYp45" value="true" />
            <ref role="pQlar" to="zaie:34Rb5OcqQZf" resolve="And" />
            <node concept="pQlao" id="4ryo8lM_pHC" role="EZGxL">
              <property role="3IYp45" value="true" />
              <ref role="pQlar" to="zaie:34Rb5OcqQZf" resolve="And" />
              <node concept="pQlao" id="4ryo8lM_rEz" role="EZGxL">
                <ref role="pQlar" node="4ryo8lM$YaL" resolve="validStarRow" />
                <node concept="3O66mJ" id="4ryo8lM_skc" role="EZGxL">
                  <ref role="3O66mG" node="4ryo8lM_mZA" resolve="starRow1" />
                </node>
              </node>
              <node concept="pQlao" id="4ryo8lM_$T6" role="EZGxL">
                <ref role="pQlar" node="4ryo8lM$YaL" resolve="validStarRow" />
                <node concept="3O66mJ" id="4ryo8lM__zt" role="EZGxL">
                  <ref role="3O66mG" node="4ryo8lM_n0v" resolve="starRow2" />
                </node>
              </node>
            </node>
            <node concept="pQlao" id="4ryo8lM_uhX" role="EZGxL">
              <ref role="pQlar" node="4ryo8lM$YaL" resolve="validStarRow" />
              <node concept="3O66mJ" id="4ryo8lM_uVZ" role="EZGxL">
                <ref role="3O66mG" node="4ryo8lM_n0F" resolve="starRow3" />
              </node>
            </node>
          </node>
          <node concept="pQlao" id="4ryo8lM_wg6" role="EZGxL">
            <ref role="pQlar" node="4ryo8lM$YaL" resolve="validStarRow" />
            <node concept="3O66mJ" id="4ryo8lM_wUl" role="EZGxL">
              <ref role="3O66mG" node="4ryo8lM_n0S" resolve="starRow4" />
            </node>
          </node>
        </node>
        <node concept="pQlao" id="4ryo8lM_zz_" role="EZGxL">
          <ref role="pQlar" node="4ryo8lM$YaL" resolve="validStarRow" />
          <node concept="3O66mJ" id="4ryo8lM_$e7" role="EZGxL">
            <ref role="3O66mG" node="4ryo8lM_n13" resolve="starRow5" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3DQ70j" id="4ryo8lM_LpQ" role="lGtFl">
      <property role="3V$3am" value="axioms" />
      <property role="3V$3ak" value="b4fcd96f-fa06-46a4-9520-beaeb32aa9a1/8445081754001417286/6300386900480908542" />
    </node>
    <node concept="2a5yee" id="4ryo8lMCcI8" role="pRMhZ">
      <node concept="pQlao" id="4ryo8lMCcZE" role="2a5y9Q">
        <ref role="pQlar" node="4ryo8lMCcvr" resolve="starPearlFromPearl" />
        <node concept="pQlao" id="4ryo8lMCcZX" role="EZGxL">
          <property role="3IYp45" value="true" />
          <ref role="pQlar" node="4ryo8lMCcDY" resolve="mkPearl" />
          <node concept="3O66mJ" id="4ryo8lMCd0f" role="EZGxL">
            <ref role="3O66mG" node="3rXORfo7Jy8" resolve="row1" />
          </node>
          <node concept="3O66mJ" id="4ryo8lMCd0U" role="EZGxL">
            <ref role="3O66mG" node="3rXORfo7Jyh" resolve="row2" />
          </node>
          <node concept="3O66mJ" id="4ryo8lMCd1C" role="EZGxL">
            <ref role="3O66mG" node="3rXORfo7Jyo" resolve="row3" />
          </node>
          <node concept="3O66mJ" id="4ryo8lMCd2l" role="EZGxL">
            <ref role="3O66mG" node="3rXORfo7Jys" resolve="row4" />
          </node>
          <node concept="3O66mJ" id="4ryo8lMCd3f" role="EZGxL">
            <ref role="3O66mG" node="3rXORfo7Jyz" resolve="row5" />
          </node>
        </node>
      </node>
      <node concept="pQlao" id="4ryo8lMCexl" role="2a5y9N">
        <property role="3IYp45" value="true" />
        <ref role="pQlar" node="4ryo8lM$Wqk" resolve="mkStarPearl" />
        <node concept="pQlao" id="4ryo8lMCOWF" role="EZGxL">
          <ref role="pQlar" node="4ryo8lM_LTh" resolve="starRowFromRows" />
          <node concept="pQlao" id="4ryo8lMDat2" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMDapX" resolve="emptyRow" />
          </node>
          <node concept="3O66mJ" id="4ryo8lMDbX0" role="EZGxL">
            <ref role="3O66mG" node="3rXORfo7Jy8" resolve="row1" />
          </node>
          <node concept="3O66mJ" id="4ryo8lMDdt4" role="EZGxL">
            <ref role="3O66mG" node="3rXORfo7Jyh" resolve="row2" />
          </node>
        </node>
        <node concept="pQlao" id="4ryo8lMCQqB" role="EZGxL">
          <ref role="pQlar" node="4ryo8lM_LTh" resolve="starRowFromRows" />
          <node concept="3O66mJ" id="4ryo8lMCX2r" role="EZGxL">
            <ref role="3O66mG" node="3rXORfo7Jy8" resolve="row1" />
          </node>
          <node concept="3O66mJ" id="4ryo8lMCYwN" role="EZGxL">
            <ref role="3O66mG" node="3rXORfo7Jyh" resolve="row2" />
          </node>
          <node concept="3O66mJ" id="4ryo8lMCZZs" role="EZGxL">
            <ref role="3O66mG" node="3rXORfo7Jyo" resolve="row3" />
          </node>
        </node>
        <node concept="pQlao" id="4ryo8lMCRSE" role="EZGxL">
          <ref role="pQlar" node="4ryo8lM_LTh" resolve="starRowFromRows" />
          <node concept="3O66mJ" id="4ryo8lMD1u9" role="EZGxL">
            <ref role="3O66mG" node="3rXORfo7Jyh" resolve="row2" />
          </node>
          <node concept="3O66mJ" id="4ryo8lMD2WW" role="EZGxL">
            <ref role="3O66mG" node="3rXORfo7Jyo" resolve="row3" />
          </node>
          <node concept="3O66mJ" id="4ryo8lMD4rU" role="EZGxL">
            <ref role="3O66mG" node="3rXORfo7Jys" resolve="row4" />
          </node>
        </node>
        <node concept="pQlao" id="4ryo8lMCUOM" role="EZGxL">
          <ref role="pQlar" node="4ryo8lM_LTh" resolve="starRowFromRows" />
          <node concept="3O66mJ" id="4ryo8lMD5UZ" role="EZGxL">
            <ref role="3O66mG" node="3rXORfo7Jyo" resolve="row3" />
          </node>
          <node concept="3O66mJ" id="4ryo8lMD6EC" role="EZGxL">
            <ref role="3O66mG" node="3rXORfo7Jys" resolve="row4" />
          </node>
          <node concept="3O66mJ" id="4ryo8lMD7qt" role="EZGxL">
            <ref role="3O66mG" node="3rXORfo7Jyz" resolve="row5" />
          </node>
        </node>
        <node concept="pQlao" id="4ryo8lMCWj9" role="EZGxL">
          <ref role="pQlar" node="4ryo8lM_LTh" resolve="starRowFromRows" />
          <node concept="3O66mJ" id="4ryo8lMD8ah" role="EZGxL">
            <ref role="3O66mG" node="3rXORfo7Jys" resolve="row4" />
          </node>
          <node concept="3O66mJ" id="4ryo8lMD8U6" role="EZGxL">
            <ref role="3O66mG" node="3rXORfo7Jyz" resolve="row5" />
          </node>
          <node concept="pQlao" id="4ryo8lMDedp" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMDapX" resolve="emptyRow" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3DQ70j" id="4ryo8lMCcQK" role="lGtFl">
      <property role="3V$3am" value="axioms" />
      <property role="3V$3ak" value="b4fcd96f-fa06-46a4-9520-beaeb32aa9a1/8445081754001417286/6300386900480908542" />
    </node>
    <node concept="2a5yee" id="4ryo8lMDmXN" role="pRMhZ">
      <node concept="pQlao" id="4ryo8lMDn7g" role="2a5y9Q">
        <ref role="pQlar" node="5wEF59lkheZ" resolve="correctPearl" />
        <node concept="3O66mJ" id="4ryo8lMDqbM" role="EZGxL">
          <ref role="3O66mG" node="4ryo8lMDppB" resolve="pearl" />
        </node>
      </node>
      <node concept="pQlao" id="4ryo8lMDtf1" role="2a5y9N">
        <ref role="pQlar" node="4ryo8lM_mV$" resolve="correctStarPearl" />
        <node concept="pQlao" id="4ryo8lMDtZQ" role="EZGxL">
          <ref role="pQlar" node="4ryo8lMCcvr" resolve="pearlToStarPearl" />
          <node concept="3O66mJ" id="4ryo8lMDuKI" role="EZGxL">
            <ref role="3O66mG" node="4ryo8lMDppB" resolve="pearl" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3DQ70j" id="29McdkvZL4v" role="lGtFl">
      <property role="3V$3am" value="axioms" />
      <property role="3V$3ak" value="b4fcd96f-fa06-46a4-9520-beaeb32aa9a1/8445081754001417286/6300386900480908542" />
    </node>
    <node concept="2a5yee" id="29McdkvZKUK" role="pRMhZ">
      <node concept="pQlao" id="29McdkvZLei" role="2a5y9Q">
        <ref role="pQlar" node="4ryo8lMDVrq" resolve="userRowToRow" />
        <node concept="pQlao" id="29McdkvZQ0I" role="EZGxL">
          <property role="3IYp45" value="true" />
          <ref role="pQlar" node="5wEF59lkheH" resolve="mkUserRow" />
          <node concept="3O66mJ" id="29McdkvZQQ8" role="EZGxL">
            <ref role="3O66mG" node="29McdkvZQNT" resolve="userCell1" />
          </node>
          <node concept="3O66mJ" id="29McdkvZSrX" role="EZGxL">
            <ref role="3O66mG" node="29McdkvZQP7" resolve="userCell2" />
          </node>
          <node concept="3O66mJ" id="29McdkvZU1P" role="EZGxL">
            <ref role="3O66mG" node="29McdkvZQPg" resolve="userCell3" />
          </node>
          <node concept="3O66mJ" id="29McdkvZVBJ" role="EZGxL">
            <ref role="3O66mG" node="29McdkvZQPq" resolve="userCell4" />
          </node>
          <node concept="3O66mJ" id="29McdkvZXdQ" role="EZGxL">
            <ref role="3O66mG" node="29McdkvZQP_" resolve="userCell5" />
          </node>
        </node>
      </node>
      <node concept="pQlao" id="29McdkvZZBX" role="2a5y9N">
        <property role="3IYp45" value="true" />
        <ref role="pQlar" node="4ryo8lMtJig" resolve="mkRow" />
        <node concept="pQlao" id="29Mcdkw00rg" role="EZGxL">
          <ref role="pQlar" node="4ryo8lMskK2" resolve="userCellToCell" />
          <node concept="3O66mJ" id="29Mcdkw09he" role="EZGxL">
            <ref role="3O66mG" node="29McdkvZQNT" resolve="userCell1" />
          </node>
        </node>
        <node concept="pQlao" id="29Mcdkw03CA" role="EZGxL">
          <ref role="pQlar" node="4ryo8lMskK2" resolve="userCellToCell" />
          <node concept="3O66mJ" id="29Mcdkw0a4T" role="EZGxL">
            <ref role="3O66mG" node="29McdkvZQP7" resolve="userCell2" />
          </node>
        </node>
        <node concept="pQlao" id="29Mcdkw05fq" role="EZGxL">
          <ref role="pQlar" node="4ryo8lMskK2" resolve="userCellToCell" />
          <node concept="3O66mJ" id="29Mcdkw0bGo" role="EZGxL">
            <ref role="3O66mG" node="29McdkvZQPg" resolve="userCell3" />
          </node>
        </node>
        <node concept="pQlao" id="29Mcdkw06Qk" role="EZGxL">
          <ref role="pQlar" node="4ryo8lMskK2" resolve="userCellToCell" />
          <node concept="3O66mJ" id="29Mcdkw0cwb" role="EZGxL">
            <ref role="3O66mG" node="29McdkvZQPq" resolve="userCell4" />
          </node>
        </node>
        <node concept="pQlao" id="29Mcdkw08tv" role="EZGxL">
          <ref role="pQlar" node="4ryo8lMskK2" resolve="userCellToCell" />
          <node concept="3O66mJ" id="29Mcdkw0dk2" role="EZGxL">
            <ref role="3O66mG" node="29McdkvZQP_" resolve="userCell5" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3DQ70j" id="4ryo8lMDwSi" role="lGtFl">
      <property role="3V$3am" value="axioms" />
      <property role="3V$3ak" value="b4fcd96f-fa06-46a4-9520-beaeb32aa9a1/8445081754001417286/6300386900480908542" />
    </node>
    <node concept="2a5yee" id="4ryo8lMDw_L" role="pRMhZ">
      <node concept="pQlao" id="4ryo8lMD$6A" role="2a5y9N">
        <property role="3IYp45" value="true" />
        <ref role="pQlar" node="4ryo8lMCcDY" resolve="mkPearl" />
        <node concept="pQlao" id="4ryo8lMDV$$" role="EZGxL">
          <ref role="pQlar" node="4ryo8lMDVrq" resolve="userRowToRow" />
          <node concept="3O66mJ" id="4ryo8lMDWm6" role="EZGxL">
            <ref role="3O66mG" node="4ryo8lMDGAX" resolve="userRow1" />
          </node>
        </node>
        <node concept="pQlao" id="4ryo8lMDYFb" role="EZGxL">
          <ref role="pQlar" node="4ryo8lMDVrq" resolve="userRowToRow" />
          <node concept="3O66mJ" id="4ryo8lMDZsR" role="EZGxL">
            <ref role="3O66mG" node="4ryo8lMDGC7" resolve="userRow2" />
          </node>
        </node>
        <node concept="pQlao" id="4ryo8lME10q" role="EZGxL">
          <ref role="pQlar" node="4ryo8lMDVrq" resolve="userRowToRow" />
          <node concept="3O66mJ" id="4ryo8lME1Me" role="EZGxL">
            <ref role="3O66mG" node="4ryo8lMDGCj" resolve="userRow3" />
          </node>
        </node>
        <node concept="pQlao" id="4ryo8lME3lW" role="EZGxL">
          <ref role="pQlar" node="4ryo8lMDVrq" resolve="userRowToRow" />
          <node concept="3O66mJ" id="4ryo8lME47S" role="EZGxL">
            <ref role="3O66mG" node="4ryo8lMDGCt" resolve="userRow4" />
          </node>
        </node>
        <node concept="pQlao" id="4ryo8lME5G2" role="EZGxL">
          <ref role="pQlar" node="4ryo8lMDVrq" resolve="userRowToRow" />
          <node concept="3O66mJ" id="4ryo8lME6ug" role="EZGxL">
            <ref role="3O66mG" node="4ryo8lMDGCF" resolve="userRow5" />
          </node>
        </node>
      </node>
      <node concept="pQlao" id="4ryo8lMDy$g" role="2a5y9Q">
        <ref role="pQlar" node="4ryo8lMCczP" resolve="pearlFromUserPearl" />
        <node concept="pQlao" id="4ryo8lMDJIK" role="EZGxL">
          <property role="3IYp45" value="true" />
          <ref role="pQlar" node="3rXORfo7c5_" resolve="mkUserPearl" />
          <node concept="3O66mJ" id="4ryo8lMDKwc" role="EZGxL">
            <ref role="3O66mG" node="4ryo8lMDGAX" resolve="userRow1" />
          </node>
          <node concept="3O66mJ" id="4ryo8lMDM31" role="EZGxL">
            <ref role="3O66mG" node="4ryo8lMDGC7" resolve="userRow2" />
          </node>
          <node concept="3O66mJ" id="4ryo8lMDN_T" role="EZGxL">
            <ref role="3O66mG" node="4ryo8lMDGCj" resolve="userRow3" />
          </node>
          <node concept="3O66mJ" id="4ryo8lMDPUf" role="EZGxL">
            <ref role="3O66mG" node="4ryo8lMDGCt" resolve="userRow4" />
          </node>
          <node concept="3O66mJ" id="4ryo8lMDRtm" role="EZGxL">
            <ref role="3O66mG" node="4ryo8lMDGCF" resolve="userRow5" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3DQ70j" id="4ryo8lME7qd" role="lGtFl">
      <property role="3V$3am" value="axioms" />
      <property role="3V$3ak" value="b4fcd96f-fa06-46a4-9520-beaeb32aa9a1/8445081754001417286/6300386900480908542" />
    </node>
    <node concept="2a5yee" id="4ryo8lME7gy" role="pRMhZ">
      <node concept="pQlao" id="4ryo8lME7zT" role="2a5y9Q">
        <ref role="pQlar" node="4ryo8lMDwiZ" resolve="correctUserPearl" />
        <node concept="3O66mJ" id="4ryo8lME7$c" role="EZGxL">
          <ref role="3O66mG" node="3rXORfo7eEd" resolve="userPearl" />
        </node>
      </node>
      <node concept="pQlao" id="4ryo8lME99q" role="2a5y9N">
        <ref role="pQlar" node="5wEF59lkheZ" resolve="correctPearl" />
        <node concept="pQlao" id="4ryo8lME9VV" role="EZGxL">
          <ref role="pQlar" node="4ryo8lMCczP" resolve="pearlFromUserPearl" />
          <node concept="3O66mJ" id="4ryo8lMEaIp" role="EZGxL">
            <ref role="3O66mG" node="3rXORfo7eEd" resolve="userPearl" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3DQ70j" id="4ryo8lMDmFy" role="lGtFl">
      <property role="3V$3am" value="axioms" />
      <property role="3V$3ak" value="b4fcd96f-fa06-46a4-9520-beaeb32aa9a1/8445081754001417286/6300386900480908542" />
    </node>
    <node concept="1mjQuN" id="4ryo8lMrVTt" role="YRu88">
      <property role="TrG5h" value="correctPearl1" />
      <node concept="pQlao" id="4ryo8lMrVYo" role="1mjQuF">
        <property role="3IYp45" value="true" />
        <ref role="pQlar" node="3rXORfo7c5_" resolve="mkPearl" />
        <node concept="pQlao" id="4ryo8lMrVYD" role="EZGxL">
          <ref role="pQlar" node="5wEF59lkheH" resolve="mkRow" />
          <node concept="pQlao" id="4ryo8lMrWhq" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOwV" resolve="cell" />
          </node>
          <node concept="pQlao" id="4ryo8lMrWkK" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOwV" resolve="cell" />
          </node>
          <node concept="pQlao" id="4ryo8lMrWo6" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOwV" resolve="cell" />
          </node>
          <node concept="pQlao" id="4ryo8lMrWr$" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOwV" resolve="cell" />
          </node>
          <node concept="pQlao" id="4ryo8lMrWvi" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrODA" resolve="cellBlack" />
          </node>
        </node>
        <node concept="pQlao" id="4ryo8lMrW1s" role="EZGxL">
          <ref role="pQlar" node="5wEF59lkheH" resolve="mkRow" />
          <node concept="pQlao" id="4ryo8lMrWxD" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrODA" resolve="cellBlack" />
          </node>
          <node concept="pQlao" id="4ryo8lMrW_O" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOwV" resolve="cell" />
          </node>
          <node concept="pQlao" id="4ryo8lMrWE0" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOwV" resolve="cell" />
          </node>
          <node concept="pQlao" id="4ryo8lMrWIi" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOwV" resolve="cell" />
          </node>
          <node concept="pQlao" id="4ryo8lMrWMP" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOwV" resolve="cell" />
          </node>
        </node>
        <node concept="pQlao" id="4ryo8lMrW4j" role="EZGxL">
          <ref role="pQlar" node="5wEF59lkheH" resolve="mkRow" />
          <node concept="pQlao" id="4ryo8lMrWPm" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOwV" resolve="cell" />
          </node>
          <node concept="pQlao" id="4ryo8lMrWU3" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOwV" resolve="cell" />
          </node>
          <node concept="pQlao" id="4ryo8lMrWYR" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOwV" resolve="cell" />
          </node>
          <node concept="pQlao" id="4ryo8lMrX3L" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOwV" resolve="cell" />
          </node>
          <node concept="pQlao" id="4ryo8lMrX98" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOBf" resolve="cellWhite" />
          </node>
        </node>
        <node concept="pQlao" id="4ryo8lMrW7d" role="EZGxL">
          <ref role="pQlar" node="5wEF59lkheH" resolve="mkRow" />
          <node concept="pQlao" id="4ryo8lMrXbX" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOwV" resolve="cell" />
          </node>
          <node concept="pQlao" id="4ryo8lMrXhs" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOBf" resolve="cellWhite" />
          </node>
          <node concept="pQlao" id="4ryo8lMrXn5" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOBf" resolve="cellWhite" />
          </node>
          <node concept="pQlao" id="4ryo8lMrXsO" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOwV" resolve="cell" />
          </node>
          <node concept="pQlao" id="4ryo8lMrXyF" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOwV" resolve="cell" />
          </node>
        </node>
        <node concept="pQlao" id="4ryo8lMrWar" role="EZGxL">
          <ref role="pQlar" node="5wEF59lkheH" resolve="mkRow" />
          <node concept="pQlao" id="4ryo8lMrX_T" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOwV" resolve="cell" />
          </node>
          <node concept="pQlao" id="4ryo8lMrXFU" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOwV" resolve="cell" />
          </node>
          <node concept="pQlao" id="4ryo8lMrXM2" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOwV" resolve="cell" />
          </node>
          <node concept="pQlao" id="4ryo8lMrXSg" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOwV" resolve="cell" />
          </node>
          <node concept="pQlao" id="4ryo8lMrXYJ" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOwV" resolve="cell" />
          </node>
        </node>
      </node>
    </node>
    <node concept="rdghn" id="4ryo8lMrYsB" role="YRu88" />
    <node concept="1mjQuN" id="4ryo8lMrYyY" role="YRu88">
      <property role="TrG5h" value="correctPearl2" />
      <node concept="pQlao" id="4ryo8lMrYyZ" role="1mjQuF">
        <property role="3IYp45" value="true" />
        <ref role="pQlar" node="3rXORfo7c5_" resolve="mkPearl" />
        <node concept="pQlao" id="4ryo8lMrYz0" role="EZGxL">
          <ref role="pQlar" node="5wEF59lkheH" resolve="mkRow" />
          <node concept="pQlao" id="4ryo8lMrYz1" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOwV" resolve="cell" />
          </node>
          <node concept="pQlao" id="4ryo8lMrYz2" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOwV" resolve="cell" />
          </node>
          <node concept="pQlao" id="4ryo8lMrYz3" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrNDu" resolve="cellRightDown" />
          </node>
          <node concept="pQlao" id="4ryo8lMrYz4" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrNKG" resolve="cellRightLeft" />
          </node>
          <node concept="pQlao" id="4ryo8lMrYz5" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOk0" resolve="cellDownLeftBlack" />
          </node>
        </node>
        <node concept="pQlao" id="4ryo8lMrYz6" role="EZGxL">
          <ref role="pQlar" node="5wEF59lkheH" resolve="mkRow" />
          <node concept="pQlao" id="4ryo8lMrYz7" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOhT" resolve="cellRightDownBlack" />
          </node>
          <node concept="pQlao" id="4ryo8lMrYz8" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrNKG" resolve="cellRightLeft" />
          </node>
          <node concept="pQlao" id="4ryo8lMrYz9" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrNH9" resolve="cellLeftUp" />
          </node>
          <node concept="pQlao" id="4ryo8lMrYza" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOwV" resolve="cell" />
          </node>
          <node concept="pQlao" id="4ryo8lMrYzb" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrNIY" resolve="cellUpDown" />
          </node>
        </node>
        <node concept="pQlao" id="4ryo8lMrYzc" role="EZGxL">
          <ref role="pQlar" node="5wEF59lkheH" resolve="mkRow" />
          <node concept="pQlao" id="4ryo8lMrYzd" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrNIY" resolve="cellUpDown" />
          </node>
          <node concept="pQlao" id="4ryo8lMrYze" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrNDu" resolve="cellRightDown" />
          </node>
          <node concept="pQlao" id="4ryo8lMrYzf" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrNFp" resolve="cellDownLeft" />
          </node>
          <node concept="pQlao" id="4ryo8lMrYzg" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOwV" resolve="cell" />
          </node>
          <node concept="pQlao" id="4ryo8lMrYzh" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOot" resolve="cellUpDownWhite" />
          </node>
        </node>
        <node concept="pQlao" id="4ryo8lMrYzi" role="EZGxL">
          <ref role="pQlar" node="5wEF59lkheH" resolve="mkRow" />
          <node concept="pQlao" id="4ryo8lMrYzj" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrNIY" resolve="cellUpDown" />
          </node>
          <node concept="pQlao" id="4ryo8lMrYzk" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOot" resolve="cellUpDownWhite" />
          </node>
          <node concept="pQlao" id="4ryo8lMrYzl" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOot" resolve="cellUpDownWhite" />
          </node>
          <node concept="pQlao" id="4ryo8lMrYzm" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrNDu" resolve="cellRightDown" />
          </node>
          <node concept="pQlao" id="4ryo8lMrYzn" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrNH9" resolve="cellLeftUp" />
          </node>
        </node>
        <node concept="pQlao" id="4ryo8lMrYzo" role="EZGxL">
          <ref role="pQlar" node="5wEF59lkheH" resolve="mkRow" />
          <node concept="pQlao" id="4ryo8lMrYzp" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrNBH" resolve="cellUpRight" />
          </node>
          <node concept="pQlao" id="4ryo8lMrYzq" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrNH9" resolve="cellLeftUp" />
          </node>
          <node concept="pQlao" id="4ryo8lMrYzr" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrNBH" resolve="cellUpRight" />
          </node>
          <node concept="pQlao" id="4ryo8lMrYzs" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrNH9" resolve="cellLeftUp" />
          </node>
          <node concept="pQlao" id="4ryo8lMrYzt" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOwV" resolve="cell" />
          </node>
        </node>
        <node concept="3DQ70j" id="4ryo8lMs0GP" role="lGtFl">
          <property role="3V$3am" value="parameters" />
          <property role="3V$3ak" value="b4fcd96f-fa06-46a4-9520-beaeb32aa9a1/6300386900481288729/7054597004572770024" />
        </node>
      </node>
    </node>
    <node concept="1mjQuN" id="4ryo8lMrYJR" role="YRu88">
      <property role="TrG5h" value="correctPearl3" />
      <node concept="pQlao" id="4ryo8lMrYJS" role="1mjQuF">
        <property role="3IYp45" value="true" />
        <ref role="pQlar" node="3rXORfo7c5_" resolve="mkPearl" />
        <node concept="pQlao" id="4ryo8lMrYJT" role="EZGxL">
          <ref role="pQlar" node="5wEF59lkheH" resolve="mkRow" />
          <node concept="pQlao" id="4ryo8lMrYJU" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrN$w" resolve="cellDown" />
          </node>
          <node concept="pQlao" id="4ryo8lMrYJV" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOwV" resolve="cell" />
          </node>
          <node concept="pQlao" id="4ryo8lMrYJW" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOwV" resolve="cell" />
          </node>
          <node concept="pQlao" id="4ryo8lMrYJX" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrNyR" resolve="cellRight" />
          </node>
          <node concept="pQlao" id="4ryo8lMrYJY" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOk0" resolve="cellDownLeftBlack" />
          </node>
        </node>
        <node concept="pQlao" id="4ryo8lMrYJZ" role="EZGxL">
          <ref role="pQlar" node="5wEF59lkheH" resolve="mkRow" />
          <node concept="pQlao" id="4ryo8lMrYK0" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOfy" resolve="cellUpRightBlack" />
          </node>
          <node concept="pQlao" id="4ryo8lMrYK1" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrNA6" resolve="cellLeft" />
          </node>
          <node concept="pQlao" id="4ryo8lMrYK2" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOwV" resolve="cell" />
          </node>
          <node concept="pQlao" id="4ryo8lMrYK3" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOwV" resolve="cell" />
          </node>
          <node concept="pQlao" id="4ryo8lMrYK4" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrNsN" resolve="cellUp" />
          </node>
        </node>
        <node concept="pQlao" id="4ryo8lMrYK5" role="EZGxL">
          <ref role="pQlar" node="5wEF59lkheH" resolve="mkRow" />
          <node concept="pQlao" id="4ryo8lMrYK6" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOwV" resolve="cell" />
          </node>
          <node concept="pQlao" id="4ryo8lMrYK7" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOwV" resolve="cell" />
          </node>
          <node concept="pQlao" id="4ryo8lMrYK8" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOwV" resolve="cell" />
          </node>
          <node concept="pQlao" id="4ryo8lMrYK9" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrNyR" resolve="cellRight" />
          </node>
          <node concept="pQlao" id="4ryo8lMrYKa" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrObo" resolve="cellLeftWhite" />
          </node>
        </node>
        <node concept="pQlao" id="4ryo8lMrYKb" role="EZGxL">
          <ref role="pQlar" node="5wEF59lkheH" resolve="mkRow" />
          <node concept="pQlao" id="4ryo8lMrYKc" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrNyR" resolve="cellRight" />
          </node>
          <node concept="pQlao" id="4ryo8lMrYKd" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOqB" resolve="cellRightLeftWhite" />
          </node>
          <node concept="pQlao" id="4ryo8lMrYKe" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOqB" resolve="cellRightLeftWhite" />
          </node>
          <node concept="pQlao" id="4ryo8lMrYKf" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrNA6" resolve="cellLeft" />
          </node>
          <node concept="pQlao" id="4ryo8lMrYKg" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOwV" resolve="cell" />
          </node>
        </node>
        <node concept="pQlao" id="4ryo8lMrYKh" role="EZGxL">
          <ref role="pQlar" node="5wEF59lkheH" resolve="mkRow" />
          <node concept="pQlao" id="4ryo8lMrYKi" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOwV" resolve="cell" />
          </node>
          <node concept="pQlao" id="4ryo8lMrYKj" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOwV" resolve="cell" />
          </node>
          <node concept="pQlao" id="4ryo8lMrYKk" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOwV" resolve="cell" />
          </node>
          <node concept="pQlao" id="4ryo8lMrYKl" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOwV" resolve="cell" />
          </node>
          <node concept="pQlao" id="4ryo8lMrYKm" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOwV" resolve="cell" />
          </node>
        </node>
        <node concept="3DQ70j" id="4ryo8lMs0Sh" role="lGtFl">
          <property role="3V$3am" value="parameters" />
          <property role="3V$3ak" value="b4fcd96f-fa06-46a4-9520-beaeb32aa9a1/6300386900481288729/7054597004572770024" />
        </node>
      </node>
    </node>
    <node concept="1mjQuN" id="4ryo8lMrZ0N" role="YRu88">
      <property role="TrG5h" value="correctPearl4" />
      <node concept="pQlao" id="4ryo8lMrZ0O" role="1mjQuF">
        <property role="3IYp45" value="true" />
        <ref role="pQlar" node="3rXORfo7c5_" resolve="mkPearl" />
        <node concept="pQlao" id="4ryo8lMrZ0P" role="EZGxL">
          <ref role="pQlar" node="5wEF59lkheH" resolve="mkRow" />
          <node concept="pQlao" id="4ryo8lMrZ0Q" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOwV" resolve="cell" />
          </node>
          <node concept="pQlao" id="4ryo8lMrZ0R" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOwV" resolve="cell" />
          </node>
          <node concept="pQlao" id="4ryo8lMrZ0S" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOwV" resolve="cell" />
          </node>
          <node concept="pQlao" id="4ryo8lMrZ0T" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOwV" resolve="cell" />
          </node>
          <node concept="pQlao" id="4ryo8lMrZ0U" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrO9n" resolve="cellDownBlack" />
          </node>
        </node>
        <node concept="pQlao" id="4ryo8lMrZ0V" role="EZGxL">
          <ref role="pQlar" node="5wEF59lkheH" resolve="mkRow" />
          <node concept="pQlao" id="4ryo8lMrZ0W" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrO5y" resolve="cellRightBlack" />
          </node>
          <node concept="pQlao" id="4ryo8lMrZ0X" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrNKG" resolve="cellLeftRight" />
          </node>
          <node concept="pQlao" id="4ryo8lMrZ0Y" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrNKG" resolve="cellLeftRight" />
          </node>
          <node concept="pQlao" id="4ryo8lMrZ0Z" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrNFp" resolve="cellLeftDown" />
          </node>
          <node concept="pQlao" id="4ryo8lMrZ10" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrNIY" resolve="cellUpDown" />
          </node>
        </node>
        <node concept="pQlao" id="4ryo8lMrZ11" role="EZGxL">
          <ref role="pQlar" node="5wEF59lkheH" resolve="mkRow" />
          <node concept="pQlao" id="4ryo8lMrZ12" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrN$w" resolve="cellDown" />
          </node>
          <node concept="pQlao" id="4ryo8lMrZ13" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOwV" resolve="cell" />
          </node>
          <node concept="pQlao" id="4ryo8lMrZ14" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOwV" resolve="cell" />
          </node>
          <node concept="pQlao" id="4ryo8lMrZ15" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrNIY" resolve="cellUpDown" />
          </node>
          <node concept="pQlao" id="4ryo8lMrZ16" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrNM$" resolve="cellUpWhite" />
          </node>
        </node>
        <node concept="pQlao" id="4ryo8lMrZ17" role="EZGxL">
          <ref role="pQlar" node="5wEF59lkheH" resolve="mkRow" />
          <node concept="pQlao" id="4ryo8lMrZ18" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrNBH" resolve="cellUpRight" />
          </node>
          <node concept="pQlao" id="4ryo8lMrZ19" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOqB" resolve="cellLeftRightWhite" />
          </node>
          <node concept="pQlao" id="4ryo8lMrZ1a" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOqB" resolve="cellLeftRightWhite" />
          </node>
          <node concept="pQlao" id="4ryo8lMrZ1b" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrNH9" resolve="cellUpLeft" />
          </node>
          <node concept="pQlao" id="4ryo8lMrZ1c" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOwV" resolve="cell" />
          </node>
        </node>
        <node concept="pQlao" id="4ryo8lMrZ1d" role="EZGxL">
          <ref role="pQlar" node="5wEF59lkheH" resolve="mkRow" />
          <node concept="pQlao" id="4ryo8lMrZ1e" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOwV" resolve="cell" />
          </node>
          <node concept="pQlao" id="4ryo8lMrZ1f" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOwV" resolve="cell" />
          </node>
          <node concept="pQlao" id="4ryo8lMrZ1g" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOwV" resolve="cell" />
          </node>
          <node concept="pQlao" id="4ryo8lMrZ1h" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOwV" resolve="cell" />
          </node>
          <node concept="pQlao" id="4ryo8lMrZ1i" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOwV" resolve="cell" />
          </node>
        </node>
        <node concept="3DQ70j" id="4ryo8lMs13E" role="lGtFl">
          <property role="3V$3am" value="parameters" />
          <property role="3V$3ak" value="b4fcd96f-fa06-46a4-9520-beaeb32aa9a1/6300386900481288729/7054597004572770024" />
        </node>
      </node>
    </node>
    <node concept="1mjQuN" id="4ryo8lMrZ6v" role="YRu88">
      <property role="TrG5h" value="correctPearl5" />
      <node concept="pQlao" id="4ryo8lMrZ6w" role="1mjQuF">
        <property role="3IYp45" value="true" />
        <ref role="pQlar" node="3rXORfo7c5_" resolve="mkPearl" />
        <node concept="pQlao" id="4ryo8lMrZ6x" role="EZGxL">
          <ref role="pQlar" node="5wEF59lkheH" resolve="mkRow" />
          <node concept="pQlao" id="4ryo8lMrZ6y" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOwV" resolve="cell" />
          </node>
          <node concept="pQlao" id="4ryo8lMrZ6z" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOwV" resolve="cell" />
          </node>
          <node concept="pQlao" id="4ryo8lMrZ6$" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOwV" resolve="cell" />
          </node>
          <node concept="pQlao" id="4ryo8lMrZ6_" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOwV" resolve="cell" />
          </node>
          <node concept="pQlao" id="4ryo8lMrZ6A" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrODA" resolve="cellBlack" />
          </node>
        </node>
        <node concept="pQlao" id="4ryo8lMrZ6B" role="EZGxL">
          <ref role="pQlar" node="5wEF59lkheH" resolve="mkRow" />
          <node concept="pQlao" id="4ryo8lMrZ6C" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrODA" resolve="cellBlack" />
          </node>
          <node concept="pQlao" id="4ryo8lMrZ6D" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOwV" resolve="cell" />
          </node>
          <node concept="pQlao" id="4ryo8lMrZ6E" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOwV" resolve="cell" />
          </node>
          <node concept="pQlao" id="4ryo8lMrZ6F" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOwV" resolve="cell" />
          </node>
          <node concept="pQlao" id="4ryo8lMrZ6G" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOwV" resolve="cell" />
          </node>
        </node>
        <node concept="pQlao" id="4ryo8lMrZ6H" role="EZGxL">
          <ref role="pQlar" node="5wEF59lkheH" resolve="mkRow" />
          <node concept="pQlao" id="4ryo8lMrZ6I" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOwV" resolve="cell" />
          </node>
          <node concept="pQlao" id="4ryo8lMrZ6J" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOwV" resolve="cell" />
          </node>
          <node concept="pQlao" id="4ryo8lMrZ6K" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOwV" resolve="cell" />
          </node>
          <node concept="pQlao" id="4ryo8lMrZ6L" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOwV" resolve="cell" />
          </node>
          <node concept="pQlao" id="4ryo8lMrZ6M" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOBf" resolve="cellWhite" />
          </node>
        </node>
        <node concept="pQlao" id="4ryo8lMrZ6N" role="EZGxL">
          <ref role="pQlar" node="5wEF59lkheH" resolve="mkRow" />
          <node concept="pQlao" id="4ryo8lMrZ6O" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOwV" resolve="cell" />
          </node>
          <node concept="pQlao" id="4ryo8lMrZ6P" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrO3I" resolve="cellRightWhite" />
          </node>
          <node concept="pQlao" id="4ryo8lMrZ6Q" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOqB" resolve="cellLeftRightWhite" />
          </node>
          <node concept="pQlao" id="4ryo8lMrZ6R" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrNKG" resolve="cellLeftRight" />
          </node>
          <node concept="pQlao" id="4ryo8lMrZ6S" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrNA6" resolve="cellLeft" />
          </node>
        </node>
        <node concept="pQlao" id="4ryo8lMrZ6T" role="EZGxL">
          <ref role="pQlar" node="5wEF59lkheH" resolve="mkRow" />
          <node concept="pQlao" id="4ryo8lMrZ6U" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOwV" resolve="cell" />
          </node>
          <node concept="pQlao" id="4ryo8lMrZ6V" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOwV" resolve="cell" />
          </node>
          <node concept="pQlao" id="4ryo8lMrZ6W" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOwV" resolve="cell" />
          </node>
          <node concept="pQlao" id="4ryo8lMrZ6X" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOwV" resolve="cell" />
          </node>
          <node concept="pQlao" id="4ryo8lMrZ6Y" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOwV" resolve="cell" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3DQ70j" id="4ryo8lMsdeJ" role="lGtFl">
      <property role="3V$3am" value="actions" />
      <property role="3V$3ak" value="b4fcd96f-fa06-46a4-9520-beaeb32aa9a1/8445081754001417286/6849908093511409942" />
    </node>
    <node concept="1mjQuN" id="4ryo8lMsd8J" role="YRu88">
      <property role="TrG5h" value="correctPearl6" />
      <node concept="pQlao" id="4ryo8lMsd8K" role="1mjQuF">
        <property role="3IYp45" value="true" />
        <ref role="pQlar" node="3rXORfo7c5_" resolve="mkPearl" />
        <node concept="pQlao" id="4ryo8lMsd8L" role="EZGxL">
          <ref role="pQlar" node="5wEF59lkheH" resolve="mkRow" />
          <node concept="pQlao" id="4ryo8lMsd8M" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOwV" resolve="cell" />
          </node>
          <node concept="pQlao" id="4ryo8lMsd8N" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrN$w" resolve="cellDown" />
          </node>
          <node concept="pQlao" id="4ryo8lMsd8O" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrNDu" resolve="cellRightDown" />
          </node>
          <node concept="pQlao" id="4ryo8lMsd8P" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrNKG" resolve="cellLeftRight" />
          </node>
          <node concept="pQlao" id="4ryo8lMsd8Q" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOk0" resolve="cellLeftDownBlack" />
          </node>
        </node>
        <node concept="pQlao" id="4ryo8lMsd8R" role="EZGxL">
          <ref role="pQlar" node="5wEF59lkheH" resolve="mkRow" />
          <node concept="pQlao" id="4ryo8lMsd8S" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrO9n" resolve="cellDownBlack" />
          </node>
          <node concept="pQlao" id="4ryo8lMsd8T" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrNIY" resolve="cellUpDown" />
          </node>
          <node concept="pQlao" id="4ryo8lMsd8U" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrNIY" resolve="cellUpDown" />
          </node>
          <node concept="pQlao" id="4ryo8lMsd8V" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOwV" resolve="cell" />
          </node>
          <node concept="pQlao" id="4ryo8lMsd8W" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrNIY" resolve="cellUpDown" />
          </node>
        </node>
        <node concept="pQlao" id="4ryo8lMsd8X" role="EZGxL">
          <ref role="pQlar" node="5wEF59lkheH" resolve="mkRow" />
          <node concept="pQlao" id="4ryo8lMsd8Y" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrNIY" resolve="cellUpDown" />
          </node>
          <node concept="pQlao" id="4ryo8lMsd8Z" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrNIY" resolve="cellUpDown" />
          </node>
          <node concept="pQlao" id="4ryo8lMsd90" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrNIY" resolve="cellUpDown" />
          </node>
          <node concept="pQlao" id="4ryo8lMsd91" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOwV" resolve="cell" />
          </node>
          <node concept="pQlao" id="4ryo8lMsd92" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOot" resolve="cellUpDownWhite" />
          </node>
        </node>
        <node concept="pQlao" id="4ryo8lMsd93" role="EZGxL">
          <ref role="pQlar" node="5wEF59lkheH" resolve="mkRow" />
          <node concept="pQlao" id="4ryo8lMsd94" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrNIY" resolve="cellUpDown" />
          </node>
          <node concept="pQlao" id="4ryo8lMsd95" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOot" resolve="cellUpDownWhite" />
          </node>
          <node concept="pQlao" id="4ryo8lMsd96" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOot" resolve="cellUpDownWhite" />
          </node>
          <node concept="pQlao" id="4ryo8lMsd97" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrNDu" resolve="cellRightDown" />
          </node>
          <node concept="pQlao" id="4ryo8lMsd98" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrNH9" resolve="cellUpLeft" />
          </node>
        </node>
        <node concept="pQlao" id="4ryo8lMsd99" role="EZGxL">
          <ref role="pQlar" node="5wEF59lkheH" resolve="mkRow" />
          <node concept="pQlao" id="4ryo8lMsd9a" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrNsN" resolve="cellUp" />
          </node>
          <node concept="pQlao" id="4ryo8lMsd9b" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrNBH" resolve="cellUpRight" />
          </node>
          <node concept="pQlao" id="4ryo8lMsd9c" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrNH9" resolve="cellUpLeft" />
          </node>
          <node concept="pQlao" id="4ryo8lMsd9d" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrNBH" resolve="cellUpRight" />
          </node>
          <node concept="pQlao" id="4ryo8lMsd9e" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrNA6" resolve="cellLeft" />
          </node>
        </node>
      </node>
    </node>
    <node concept="rdghn" id="4ryo8lMrYqG" role="YRu88" />
    <node concept="1mjQuN" id="29Mcdkw5946" role="YRu88">
      <property role="TrG5h" value="incorrectPearl1" />
      <node concept="pQlao" id="29Mcdkw5uaU" role="1mjQuF">
        <property role="3IYp45" value="true" />
        <ref role="pQlar" node="3rXORfo7c5_" resolve="mkUserPearl" />
        <node concept="pQlao" id="29Mcdkw5vMe" role="EZGxL">
          <ref role="pQlar" node="5wEF59lkheH" resolve="mkUserRow" />
          <node concept="pQlao" id="29Mcdkw5w_N" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOwV" resolve="cell" />
          </node>
          <node concept="pQlao" id="29Mcdkw5yd1" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOwV" resolve="cell" />
          </node>
          <node concept="pQlao" id="29Mcdkw5zOj" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOwV" resolve="cell" />
          </node>
          <node concept="pQlao" id="29Mcdkw5_rF" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOwV" resolve="cell" />
          </node>
          <node concept="pQlao" id="29Mcdkw5B3n" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrO9n" resolve="cellDownBlack" />
          </node>
        </node>
        <node concept="pQlao" id="29Mcdkw5CFs" role="EZGxL">
          <ref role="pQlar" node="5wEF59lkheH" resolve="mkUserRow" />
          <node concept="pQlao" id="29Mcdkw5Dv$" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOhT" resolve="cellRightDownBlack" />
          </node>
          <node concept="pQlao" id="29Mcdkw5F7x" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrNKG" resolve="cellLeftRight" />
          </node>
          <node concept="pQlao" id="29Mcdkw5GJy" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrNKG" resolve="cellLeftRight" />
          </node>
          <node concept="pQlao" id="29Mcdkw5InG" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrNFp" resolve="cellLeftDown" />
          </node>
          <node concept="pQlao" id="29Mcdkw5K07" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrNIY" resolve="cellUpDown" />
          </node>
        </node>
        <node concept="pQlao" id="29Mcdkw5Nhg" role="EZGxL">
          <ref role="pQlar" node="5wEF59lkheH" resolve="mkUserRow" />
          <node concept="pQlao" id="29Mcdkw5O5I" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrNIY" resolve="cellUpDown" />
          </node>
          <node concept="pQlao" id="29Mcdkw5PIk" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOwV" resolve="cell" />
          </node>
          <node concept="pQlao" id="29Mcdkw5RmY" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOwV" resolve="cell" />
          </node>
          <node concept="pQlao" id="29Mcdkw5SZO" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrNIY" resolve="cellUpDown" />
          </node>
          <node concept="pQlao" id="29Mcdkw5UCV" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrNM$" resolve="cellUpWhite" />
          </node>
        </node>
        <node concept="pQlao" id="29Mcdkw670K" role="EZGxL">
          <ref role="pQlar" node="5wEF59lkheH" resolve="mkUserRow" />
          <node concept="pQlao" id="29Mcdkw67Qg" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrNBH" resolve="cellUpRight" />
          </node>
          <node concept="pQlao" id="29Mcdkw69w_" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOqB" resolve="cellLeftRightWhite" />
          </node>
          <node concept="pQlao" id="29Mcdkw6bb1" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOqB" resolve="cellLeftRightWhite" />
          </node>
          <node concept="pQlao" id="29Mcdkw6cPz" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrNH9" resolve="cellUpLeft" />
          </node>
          <node concept="pQlao" id="29Mcdkw6ewg" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOwV" resolve="cell" />
          </node>
        </node>
        <node concept="pQlao" id="29Mcdkw6ko3" role="EZGxL">
          <ref role="pQlar" node="5wEF59lkheH" resolve="mkUserRow" />
          <node concept="pQlao" id="29Mcdkw6ldP" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOwV" resolve="cell" />
          </node>
          <node concept="pQlao" id="29Mcdkw6mSs" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOwV" resolve="cell" />
          </node>
          <node concept="pQlao" id="29Mcdkw6oza" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOwV" resolve="cell" />
          </node>
          <node concept="pQlao" id="29Mcdkw6qdY" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOwV" resolve="cell" />
          </node>
          <node concept="pQlao" id="29Mcdkw6rT3" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOwV" resolve="cell" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3DQ70j" id="29Mcdkw5nEJ" role="lGtFl">
      <property role="3V$3am" value="actions" />
      <property role="3V$3ak" value="b4fcd96f-fa06-46a4-9520-beaeb32aa9a1/8445081754001417286/6849908093511409942" />
    </node>
    <node concept="1mjQuN" id="29Mcdkw5l9W" role="YRu88">
      <property role="TrG5h" value="incorrectPearl2" />
      <node concept="pQlao" id="29Mcdkw6vCQ" role="1mjQuF">
        <property role="3IYp45" value="true" />
        <ref role="pQlar" node="3rXORfo7c5_" resolve="mkUserPearl" />
        <node concept="pQlao" id="29Mcdkw6wul" role="EZGxL">
          <ref role="pQlar" node="5wEF59lkheH" resolve="mkUserRow" />
          <node concept="pQlao" id="29Mcdkw6CQj" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOwV" resolve="cell" />
          </node>
          <node concept="pQlao" id="29Mcdkw6ExM" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOwV" resolve="cell" />
          </node>
          <node concept="pQlao" id="29Mcdkw6Gdo" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOwV" resolve="cell" />
          </node>
          <node concept="pQlao" id="29Mcdkw6HT4" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOwV" resolve="cell" />
          </node>
          <node concept="pQlao" id="29Mcdkw6J_4" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrODA" resolve="cellBlack" />
          </node>
        </node>
        <node concept="pQlao" id="29Mcdkw6y9f" role="EZGxL">
          <ref role="pQlar" node="5wEF59lkheH" resolve="mkUserRow" />
          <node concept="pQlao" id="29Mcdkw6Krf" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrODA" resolve="cellBlack" />
          </node>
          <node concept="pQlao" id="29Mcdkw6M7v" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOwV" resolve="cell" />
          </node>
          <node concept="pQlao" id="29Mcdkw6NNH" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOwV" resolve="cell" />
          </node>
          <node concept="pQlao" id="29Mcdkw6Pw1" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOwV" resolve="cell" />
          </node>
          <node concept="pQlao" id="29Mcdkw6RcA" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOwV" resolve="cell" />
          </node>
        </node>
        <node concept="pQlao" id="29Mcdkw6zOd" role="EZGxL">
          <ref role="pQlar" node="5wEF59lkheH" resolve="mkUserRow" />
          <node concept="pQlao" id="29Mcdkw6S32" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOwV" resolve="cell" />
          </node>
          <node concept="pQlao" id="29Mcdkw6TJO" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOwV" resolve="cell" />
          </node>
          <node concept="pQlao" id="29Mcdkw6VsE" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOwV" resolve="cell" />
          </node>
          <node concept="pQlao" id="29Mcdkw6X9D" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOwV" resolve="cell" />
          </node>
          <node concept="pQlao" id="29Mcdkw6YQQ" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOBf" resolve="cellWhite" />
          </node>
        </node>
        <node concept="pQlao" id="29Mcdkw6_vk" role="EZGxL">
          <ref role="pQlar" node="5wEF59lkheH" resolve="mkUserRow" />
          <node concept="pQlao" id="29Mcdkw6ZHD" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrNyR" resolve="cellRight" />
          </node>
          <node concept="pQlao" id="29Mcdkw71ri" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOqB" resolve="cellLeftRightWhite" />
          </node>
          <node concept="pQlao" id="29Mcdkw738Q" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOqB" resolve="cellLeftRightWhite" />
          </node>
          <node concept="pQlao" id="29Mcdkw7c$T" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrNKG" resolve="cellLeftRight" />
          </node>
          <node concept="pQlao" id="29Mcdkw7ejv" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrNKG" resolve="cellLeftRight" />
          </node>
        </node>
        <node concept="pQlao" id="29Mcdkw6BaJ" role="EZGxL">
          <ref role="pQlar" node="5wEF59lkheH" resolve="mkUserRow" />
          <node concept="pQlao" id="29Mcdkw73ZE" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOwV" resolve="cell" />
          </node>
          <node concept="pQlao" id="29Mcdkw75Ha" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOwV" resolve="cell" />
          </node>
          <node concept="pQlao" id="29Mcdkw77qO" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOwV" resolve="cell" />
          </node>
          <node concept="pQlao" id="29Mcdkw798x" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOwV" resolve="cell" />
          </node>
          <node concept="pQlao" id="29Mcdkw7aQy" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOwV" resolve="cell" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3DQ70j" id="29Mcdkw5nIp" role="lGtFl">
      <property role="3V$3am" value="actions" />
      <property role="3V$3ak" value="b4fcd96f-fa06-46a4-9520-beaeb32aa9a1/8445081754001417286/6849908093511409942" />
    </node>
    <node concept="1mjQuN" id="29Mcdkw5lhq" role="YRu88">
      <property role="TrG5h" value="incorrectPearl3" />
      <node concept="pQlao" id="29Mcdkw5lld" role="1mjQuF">
        <ref role="pQlar" to="zaie:34Rb5Oc3jwF" resolve="False" />
      </node>
    </node>
    <node concept="3DQ70j" id="29Mcdkw5nM4" role="lGtFl">
      <property role="3V$3am" value="actions" />
      <property role="3V$3ak" value="b4fcd96f-fa06-46a4-9520-beaeb32aa9a1/8445081754001417286/6849908093511409942" />
    </node>
    <node concept="1mjQuN" id="29Mcdkw5lpb" role="YRu88">
      <property role="TrG5h" value="incorrectPearl4" />
      <node concept="pQlao" id="29Mcdkw5lt0" role="1mjQuF">
        <ref role="pQlar" to="zaie:34Rb5Oc3jwF" resolve="False" />
      </node>
    </node>
    <node concept="3DQ70j" id="29Mcdkw5nPK" role="lGtFl">
      <property role="3V$3am" value="actions" />
      <property role="3V$3ak" value="b4fcd96f-fa06-46a4-9520-beaeb32aa9a1/8445081754001417286/6849908093511409942" />
    </node>
    <node concept="1mjQuN" id="29Mcdkw5lwL" role="YRu88">
      <property role="TrG5h" value="incorrectPearl5" />
      <node concept="pQlao" id="29Mcdkw7rJX" role="1mjQuF">
        <property role="3IYp45" value="true" />
        <ref role="pQlar" node="3rXORfo7c5_" resolve="mkUserPearl" />
        <node concept="pQlao" id="29Mcdkw7tvp" role="EZGxL">
          <ref role="pQlar" node="5wEF59lkheH" resolve="mkUserRow" />
          <node concept="pQlao" id="29Mcdkw7_m3" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrNFp" resolve="cellLeftDown" />
          </node>
          <node concept="pQlao" id="29Mcdkw7B6c" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrNA6" resolve="cellLeft" />
          </node>
          <node concept="pQlao" id="29Mcdkw7CQm" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOwV" resolve="cell" />
          </node>
          <node concept="pQlao" id="29Mcdkw7EAA" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOwV" resolve="cell" />
          </node>
          <node concept="pQlao" id="29Mcdkw7Gna" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrODA" resolve="cellBlack" />
          </node>
        </node>
        <node concept="pQlao" id="29Mcdkw7veO" role="EZGxL">
          <ref role="pQlar" node="5wEF59lkheH" resolve="mkUserRow" />
          <node concept="pQlao" id="29Mcdkw7HfH" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrO1L" resolve="cellUpBlack" />
          </node>
          <node concept="pQlao" id="29Mcdkw7J0r" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOwV" resolve="cell" />
          </node>
          <node concept="pQlao" id="29Mcdkw7KLd" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOwV" resolve="cell" />
          </node>
          <node concept="pQlao" id="29Mcdkw7My5" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOwV" resolve="cell" />
          </node>
          <node concept="pQlao" id="29Mcdkw7Oje" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOwV" resolve="cell" />
          </node>
        </node>
        <node concept="pQlao" id="29Mcdkw7wYm" role="EZGxL">
          <ref role="pQlar" node="5wEF59lkheH" resolve="mkUserRow" />
          <node concept="pQlao" id="29Mcdkw7PbZ" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOwV" resolve="cell" />
          </node>
          <node concept="pQlao" id="29Mcdkw7QXi" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOwV" resolve="cell" />
          </node>
          <node concept="pQlao" id="29Mcdkw7SIG" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOwV" resolve="cell" />
          </node>
          <node concept="pQlao" id="29Mcdkw7Uwc" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOwV" resolve="cell" />
          </node>
          <node concept="pQlao" id="29Mcdkw7WhX" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOBf" resolve="cellWhite" />
          </node>
        </node>
        <node concept="pQlao" id="29Mcdkw7yHY" role="EZGxL">
          <ref role="pQlar" node="5wEF59lkheH" resolve="mkUserRow" />
          <node concept="pQlao" id="29Mcdkw7XaZ" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOwV" resolve="cell" />
          </node>
          <node concept="pQlao" id="29Mcdkw7YWU" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOBf" resolve="cellWhite" />
          </node>
          <node concept="pQlao" id="29Mcdkw80J2" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOBf" resolve="cellWhite" />
          </node>
          <node concept="pQlao" id="29Mcdkw82x7" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOwV" resolve="cell" />
          </node>
          <node concept="pQlao" id="29Mcdkw85cw" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOwV" resolve="cell" />
          </node>
        </node>
        <node concept="pQlao" id="29Mcdkw7$tR" role="EZGxL">
          <ref role="pQlar" node="5wEF59lkheH" resolve="mkUserRow" />
          <node concept="pQlao" id="29Mcdkw865Q" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOwV" resolve="cell" />
          </node>
          <node concept="pQlao" id="29Mcdkw87Sp" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOwV" resolve="cell" />
          </node>
          <node concept="pQlao" id="29Mcdkw89F3" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOwV" resolve="cell" />
          </node>
          <node concept="pQlao" id="29Mcdkw8a$$" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOwV" resolve="cell" />
          </node>
          <node concept="pQlao" id="29Mcdkw8buh" role="EZGxL">
            <ref role="pQlar" node="4ryo8lMrOwV" resolve="cell" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3DQ70j" id="29Mcdkw5nTt" role="lGtFl">
      <property role="3V$3am" value="actions" />
      <property role="3V$3ak" value="b4fcd96f-fa06-46a4-9520-beaeb32aa9a1/8445081754001417286/6849908093511409942" />
    </node>
    <node concept="1mjQuN" id="29Mcdkw5lCB" role="YRu88">
      <property role="TrG5h" value="incorrectPearl6" />
      <node concept="pQlao" id="29Mcdkw5lGz" role="1mjQuF">
        <ref role="pQlar" to="zaie:34Rb5Oc3jwF" resolve="False" />
      </node>
    </node>
    <node concept="rdghn" id="29Mcdkw7pK8" role="YRu88" />
    <node concept="1mjQuN" id="29Mcdkw7pUw" role="YRu88">
      <property role="TrG5h" value="incorrectPearl7" />
      <node concept="pQlao" id="29Mcdkw7pZW" role="1mjQuF">
        <ref role="pQlar" to="zaie:34Rb5Oc3jwF" resolve="False" />
      </node>
    </node>
    <node concept="rdghn" id="29Mcdkw3b3E" role="YRu88" />
    <node concept="YRuf3" id="29Mcdkw0H8_" role="YRu88">
      <property role="1lq2J7" value="0" />
      <property role="1lgsvm" value="true" />
      <node concept="pQlao" id="29Mcdkw0Hcz" role="YRufA">
        <ref role="pQlar" node="4ryo8lMDwiZ" resolve="correctUserPearl" />
        <node concept="1mjQuQ" id="29Mcdkw0HcH" role="EZGxL">
          <ref role="1mjQuR" node="4ryo8lMrVTt" resolve="pearl1" />
        </node>
      </node>
    </node>
    <node concept="YRuf3" id="4ryo8lMsiSd" role="YRu88">
      <property role="1lq2J7" value="0" />
      <property role="1lgsvm" value="true" />
      <node concept="pQlao" id="4ryo8lMsiVF" role="YRufA">
        <ref role="pQlar" node="4ryo8lMDwiZ" resolve="correctUserPearl" />
        <node concept="1mjQuQ" id="4ryo8lMsiVS" role="EZGxL">
          <ref role="1mjQuR" node="4ryo8lMrYyY" resolve="pearl2" />
        </node>
      </node>
    </node>
    <node concept="YRuf3" id="4ryo8lMsjcW" role="YRu88">
      <property role="1lq2J7" value="0" />
      <property role="1lgsvm" value="true" />
      <node concept="pQlao" id="4ryo8lMsjcX" role="YRufA">
        <ref role="pQlar" node="4ryo8lMDwiZ" resolve="correctUserPearl" />
        <node concept="1mjQuQ" id="4ryo8lMsjcY" role="EZGxL">
          <ref role="1mjQuR" node="4ryo8lMrYJR" resolve="pearl3" />
        </node>
      </node>
    </node>
    <node concept="YRuf3" id="4ryo8lMsjjV" role="YRu88">
      <property role="1lq2J7" value="0" />
      <property role="1lgsvm" value="true" />
      <node concept="pQlao" id="4ryo8lMsjjW" role="YRufA">
        <ref role="pQlar" node="4ryo8lMDwiZ" resolve="correctUserPearl" />
        <node concept="1mjQuQ" id="4ryo8lMsjjX" role="EZGxL">
          <ref role="1mjQuR" node="4ryo8lMrZ0N" resolve="pearl4" />
        </node>
      </node>
    </node>
    <node concept="YRuf3" id="4ryo8lMsjqW" role="YRu88">
      <property role="1lq2J7" value="0" />
      <property role="1lgsvm" value="true" />
      <node concept="pQlao" id="4ryo8lMsjqX" role="YRufA">
        <ref role="pQlar" node="4ryo8lMDwiZ" resolve="correctUserPearl" />
        <node concept="1mjQuQ" id="4ryo8lMsjqY" role="EZGxL">
          <ref role="1mjQuR" node="4ryo8lMrZ6v" resolve="pearl5" />
        </node>
      </node>
    </node>
    <node concept="YRuf3" id="4ryo8lMsjy8" role="YRu88">
      <property role="1lq2J7" value="0" />
      <property role="1lgsvm" value="true" />
      <node concept="pQlao" id="4ryo8lMsjy9" role="YRufA">
        <ref role="pQlar" node="4ryo8lMDwiZ" resolve="correctUserPearl" />
        <node concept="1mjQuQ" id="4ryo8lMsjya" role="EZGxL">
          <ref role="1mjQuR" node="4ryo8lMsd8J" resolve="pearl6" />
        </node>
      </node>
    </node>
    <node concept="YRuf3" id="29Mcdkw5o2A" role="YRu88">
      <property role="1lq2J7" value="0" />
      <property role="1lgsvm" value="true" />
      <node concept="pQlao" id="29Mcdkw5o6y" role="YRufA">
        <ref role="pQlar" node="4ryo8lMDwiZ" resolve="correctUserPearl" />
        <node concept="1mjQuQ" id="29Mcdkw5o6P" role="EZGxL">
          <ref role="1mjQuR" node="29Mcdkw5946" resolve="incorrectPearl1" />
        </node>
      </node>
    </node>
    <node concept="YRuf3" id="29Mcdkw5oXC" role="YRu88">
      <property role="1lq2J7" value="0" />
      <property role="1lgsvm" value="true" />
      <node concept="pQlao" id="29Mcdkw5p1B" role="YRufA">
        <ref role="pQlar" node="4ryo8lMDwiZ" resolve="correctUserPearl" />
        <node concept="1mjQuQ" id="29Mcdkw5p1U" role="EZGxL">
          <ref role="1mjQuR" node="29Mcdkw5l9W" resolve="incorrectPearl2" />
        </node>
      </node>
    </node>
    <node concept="YRuf3" id="29Mcdkw5pSP" role="YRu88">
      <property role="1lq2J7" value="0" />
      <property role="1lgsvm" value="true" />
      <node concept="pQlao" id="29Mcdkw7g2O" role="YRufA">
        <ref role="pQlar" to="zaie:34Rb5Oc3jwP" resolve="Not" />
        <node concept="pQlao" id="29Mcdkw7gU3" role="EZGxL">
          <ref role="pQlar" to="zaie:34Rb5Oc3jwP" resolve="Not" />
          <node concept="1mjQuQ" id="29Mcdkw7hLv" role="EZGxL">
            <ref role="1mjQuR" node="29Mcdkw5lhq" resolve="incorrectPearl3" />
          </node>
        </node>
      </node>
    </node>
    <node concept="YRuf3" id="29Mcdkw5pWR" role="YRu88">
      <property role="1lq2J7" value="0" />
      <property role="1lgsvm" value="true" />
      <node concept="pQlao" id="29Mcdkw5pWS" role="YRufA">
        <ref role="pQlar" to="zaie:34Rb5Oc3jwP" resolve="Not" />
        <node concept="pQlao" id="29Mcdkw7jx5" role="EZGxL">
          <ref role="pQlar" to="zaie:34Rb5Oc3jwP" resolve="Not" />
          <node concept="1mjQuQ" id="29Mcdkw7koz" role="EZGxL">
            <ref role="1mjQuR" node="29Mcdkw5lpb" resolve="incorrectPearl4" />
          </node>
        </node>
      </node>
    </node>
    <node concept="YRuf3" id="29Mcdkw5q0W" role="YRu88">
      <property role="1lq2J7" value="0" />
      <property role="1lgsvm" value="true" />
      <node concept="pQlao" id="29Mcdkw5q0X" role="YRufA">
        <ref role="pQlar" node="4ryo8lMDwiZ" resolve="correctUserPearl" />
        <node concept="1mjQuQ" id="29Mcdkw5q0Y" role="EZGxL">
          <ref role="1mjQuR" node="29Mcdkw5lwL" resolve="incorrectPearl5" />
        </node>
      </node>
    </node>
    <node concept="YRuf3" id="29Mcdkw5q51" role="YRu88">
      <property role="1lq2J7" value="0" />
      <property role="1lgsvm" value="true" />
      <node concept="pQlao" id="29Mcdkw7m7E" role="YRufA">
        <ref role="pQlar" to="zaie:34Rb5Oc3jwP" resolve="Not" />
        <node concept="pQlao" id="29Mcdkw7mZ2" role="EZGxL">
          <ref role="pQlar" to="zaie:34Rb5Oc3jwP" resolve="Not" />
          <node concept="1mjQuQ" id="29Mcdkw7nQz" role="EZGxL">
            <ref role="1mjQuR" node="29Mcdkw5lCB" resolve="incorrectPearl6" />
          </node>
        </node>
      </node>
    </node>
    <node concept="YRuf3" id="29Mcdkw7oN3" role="YRu88">
      <property role="1lq2J7" value="0" />
      <property role="1lgsvm" value="true" />
      <node concept="pQlao" id="29Mcdkw7oSb" role="YRufA">
        <ref role="pQlar" to="zaie:34Rb5Oc3jwP" resolve="Not" />
        <node concept="pQlao" id="29Mcdkw7oSo" role="EZGxL">
          <ref role="pQlar" to="zaie:34Rb5Oc3jwP" resolve="Not" />
          <node concept="1mjQuQ" id="29Mcdkw7q0j" role="EZGxL">
            <ref role="1mjQuR" node="29Mcdkw7pUw" resolve="incorrectPearl7" />
          </node>
        </node>
      </node>
    </node>
    <node concept="rdghn" id="29Mcdkw5pP3" role="YRu88" />
    <node concept="pRJ9f" id="3rXORfo7c5_" role="pRMtA">
      <property role="TrG5h" value="mkUserPearl" />
      <node concept="bl5qV" id="3rXORfo7jJT" role="pRJ9k">
        <ref role="bl5qO" node="3rXORfo7b_6" resolve="Line" />
      </node>
      <node concept="bl5qV" id="3rXORfo7jLP" role="pRJ9k">
        <ref role="bl5qO" node="3rXORfo7b_6" resolve="Line" />
      </node>
      <node concept="bl5qV" id="3rXORfo7jMN" role="pRJ9k">
        <ref role="bl5qO" node="3rXORfo7b_6" resolve="Line" />
      </node>
      <node concept="bl5qV" id="3rXORfo7jNN" role="pRJ9k">
        <ref role="bl5qO" node="3rXORfo7b_6" resolve="Line" />
      </node>
      <node concept="bl5qV" id="3rXORfo7jON" role="pRJ9k">
        <ref role="bl5qO" node="3rXORfo7b_6" resolve="Line" />
      </node>
      <node concept="bl5qV" id="3rXORfo7c5A" role="pRJ9p">
        <ref role="bl5qO" node="5wEF59lkheF" resolve="Pearl" />
      </node>
    </node>
    <node concept="pRJ9f" id="5wEF59lkheH" role="pRMtA">
      <property role="TrG5h" value="mkUserRow" />
      <node concept="bl5qV" id="3rXORfo7jy8" role="pRJ9k">
        <ref role="bl5qO" node="3rXORfo7bKn" resolve="Cell" />
      </node>
      <node concept="bl5qV" id="3rXORfo7jz4" role="pRJ9k">
        <ref role="bl5qO" node="3rXORfo7bKn" resolve="Cell" />
      </node>
      <node concept="bl5qV" id="3rXORfo7jXe" role="pRJ9k">
        <ref role="bl5qO" node="3rXORfo7bKn" resolve="Cell" />
      </node>
      <node concept="bl5qV" id="3rXORfo7jZa" role="pRJ9k">
        <ref role="bl5qO" node="3rXORfo7bKn" resolve="Cell" />
      </node>
      <node concept="bl5qV" id="3rXORfo7k08" role="pRJ9k">
        <ref role="bl5qO" node="3rXORfo7bKn" resolve="Cell" />
      </node>
      <node concept="bl5qV" id="5wEF59lkheI" role="pRJ9p">
        <ref role="bl5qO" node="3rXORfo7b_6" resolve="Row" />
      </node>
    </node>
    <node concept="3DQ70j" id="4ryo8lMtJ73" role="lGtFl">
      <property role="3V$3am" value="operators" />
      <property role="3V$3ak" value="b4fcd96f-fa06-46a4-9520-beaeb32aa9a1/8445081754001417286/6300386900480909287" />
    </node>
    <node concept="pRJ9f" id="4ryo8lMCcDY" role="pRMtA">
      <property role="TrG5h" value="mkPearl" />
      <node concept="bl5qV" id="4ryo8lMCcGW" role="pRJ9k">
        <ref role="bl5qO" node="4ryo8lMtJ5s" resolve="Row" />
      </node>
      <node concept="bl5qV" id="4ryo8lMCcH5" role="pRJ9k">
        <ref role="bl5qO" node="4ryo8lMtJ5s" resolve="Row" />
      </node>
      <node concept="bl5qV" id="4ryo8lMCcHe" role="pRJ9k">
        <ref role="bl5qO" node="4ryo8lMtJ5s" resolve="Row" />
      </node>
      <node concept="bl5qV" id="4ryo8lMCcHr" role="pRJ9k">
        <ref role="bl5qO" node="4ryo8lMtJ5s" resolve="Row" />
      </node>
      <node concept="bl5qV" id="4ryo8lMCcHA" role="pRJ9k">
        <ref role="bl5qO" node="4ryo8lMtJ5s" resolve="Row" />
      </node>
      <node concept="bl5qV" id="4ryo8lMCcDZ" role="pRJ9p">
        <ref role="bl5qO" node="4ryo8lMCcz8" resolve="Pearl" />
      </node>
    </node>
    <node concept="pRJ9f" id="4ryo8lMtJig" role="pRMtA">
      <property role="TrG5h" value="mkRow" />
      <node concept="bl5qV" id="4ryo8lMtJoA" role="pRJ9k">
        <ref role="bl5qO" node="4ryo8lMsAuT" resolve="Cell" />
      </node>
      <node concept="bl5qV" id="4ryo8lMtJoL" role="pRJ9k">
        <ref role="bl5qO" node="4ryo8lMsAuT" resolve="Cell" />
      </node>
      <node concept="bl5qV" id="4ryo8lMtJoV" role="pRJ9k">
        <ref role="bl5qO" node="4ryo8lMsAuT" resolve="Cell" />
      </node>
      <node concept="bl5qV" id="4ryo8lMtJp8" role="pRJ9k">
        <ref role="bl5qO" node="4ryo8lMsAuT" resolve="Cell" />
      </node>
      <node concept="bl5qV" id="4ryo8lMtJpm" role="pRJ9k">
        <ref role="bl5qO" node="4ryo8lMsAuT" resolve="Cell" />
      </node>
      <node concept="bl5qV" id="4ryo8lMtJih" role="pRJ9p">
        <ref role="bl5qO" node="4ryo8lMtJ5s" resolve="Row" />
      </node>
    </node>
    <node concept="pRJ9f" id="4ryo8lMsCK$" role="pRMtA">
      <property role="TrG5h" value="mkCell" />
      <node concept="bl5qV" id="4ryo8lMsCTq" role="pRJ9k">
        <ref role="bl5qO" node="4ryo8lMsAx7" resolve="CellType" />
      </node>
      <node concept="bl5qV" id="4ryo8lMsD1G" role="pRJ9k">
        <ref role="bl5qO" to="zaie:7zB5IrGSITC" resolve="Bool" />
      </node>
      <node concept="bl5qV" id="4ryo8lMsD1V" role="pRJ9k">
        <ref role="bl5qO" to="zaie:7zB5IrGSITC" resolve="Bool" />
      </node>
      <node concept="bl5qV" id="4ryo8lMsD25" role="pRJ9k">
        <ref role="bl5qO" to="zaie:7zB5IrGSITC" resolve="Bool" />
      </node>
      <node concept="bl5qV" id="4ryo8lMsD2j" role="pRJ9k">
        <ref role="bl5qO" to="zaie:7zB5IrGSITC" resolve="Bool" />
      </node>
      <node concept="bl5qV" id="4ryo8lMsCK_" role="pRJ9p">
        <ref role="bl5qO" node="4ryo8lMsAuT" resolve="Cell" />
      </node>
    </node>
    <node concept="3DQ70j" id="4ryo8lM$Woh" role="lGtFl">
      <property role="3V$3am" value="operators" />
      <property role="3V$3ak" value="b4fcd96f-fa06-46a4-9520-beaeb32aa9a1/8445081754001417286/6300386900480909287" />
    </node>
    <node concept="pRJ9f" id="4ryo8lMyCg6" role="pRMtA">
      <property role="TrG5h" value="mkStar" />
      <node concept="bl5qV" id="4ryo8lMyCiA" role="pRJ9k">
        <ref role="bl5qO" node="4ryo8lMsAuT" resolve="Cell" />
      </node>
      <node concept="bl5qV" id="4ryo8lMyCiR" role="pRJ9k">
        <ref role="bl5qO" node="4ryo8lMsAuT" resolve="Cell" />
      </node>
      <node concept="bl5qV" id="4ryo8lMyCj3" role="pRJ9k">
        <ref role="bl5qO" node="4ryo8lMsAuT" resolve="Cell" />
      </node>
      <node concept="bl5qV" id="4ryo8lMyCjn" role="pRJ9k">
        <ref role="bl5qO" node="4ryo8lMsAuT" resolve="Cell" />
      </node>
      <node concept="bl5qV" id="4ryo8lMyCjb" role="pRJ9k">
        <ref role="bl5qO" node="4ryo8lMsAuT" resolve="Cell" />
      </node>
      <node concept="bl5qV" id="4ryo8lMyCg7" role="pRJ9p">
        <ref role="bl5qO" node="4ryo8lMyCfH" resolve="star" />
      </node>
    </node>
    <node concept="pRJ9f" id="4ryo8lM$WLj" role="pRMtA">
      <property role="TrG5h" value="mkStarRow" />
      <node concept="bl5qV" id="4ryo8lM$Y9B" role="pRJ9k">
        <ref role="bl5qO" node="4ryo8lMyCfH" resolve="Star" />
      </node>
      <node concept="bl5qV" id="4ryo8lM$Y9K" role="pRJ9k">
        <ref role="bl5qO" node="4ryo8lMyCfH" resolve="Star" />
      </node>
      <node concept="bl5qV" id="4ryo8lM$Y9W" role="pRJ9k">
        <ref role="bl5qO" node="4ryo8lMyCfH" resolve="Star" />
      </node>
      <node concept="bl5qV" id="4ryo8lM$Ya6" role="pRJ9k">
        <ref role="bl5qO" node="4ryo8lMyCfH" resolve="Star" />
      </node>
      <node concept="bl5qV" id="4ryo8lM$Yak" role="pRJ9k">
        <ref role="bl5qO" node="4ryo8lMyCfH" resolve="Star" />
      </node>
      <node concept="bl5qV" id="4ryo8lM$WLk" role="pRJ9p">
        <ref role="bl5qO" node="4ryo8lM$WEk" resolve="StarRow" />
      </node>
    </node>
    <node concept="pRJ9f" id="4ryo8lM$Wqk" role="pRMtA">
      <property role="TrG5h" value="mkStarPearl" />
      <node concept="bl5qV" id="4ryo8lM$WsG" role="pRJ9k">
        <ref role="bl5qO" node="4ryo8lM$WEk" resolve="StarRow" />
      </node>
      <node concept="bl5qV" id="4ryo8lM$WK2" role="pRJ9k">
        <ref role="bl5qO" node="4ryo8lM$WEk" resolve="StarRow" />
      </node>
      <node concept="bl5qV" id="4ryo8lM$WKc" role="pRJ9k">
        <ref role="bl5qO" node="4ryo8lM$WEk" resolve="StarRow" />
      </node>
      <node concept="bl5qV" id="4ryo8lM$WKr" role="pRJ9k">
        <ref role="bl5qO" node="4ryo8lM$WEk" resolve="StarRow" />
      </node>
      <node concept="bl5qV" id="4ryo8lM$WKW" role="pRJ9k">
        <ref role="bl5qO" node="4ryo8lM$WEk" resolve="StarRow" />
      </node>
      <node concept="bl5qV" id="4ryo8lM$Wql" role="pRJ9p">
        <ref role="bl5qO" node="4ryo8lM$Wny" resolve="StarPearl" />
      </node>
    </node>
    <node concept="3DQ70j" id="4ryo8lMsLZP" role="lGtFl">
      <property role="3V$3am" value="operators" />
      <property role="3V$3ak" value="b4fcd96f-fa06-46a4-9520-beaeb32aa9a1/8445081754001417286/6300386900480909287" />
    </node>
    <node concept="pRJ9f" id="4ryo8lMsLXR" role="pRMtA">
      <property role="TrG5h" value="cellTypeEmpty" />
      <property role="pRJ9j" value="true" />
      <node concept="bl5qV" id="4ryo8lMsLXS" role="pRJ9p">
        <ref role="bl5qO" node="4ryo8lMsAx7" resolve="CellType" />
      </node>
    </node>
    <node concept="pRJ9f" id="4ryo8lMsM1H" role="pRMtA">
      <property role="TrG5h" value="cellTypeWhite" />
      <property role="pRJ9j" value="true" />
      <node concept="bl5qV" id="4ryo8lMsM1I" role="pRJ9p">
        <ref role="bl5qO" node="4ryo8lMsAx7" resolve="CellType" />
      </node>
    </node>
    <node concept="pRJ9f" id="4ryo8lMsM3I" role="pRMtA">
      <property role="TrG5h" value="cellTypeBlack" />
      <property role="pRJ9j" value="true" />
      <node concept="bl5qV" id="4ryo8lMsM3J" role="pRJ9p">
        <ref role="bl5qO" node="4ryo8lMsAx7" resolve="CellType" />
      </node>
    </node>
    <node concept="3DQ70j" id="4ryo8lMsLR8" role="lGtFl">
      <property role="3V$3am" value="operators" />
      <property role="3V$3ak" value="b4fcd96f-fa06-46a4-9520-beaeb32aa9a1/8445081754001417286/6300386900480909287" />
    </node>
    <node concept="pRJ9f" id="4ryo8lMrOwV" role="pRMtA">
      <property role="TrG5h" value="cell" />
      <property role="pRJ9j" value="true" />
      <node concept="bl5qV" id="4ryo8lMrOwW" role="pRJ9p">
        <ref role="bl5qO" node="3rXORfo7bKn" resolve="Cell" />
      </node>
    </node>
    <node concept="pRJ9f" id="4ryo8lMrOBf" role="pRMtA">
      <property role="TrG5h" value="cellWhite" />
      <property role="pRJ9j" value="true" />
      <node concept="bl5qV" id="4ryo8lMrOBg" role="pRJ9p">
        <ref role="bl5qO" node="3rXORfo7bKn" resolve="Cell" />
      </node>
    </node>
    <node concept="pRJ9f" id="4ryo8lMrODA" role="pRMtA">
      <property role="TrG5h" value="cellBlack" />
      <property role="pRJ9j" value="true" />
      <node concept="bl5qV" id="4ryo8lMrODB" role="pRJ9p">
        <ref role="bl5qO" node="3rXORfo7bKn" resolve="Cell" />
      </node>
    </node>
    <node concept="pRJ9f" id="4ryo8lMrNsN" role="pRMtA">
      <property role="TrG5h" value="cellUp" />
      <property role="pRJ9j" value="true" />
      <node concept="bl5qV" id="4ryo8lMrNsO" role="pRJ9p">
        <ref role="bl5qO" node="3rXORfo7bKn" resolve="Cell" />
      </node>
    </node>
    <node concept="pRJ9f" id="4ryo8lMrNM$" role="pRMtA">
      <property role="TrG5h" value="cellUpWhite" />
      <property role="pRJ9j" value="true" />
      <node concept="bl5qV" id="4ryo8lMrNM_" role="pRJ9p">
        <ref role="bl5qO" node="3rXORfo7bKn" resolve="Cell" />
      </node>
    </node>
    <node concept="pRJ9f" id="4ryo8lMrO1L" role="pRMtA">
      <property role="TrG5h" value="cellUpBlack" />
      <property role="pRJ9j" value="true" />
      <node concept="bl5qV" id="4ryo8lMrO1M" role="pRJ9p">
        <ref role="bl5qO" node="3rXORfo7bKn" resolve="Cell" />
      </node>
    </node>
    <node concept="pRJ9f" id="4ryo8lMrNyR" role="pRMtA">
      <property role="TrG5h" value="cellRight" />
      <property role="pRJ9j" value="true" />
      <node concept="bl5qV" id="4ryo8lMrNyS" role="pRJ9p">
        <ref role="bl5qO" node="3rXORfo7bKn" resolve="Cell" />
      </node>
    </node>
    <node concept="pRJ9f" id="4ryo8lMrO3I" role="pRMtA">
      <property role="TrG5h" value="cellRightWhite" />
      <property role="pRJ9j" value="true" />
      <node concept="bl5qV" id="4ryo8lMrO3J" role="pRJ9p">
        <ref role="bl5qO" node="3rXORfo7bKn" resolve="Cell" />
      </node>
    </node>
    <node concept="pRJ9f" id="4ryo8lMrO5y" role="pRMtA">
      <property role="TrG5h" value="cellRightBlack" />
      <property role="pRJ9j" value="true" />
      <node concept="bl5qV" id="4ryo8lMrO5z" role="pRJ9p">
        <ref role="bl5qO" node="3rXORfo7bKn" resolve="Cell" />
      </node>
    </node>
    <node concept="pRJ9f" id="4ryo8lMrN$w" role="pRMtA">
      <property role="TrG5h" value="cellDown" />
      <property role="pRJ9j" value="true" />
      <node concept="bl5qV" id="4ryo8lMrN$x" role="pRJ9p">
        <ref role="bl5qO" node="3rXORfo7bKn" resolve="Cell" />
      </node>
    </node>
    <node concept="pRJ9f" id="4ryo8lMrO7s" role="pRMtA">
      <property role="TrG5h" value="cellDownWhite" />
      <property role="pRJ9j" value="true" />
      <node concept="bl5qV" id="4ryo8lMrO7t" role="pRJ9p">
        <ref role="bl5qO" node="3rXORfo7bKn" resolve="Cell" />
      </node>
    </node>
    <node concept="pRJ9f" id="4ryo8lMrO9n" role="pRMtA">
      <property role="TrG5h" value="cellDownBlack" />
      <property role="pRJ9j" value="true" />
      <node concept="bl5qV" id="4ryo8lMrO9o" role="pRJ9p">
        <ref role="bl5qO" node="3rXORfo7bKn" resolve="Cell" />
      </node>
    </node>
    <node concept="pRJ9f" id="4ryo8lMrNA6" role="pRMtA">
      <property role="TrG5h" value="cellLeft" />
      <property role="pRJ9j" value="true" />
      <node concept="bl5qV" id="4ryo8lMrNA7" role="pRJ9p">
        <ref role="bl5qO" node="3rXORfo7bKn" resolve="Cell" />
      </node>
    </node>
    <node concept="pRJ9f" id="4ryo8lMrObo" role="pRMtA">
      <property role="TrG5h" value="cellLeftWhite" />
      <property role="pRJ9j" value="true" />
      <node concept="bl5qV" id="4ryo8lMrObp" role="pRJ9p">
        <ref role="bl5qO" node="3rXORfo7bKn" resolve="Cell" />
      </node>
    </node>
    <node concept="pRJ9f" id="4ryo8lMrOdh" role="pRMtA">
      <property role="TrG5h" value="cellLeftBlack" />
      <property role="pRJ9j" value="true" />
      <node concept="bl5qV" id="4ryo8lMrOdi" role="pRJ9p">
        <ref role="bl5qO" node="3rXORfo7bKn" resolve="Cell" />
      </node>
    </node>
    <node concept="pRJ9f" id="4ryo8lMrNBH" role="pRMtA">
      <property role="TrG5h" value="cellUpRight" />
      <property role="pRJ9j" value="true" />
      <node concept="bl5qV" id="4ryo8lMrNBI" role="pRJ9p">
        <ref role="bl5qO" node="3rXORfo7bKn" resolve="Cell" />
      </node>
    </node>
    <node concept="pRJ9f" id="4ryo8lMrOfy" role="pRMtA">
      <property role="TrG5h" value="cellUpRightBlack" />
      <property role="pRJ9j" value="true" />
      <node concept="bl5qV" id="4ryo8lMrOfz" role="pRJ9p">
        <ref role="bl5qO" node="3rXORfo7bKn" resolve="Cell" />
      </node>
    </node>
    <node concept="pRJ9f" id="4ryo8lMrNDu" role="pRMtA">
      <property role="TrG5h" value="cellRightDown" />
      <property role="pRJ9j" value="true" />
      <node concept="bl5qV" id="4ryo8lMrNDv" role="pRJ9p">
        <ref role="bl5qO" node="3rXORfo7bKn" resolve="Cell" />
      </node>
    </node>
    <node concept="pRJ9f" id="4ryo8lMrOhT" role="pRMtA">
      <property role="TrG5h" value="cellRightDownBlack" />
      <property role="pRJ9j" value="true" />
      <node concept="bl5qV" id="4ryo8lMrOhU" role="pRJ9p">
        <ref role="bl5qO" node="3rXORfo7bKn" resolve="Cell" />
      </node>
    </node>
    <node concept="pRJ9f" id="4ryo8lMrNFp" role="pRMtA">
      <property role="TrG5h" value="cellLeftDown" />
      <property role="pRJ9j" value="true" />
      <node concept="bl5qV" id="4ryo8lMrNFq" role="pRJ9p">
        <ref role="bl5qO" node="3rXORfo7bKn" resolve="Cell" />
      </node>
    </node>
    <node concept="pRJ9f" id="4ryo8lMrOk0" role="pRMtA">
      <property role="TrG5h" value="cellLeftDownBlack" />
      <property role="pRJ9j" value="true" />
      <node concept="bl5qV" id="4ryo8lMrOk1" role="pRJ9p">
        <ref role="bl5qO" node="3rXORfo7bKn" resolve="Cell" />
      </node>
    </node>
    <node concept="pRJ9f" id="4ryo8lMrNH9" role="pRMtA">
      <property role="TrG5h" value="cellUpLeft" />
      <property role="pRJ9j" value="true" />
      <node concept="bl5qV" id="4ryo8lMrNHa" role="pRJ9p">
        <ref role="bl5qO" node="3rXORfo7bKn" resolve="Cell" />
      </node>
    </node>
    <node concept="pRJ9f" id="4ryo8lMrOmi" role="pRMtA">
      <property role="TrG5h" value="cellUpLeftBlack" />
      <property role="pRJ9j" value="true" />
      <node concept="bl5qV" id="4ryo8lMrOmj" role="pRJ9p">
        <ref role="bl5qO" node="3rXORfo7bKn" resolve="Cell" />
      </node>
    </node>
    <node concept="pRJ9f" id="4ryo8lMrNIY" role="pRMtA">
      <property role="TrG5h" value="cellUpDown" />
      <property role="pRJ9j" value="true" />
      <node concept="bl5qV" id="4ryo8lMrNIZ" role="pRJ9p">
        <ref role="bl5qO" node="3rXORfo7bKn" resolve="Cell" />
      </node>
    </node>
    <node concept="pRJ9f" id="4ryo8lMrOot" role="pRMtA">
      <property role="TrG5h" value="cellUpDownWhite" />
      <property role="pRJ9j" value="true" />
      <node concept="bl5qV" id="4ryo8lMrOou" role="pRJ9p">
        <ref role="bl5qO" node="3rXORfo7bKn" resolve="Cell" />
      </node>
    </node>
    <node concept="pRJ9f" id="4ryo8lMrNKG" role="pRMtA">
      <property role="TrG5h" value="cellLeftRight" />
      <property role="pRJ9j" value="true" />
      <node concept="bl5qV" id="4ryo8lMrNKH" role="pRJ9p">
        <ref role="bl5qO" node="3rXORfo7bKn" resolve="Cell" />
      </node>
    </node>
    <node concept="pRJ9f" id="4ryo8lMrOqB" role="pRMtA">
      <property role="TrG5h" value="cellLeftRightWhite" />
      <property role="pRJ9j" value="true" />
      <node concept="bl5qV" id="4ryo8lMrOqC" role="pRJ9p">
        <ref role="bl5qO" node="3rXORfo7bKn" resolve="Cell" />
      </node>
    </node>
    <node concept="3DQ70j" id="4ryo8lMskNU" role="lGtFl">
      <property role="3V$3am" value="operators" />
      <property role="3V$3ak" value="b4fcd96f-fa06-46a4-9520-beaeb32aa9a1/8445081754001417286/6300386900480909287" />
    </node>
    <node concept="pRJ9f" id="4ryo8lMskK2" role="pRMtA">
      <property role="TrG5h" value="userCellToCell" />
      <node concept="bl5qV" id="4ryo8lMskMg" role="pRJ9k">
        <ref role="bl5qO" node="3rXORfo7bKn" resolve="Cell" />
      </node>
      <node concept="bl5qV" id="4ryo8lMskK3" role="pRJ9p">
        <ref role="bl5qO" node="4ryo8lMsAuT" resolve="Cell" />
      </node>
    </node>
    <node concept="pRJ9f" id="4ryo8lM_LTh" role="pRMtA">
      <property role="TrG5h" value="rowsToStarRow" />
      <node concept="bl5qV" id="4ryo8lM_LWU" role="pRJ9k">
        <ref role="bl5qO" node="4ryo8lMtJ5s" resolve="Row" />
      </node>
      <node concept="bl5qV" id="4ryo8lM_LX5" role="pRJ9k">
        <ref role="bl5qO" node="4ryo8lMtJ5s" resolve="Row" />
      </node>
      <node concept="bl5qV" id="4ryo8lM_LXh" role="pRJ9k">
        <ref role="bl5qO" node="4ryo8lMtJ5s" resolve="Row" />
      </node>
      <node concept="bl5qV" id="4ryo8lM_LTi" role="pRJ9p">
        <ref role="bl5qO" node="4ryo8lM$WEk" resolve="StarRow" />
      </node>
    </node>
    <node concept="pRJ9f" id="4ryo8lMCcvr" role="pRMtA">
      <property role="TrG5h" value="pearlToStarPearl" />
      <node concept="bl5qV" id="4ryo8lMCcyk" role="pRJ9k">
        <ref role="bl5qO" node="4ryo8lMCcz8" resolve="Pearl" />
      </node>
      <node concept="bl5qV" id="4ryo8lMCcvs" role="pRJ9p">
        <ref role="bl5qO" node="4ryo8lM$Wny" resolve="StarPearl" />
      </node>
    </node>
    <node concept="pRJ9f" id="4ryo8lMCczP" role="pRMtA">
      <property role="TrG5h" value="userPearlToPearl" />
      <node concept="bl5qV" id="4ryo8lMCcAH" role="pRJ9k">
        <ref role="bl5qO" node="5wEF59lkheF" resolve="UserPearl" />
      </node>
      <node concept="bl5qV" id="4ryo8lMCczQ" role="pRJ9p">
        <ref role="bl5qO" node="4ryo8lMCcz8" resolve="Pearl" />
      </node>
    </node>
    <node concept="pRJ9f" id="4ryo8lMDVrq" role="pRMtA">
      <property role="TrG5h" value="userRowToRow" />
      <node concept="bl5qV" id="4ryo8lMDVxr" role="pRJ9k">
        <ref role="bl5qO" node="3rXORfo7b_6" resolve="UserRow" />
      </node>
      <node concept="bl5qV" id="4ryo8lMDVrr" role="pRJ9p">
        <ref role="bl5qO" node="4ryo8lMtJ5s" resolve="Row" />
      </node>
    </node>
    <node concept="3DQ70j" id="4ryo8lMDVxD" role="lGtFl">
      <property role="3V$3am" value="operators" />
      <property role="3V$3ak" value="b4fcd96f-fa06-46a4-9520-beaeb32aa9a1/8445081754001417286/6300386900480909287" />
    </node>
    <node concept="pRJ9f" id="4ryo8lMujsP" role="pRMtA">
      <property role="TrG5h" value="correctStarHints" />
      <node concept="bl5qV" id="4ryo8lMyD5H" role="pRJ9k">
        <ref role="bl5qO" node="4ryo8lMyCfH" resolve="Star" />
      </node>
      <node concept="bl5qV" id="4ryo8lMujsQ" role="pRJ9p">
        <ref role="bl5qO" to="zaie:7zB5IrGSITC" resolve="Bool" />
      </node>
    </node>
    <node concept="pRJ9f" id="4ryo8lMyEzE" role="pRMtA">
      <property role="TrG5h" value="correctStarConnections" />
      <node concept="bl5qV" id="4ryo8lMyEAm" role="pRJ9k">
        <ref role="bl5qO" node="4ryo8lMyCfH" resolve="Star" />
      </node>
      <node concept="bl5qV" id="4ryo8lMyEzF" role="pRJ9p">
        <ref role="bl5qO" to="zaie:7zB5IrGSITC" resolve="Bool" />
      </node>
    </node>
    <node concept="pRJ9f" id="4ryo8lMztIa" role="pRMtA">
      <property role="TrG5h" value="correctStar" />
      <node concept="bl5qV" id="4ryo8lMztLa" role="pRJ9k">
        <ref role="bl5qO" node="4ryo8lMyCfH" resolve="Star" />
      </node>
      <node concept="bl5qV" id="4ryo8lMztIb" role="pRJ9p">
        <ref role="bl5qO" to="zaie:7zB5IrGSITC" resolve="Bool" />
      </node>
    </node>
    <node concept="pRJ9f" id="4ryo8lM$YaL" role="pRMtA">
      <property role="TrG5h" value="correctStarRow" />
      <node concept="bl5qV" id="4ryo8lM$Ydr" role="pRJ9k">
        <ref role="bl5qO" node="4ryo8lM$WEk" resolve="StarRow" />
      </node>
      <node concept="bl5qV" id="4ryo8lM$YaM" role="pRJ9p">
        <ref role="bl5qO" to="zaie:7zB5IrGSITC" resolve="Bool" />
      </node>
    </node>
    <node concept="pRJ9f" id="4ryo8lM_mV$" role="pRMtA">
      <property role="TrG5h" value="correctStarPearl" />
      <node concept="bl5qV" id="4ryo8lM_mYn" role="pRJ9k">
        <ref role="bl5qO" node="4ryo8lM$Wny" resolve="StarPearl" />
      </node>
      <node concept="bl5qV" id="4ryo8lM_mV_" role="pRJ9p">
        <ref role="bl5qO" to="zaie:7zB5IrGSITC" resolve="Bool" />
      </node>
    </node>
    <node concept="3DQ70j" id="3rXORfo7j_1" role="lGtFl">
      <property role="3V$3am" value="operators" />
      <property role="3V$3ak" value="b4fcd96f-fa06-46a4-9520-beaeb32aa9a1/8445081754001417286/6300386900480909287" />
    </node>
    <node concept="pRJ9f" id="5wEF59lkheZ" role="pRMtA">
      <property role="TrG5h" value="correctPearl" />
      <node concept="bl5qV" id="5wEF59lkhf8" role="pRJ9k">
        <ref role="bl5qO" node="4ryo8lMCcz8" resolve="Pearl" />
      </node>
      <node concept="bl5qV" id="5wEF59lkhf0" role="pRJ9p">
        <ref role="bl5qO" to="zaie:7zB5IrGSITC" resolve="Bool" />
      </node>
    </node>
    <node concept="pRJ9f" id="4ryo8lMDwiZ" role="pRMtA">
      <property role="TrG5h" value="correctUserPearl" />
      <node concept="bl5qV" id="4ryo8lMDwlS" role="pRJ9k">
        <ref role="bl5qO" node="5wEF59lkheF" resolve="UserPearl" />
      </node>
      <node concept="bl5qV" id="4ryo8lMDwj0" role="pRJ9p">
        <ref role="bl5qO" to="zaie:7zB5IrGSITC" resolve="Bool" />
      </node>
    </node>
    <node concept="3DQ70j" id="4ryo8lMuN4k" role="lGtFl">
      <property role="3V$3am" value="operators" />
      <property role="3V$3ak" value="b4fcd96f-fa06-46a4-9520-beaeb32aa9a1/8445081754001417286/6300386900480909287" />
    </node>
    <node concept="pRJ9f" id="4ryo8lMuN8T" role="pRMtA">
      <property role="TrG5h" value="isCellStraight" />
      <node concept="bl5qV" id="4ryo8lMuNbN" role="pRJ9k">
        <ref role="bl5qO" node="4ryo8lMsAuT" resolve="Cell" />
      </node>
      <node concept="bl5qV" id="4ryo8lMuN8U" role="pRJ9p">
        <ref role="bl5qO" to="zaie:7zB5IrGSITC" resolve="Bool" />
      </node>
    </node>
    <node concept="pRJ9f" id="4ryo8lMuNcc" role="pRMtA">
      <property role="TrG5h" value="isCellTurn" />
      <node concept="bl5qV" id="4ryo8lMuNeL" role="pRJ9k">
        <ref role="bl5qO" node="4ryo8lMsAuT" resolve="Cell" />
      </node>
      <node concept="bl5qV" id="4ryo8lMuNcd" role="pRJ9p">
        <ref role="bl5qO" to="zaie:7zB5IrGSITC" resolve="Bool" />
      </node>
    </node>
    <node concept="3DQ70j" id="4ryo8lMBuCh" role="lGtFl">
      <property role="3V$3am" value="operators" />
      <property role="3V$3ak" value="b4fcd96f-fa06-46a4-9520-beaeb32aa9a1/8445081754001417286/6300386900480909287" />
    </node>
    <node concept="pRJ9f" id="4ryo8lMBu_N" role="pRMtA">
      <property role="TrG5h" value="emptyCell" />
      <node concept="bl5qV" id="4ryo8lMBu_O" role="pRJ9p">
        <ref role="bl5qO" node="4ryo8lMsAuT" resolve="Cell" />
      </node>
    </node>
    <node concept="pRJ9f" id="4ryo8lMDapX" role="pRMtA">
      <property role="TrG5h" value="emptyRow" />
      <node concept="bl5qV" id="4ryo8lMDapY" role="pRJ9p">
        <ref role="bl5qO" node="4ryo8lMtJ5s" resolve="Row" />
      </node>
    </node>
    <node concept="3DQ70j" id="3rXORfo7jaQ" role="lGtFl">
      <property role="3V$3am" value="operators" />
      <property role="3V$3ak" value="b4fcd96f-fa06-46a4-9520-beaeb32aa9a1/8445081754001417286/6300386900480909287" />
    </node>
    <node concept="bklvD" id="5wEF59lkheF" role="blzGn">
      <property role="TrG5h" value="UserPearl" />
    </node>
    <node concept="bklvD" id="3rXORfo7b_6" role="blzGn">
      <property role="TrG5h" value="UserRow" />
    </node>
    <node concept="bklvD" id="3rXORfo7bKn" role="blzGn">
      <property role="TrG5h" value="UserCell" />
    </node>
    <node concept="3DQ70j" id="4ryo8lMtJg8" role="lGtFl">
      <property role="3V$3am" value="sorts" />
      <property role="3V$3ak" value="b4fcd96f-fa06-46a4-9520-beaeb32aa9a1/8445081754001417286/8445081754001526283" />
    </node>
    <node concept="bklvD" id="4ryo8lMCcz8" role="blzGn">
      <property role="TrG5h" value="Pearl" />
    </node>
    <node concept="bklvD" id="4ryo8lMsAuT" role="blzGn">
      <property role="TrG5h" value="Cell" />
    </node>
    <node concept="bklvD" id="4ryo8lMtJ5s" role="blzGn">
      <property role="TrG5h" value="Row" />
    </node>
    <node concept="bklvD" id="4ryo8lMsAx7" role="blzGn">
      <property role="TrG5h" value="CellType" />
    </node>
    <node concept="3DQ70j" id="4ryo8lM$WOu" role="lGtFl">
      <property role="3V$3am" value="sorts" />
      <property role="3V$3ak" value="b4fcd96f-fa06-46a4-9520-beaeb32aa9a1/8445081754001417286/8445081754001526283" />
    </node>
    <node concept="bklvD" id="4ryo8lMyCfH" role="blzGn">
      <property role="TrG5h" value="Star" />
    </node>
    <node concept="bklvD" id="4ryo8lM$WEk" role="blzGn">
      <property role="TrG5h" value="StarRow" />
    </node>
    <node concept="bklvD" id="4ryo8lM$Wny" role="blzGn">
      <property role="TrG5h" value="StarPearl" />
    </node>
    <node concept="3DQ70j" id="4ryo8lMrTSa" role="lGtFl">
      <property role="3V$3am" value="sorts" />
      <property role="3V$3ak" value="b4fcd96f-fa06-46a4-9520-beaeb32aa9a1/8445081754001417286/8445081754001526283" />
    </node>
    <node concept="3QKWG5" id="5wEF59lkheD" role="3QKWGc">
      <ref role="3QKWG4" to="zaie:7zB5IrGSITB" resolve="BOOLEAN" />
    </node>
  </node>
</model>

