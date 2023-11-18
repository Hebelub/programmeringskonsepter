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
      <concept id="6940935696597855592" name="ActOne.structure.IntValue" flags="ng" index="2GQ0ll">
        <property id="4779260070297371280" name="value" index="p6XkA" />
      </concept>
      <concept id="6849908093511409885" name="ActOne.structure.Reduce" flags="ng" index="YRuf3">
        <property id="1955001717827324002" name="exhaustive" index="1lgsvm" />
        <property id="1955001717825840243" name="steps" index="1lq2J7" />
        <property id="1509905087559793033" name="debug" index="1KuzG$" />
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
    <node concept="2a5yee" id="3rXORfo8UPa" role="pRMhZ">
      <node concept="pQlao" id="3rXORfo8UPB" role="2a5y9Q">
        <ref role="pQlar" node="3rXORfo8zkS" resolve="getLineCount" />
        <node concept="pQlao" id="3rXORfo8UPN" role="EZGxL">
          <ref role="pQlar" node="3rXORfo7k26" resolve="mkCell" />
          <node concept="26K0MW" id="3rXORfo8V9T" role="EZGxL" />
          <node concept="3O66mJ" id="3rXORfo8VM0" role="EZGxL">
            <ref role="3O66mG" node="3rXORfo8iVY" resolve="conn1" />
          </node>
          <node concept="3O66mJ" id="3rXORfo8Wqa" role="EZGxL">
            <ref role="3O66mG" node="3rXORfo8znM" resolve="conn2" />
          </node>
          <node concept="3O66mJ" id="3rXORfo8X2l" role="EZGxL">
            <ref role="3O66mG" node="3rXORfo8zFi" resolve="conn3" />
          </node>
          <node concept="3O66mJ" id="3rXORfo8XmL" role="EZGxL">
            <ref role="3O66mG" node="3rXORfo8zYP" resolve="conn4" />
          </node>
        </node>
      </node>
      <node concept="pQlao" id="3rXORfo8XFg" role="2a5y9N">
        <property role="3IYp45" value="true" />
        <ref role="pQlar" to="zaie:49jlVprl5$E" resolve="ADD" />
        <node concept="pQlao" id="3rXORfo8XZL" role="EZGxL">
          <property role="3IYp45" value="true" />
          <ref role="pQlar" to="zaie:49jlVprl5$E" resolve="ADD" />
          <node concept="pQlao" id="3rXORfo8YXm" role="EZGxL">
            <ref role="pQlar" to="zaie:34Rb5Oc3jxw" resolve="If_Then_Else" />
            <node concept="pQlao" id="3rXORfo91fl" role="EZGxL">
              <ref role="pQlar" to="zaie:34Rb5Oc3jx3" resolve="Equal" />
              <node concept="3O66mJ" id="3rXORfo91$a" role="EZGxL">
                <ref role="3O66mG" node="3rXORfo8iVY" resolve="conn1" />
              </node>
              <node concept="pQlao" id="3rXORfo92dW" role="EZGxL">
                <ref role="pQlar" node="3rXORfo7k7$" resolve="l" />
              </node>
            </node>
            <node concept="2GQ0ll" id="3rXORfo92Sm" role="EZGxL">
              <property role="p6XkA" value="1" />
            </node>
            <node concept="2GQ0ll" id="3rXORfo94xA" role="EZGxL">
              <property role="p6XkA" value="0" />
            </node>
          </node>
          <node concept="pQlao" id="3rXORfo8ZVt" role="EZGxL">
            <ref role="pQlar" to="zaie:34Rb5Oc3jxw" resolve="If_Then_Else" />
            <node concept="pQlao" id="3rXORfo94QY" role="EZGxL">
              <ref role="pQlar" to="zaie:34Rb5Oc3jx3" resolve="Equal" />
              <node concept="3O66mJ" id="3rXORfo95c9" role="EZGxL">
                <ref role="3O66mG" node="3rXORfo8znM" resolve="conn2" />
              </node>
              <node concept="pQlao" id="3rXORfo98bJ" role="EZGxL">
                <ref role="pQlar" node="3rXORfo7k7$" resolve="l" />
              </node>
            </node>
            <node concept="2GQ0ll" id="3rXORfo95Qu" role="EZGxL">
              <property role="p6XkA" value="1" />
            </node>
            <node concept="2GQ0ll" id="3rXORfo96Q6" role="EZGxL">
              <property role="p6XkA" value="0" />
            </node>
          </node>
        </node>
        <node concept="pQlao" id="3rXORfo8YCK" role="EZGxL">
          <property role="3IYp45" value="true" />
          <ref role="pQlar" to="zaie:49jlVprl5$E" resolve="ADD" />
          <node concept="pQlao" id="3rXORfo8Zi0" role="EZGxL">
            <ref role="pQlar" to="zaie:34Rb5Oc3jxw" resolve="If_Then_Else" />
            <node concept="pQlao" id="3rXORfo9bcV" role="EZGxL">
              <ref role="pQlar" to="zaie:34Rb5Oc3jx3" resolve="Equal" />
              <node concept="3O66mJ" id="3rXORfo9byp" role="EZGxL">
                <ref role="3O66mG" node="3rXORfo8zFi" resolve="conn3" />
              </node>
              <node concept="pQlao" id="3rXORfo9cdq" role="EZGxL">
                <ref role="pQlar" node="3rXORfo7k7$" resolve="l" />
              </node>
            </node>
            <node concept="2GQ0ll" id="3rXORfo9cz2" role="EZGxL">
              <property role="p6XkA" value="1" />
            </node>
            <node concept="2GQ0ll" id="3rXORfo9cSB" role="EZGxL">
              <property role="p6XkA" value="0" />
            </node>
          </node>
          <node concept="pQlao" id="3rXORfo90_8" role="EZGxL">
            <ref role="pQlar" to="zaie:34Rb5Oc3jxw" resolve="If_Then_Else" />
            <node concept="pQlao" id="3rXORfo9de_" role="EZGxL">
              <ref role="pQlar" to="zaie:34Rb5Oc3jx3" resolve="Equal" />
              <node concept="3O66mJ" id="3rXORfo9d$p" role="EZGxL">
                <ref role="3O66mG" node="3rXORfo8zYP" resolve="conn4" />
              </node>
              <node concept="pQlao" id="3rXORfo9efX" role="EZGxL">
                <ref role="pQlar" node="3rXORfo7k7$" resolve="l" />
              </node>
            </node>
            <node concept="2GQ0ll" id="3rXORfo9eVF" role="EZGxL">
              <property role="p6XkA" value="1" />
            </node>
            <node concept="2GQ0ll" id="3rXORfo9eVK" role="EZGxL">
              <property role="p6XkA" value="0" />
            </node>
          </node>
          <node concept="3DQ70j" id="3rXORfo9_ow" role="lGtFl">
            <property role="3V$3am" value="parameters" />
            <property role="3V$3ak" value="b4fcd96f-fa06-46a4-9520-beaeb32aa9a1/6300386900481288729/7054597004572770024" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2a5yee" id="3rXORfo89JC" role="pRMhZ">
      <node concept="pQlao" id="3rXORfo89JD" role="2a5y9Q">
        <ref role="pQlar" node="3rXORfo7eHi" resolve="getNodeShape" />
        <node concept="pQlao" id="3rXORfo89JE" role="EZGxL">
          <ref role="pQlar" node="3rXORfo7k26" resolve="mkCell" />
          <node concept="26K0MW" id="3rXORfo89JF" role="EZGxL" />
          <node concept="pQlao" id="3rXORfo89JG" role="EZGxL">
            <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
          </node>
          <node concept="pQlao" id="3rXORfo89JH" role="EZGxL">
            <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
          </node>
          <node concept="pQlao" id="3rXORfo89JI" role="EZGxL">
            <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
          </node>
          <node concept="pQlao" id="3rXORfo89JJ" role="EZGxL">
            <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
          </node>
        </node>
      </node>
      <node concept="pQlao" id="3rXORfo89JK" role="2a5y9N">
        <ref role="pQlar" node="3rXORfo7eHr" resolve="shapeNone" />
      </node>
    </node>
    <node concept="26FcCh" id="3rXORfo7eEc" role="pRJcv">
      <node concept="2a4bCg" id="3rXORfo7eEd" role="26FcCg">
        <property role="TrG5h" value="pearl" />
      </node>
      <node concept="bl5qV" id="3rXORfo7eEe" role="26FcCr">
        <ref role="bl5qO" node="5wEF59lkheF" resolve="Pearl" />
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
        <ref role="bl5qO" node="3rXORfo7b_6" resolve="Row" />
      </node>
    </node>
    <node concept="26FcCh" id="3rXORfo9uYI" role="pRJcv">
      <node concept="2a4bCg" id="3rXORfo9uYJ" role="26FcCg">
        <property role="TrG5h" value="cell1" />
      </node>
      <node concept="bl5qV" id="3rXORfo9uYK" role="26FcCr">
        <ref role="bl5qO" node="3rXORfo7bKn" resolve="Cell" />
      </node>
    </node>
    <node concept="26FcCh" id="3rXORfo8iVX" role="pRJcv">
      <node concept="2a4bCg" id="3rXORfo8iVY" role="26FcCg">
        <property role="TrG5h" value="conn1" />
      </node>
      <node concept="2a4bCg" id="3rXORfo8znM" role="26FcCg">
        <property role="TrG5h" value="conn2" />
      </node>
      <node concept="2a4bCg" id="3rXORfo8zFi" role="26FcCg">
        <property role="TrG5h" value="conn3" />
      </node>
      <node concept="2a4bCg" id="3rXORfo8zYP" role="26FcCg">
        <property role="TrG5h" value="conn4" />
      </node>
      <node concept="bl5qV" id="3rXORfo8iVZ" role="26FcCr">
        <ref role="bl5qO" node="3rXORfo7k2g" resolve="Connection" />
      </node>
    </node>
    <node concept="3DQ70j" id="3rXORfo7fdA" role="lGtFl">
      <property role="3V$3am" value="variables" />
      <property role="3V$3ak" value="b4fcd96f-fa06-46a4-9520-beaeb32aa9a1/8445081754001417286/6300386900480986014" />
    </node>
    <node concept="2a5yee" id="3rXORfo81O7" role="pRMhZ">
      <node concept="pQlao" id="3rXORfo81Ok" role="2a5y9Q">
        <ref role="pQlar" node="3rXORfo7eHi" resolve="getNodeShape" />
        <node concept="pQlao" id="3rXORfo81Oz" role="EZGxL">
          <ref role="pQlar" node="3rXORfo7k26" resolve="mkCell" />
          <node concept="26K0MW" id="3rXORfo822T" role="EZGxL" />
          <node concept="pQlao" id="3rXORfo82vt" role="EZGxL">
            <ref role="pQlar" node="3rXORfo7k7$" resolve="l" />
          </node>
          <node concept="pQlao" id="3rXORfo83oG" role="EZGxL">
            <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
          </node>
          <node concept="pQlao" id="3rXORfo83Pn" role="EZGxL">
            <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
          </node>
          <node concept="pQlao" id="3rXORfo84if" role="EZGxL">
            <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
          </node>
        </node>
      </node>
      <node concept="pQlao" id="3rXORfo84wV" role="2a5y9N">
        <ref role="pQlar" node="3rXORfo7eHw" resolve="shapeEnd" />
      </node>
    </node>
    <node concept="2a5yee" id="3rXORfo85er" role="pRMhZ">
      <node concept="pQlao" id="3rXORfo85es" role="2a5y9Q">
        <ref role="pQlar" node="3rXORfo7eHi" resolve="getNodeShape" />
        <node concept="pQlao" id="3rXORfo85et" role="EZGxL">
          <ref role="pQlar" node="3rXORfo7k26" resolve="mkCell" />
          <node concept="26K0MW" id="3rXORfo85eu" role="EZGxL" />
          <node concept="pQlao" id="3rXORfo85ev" role="EZGxL">
            <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
          </node>
          <node concept="pQlao" id="3rXORfo85ew" role="EZGxL">
            <ref role="pQlar" node="3rXORfo7k7$" resolve="l" />
          </node>
          <node concept="pQlao" id="3rXORfo85ex" role="EZGxL">
            <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
          </node>
          <node concept="pQlao" id="3rXORfo85ey" role="EZGxL">
            <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
          </node>
        </node>
      </node>
      <node concept="pQlao" id="3rXORfo85ez" role="2a5y9N">
        <ref role="pQlar" node="3rXORfo7eHw" resolve="shapeEnd" />
      </node>
    </node>
    <node concept="2a5yee" id="3rXORfo85f6" role="pRMhZ">
      <node concept="pQlao" id="3rXORfo85f7" role="2a5y9Q">
        <ref role="pQlar" node="3rXORfo7eHi" resolve="getNodeShape" />
        <node concept="pQlao" id="3rXORfo85f8" role="EZGxL">
          <ref role="pQlar" node="3rXORfo7k26" resolve="mkCell" />
          <node concept="26K0MW" id="3rXORfo85f9" role="EZGxL" />
          <node concept="pQlao" id="3rXORfo85fa" role="EZGxL">
            <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
          </node>
          <node concept="pQlao" id="3rXORfo85fb" role="EZGxL">
            <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
          </node>
          <node concept="pQlao" id="3rXORfo85fc" role="EZGxL">
            <ref role="pQlar" node="3rXORfo7k7$" resolve="l" />
          </node>
          <node concept="pQlao" id="3rXORfo85fd" role="EZGxL">
            <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
          </node>
        </node>
      </node>
      <node concept="pQlao" id="3rXORfo85fe" role="2a5y9N">
        <ref role="pQlar" node="3rXORfo7eHw" resolve="shapeEnd" />
      </node>
    </node>
    <node concept="2a5yee" id="3rXORfo85fL" role="pRMhZ">
      <node concept="pQlao" id="3rXORfo85fM" role="2a5y9Q">
        <ref role="pQlar" node="3rXORfo7eHi" resolve="getNodeShape" />
        <node concept="pQlao" id="3rXORfo85fN" role="EZGxL">
          <ref role="pQlar" node="3rXORfo7k26" resolve="mkCell" />
          <node concept="26K0MW" id="3rXORfo85fO" role="EZGxL" />
          <node concept="pQlao" id="3rXORfo85fP" role="EZGxL">
            <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
          </node>
          <node concept="pQlao" id="3rXORfo85fQ" role="EZGxL">
            <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
          </node>
          <node concept="pQlao" id="3rXORfo85fR" role="EZGxL">
            <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
          </node>
          <node concept="pQlao" id="3rXORfo85fS" role="EZGxL">
            <ref role="pQlar" node="3rXORfo7k7$" resolve="l" />
          </node>
        </node>
      </node>
      <node concept="pQlao" id="3rXORfo85fT" role="2a5y9N">
        <ref role="pQlar" node="3rXORfo7eHw" resolve="shapeEnd" />
      </node>
    </node>
    <node concept="2a5yee" id="3rXORfo7L4p" role="pRMhZ">
      <node concept="pQlao" id="3rXORfo7L4G" role="2a5y9Q">
        <ref role="pQlar" node="3rXORfo7eHi" resolve="getNodeShape" />
        <node concept="pQlao" id="3rXORfo7L54" role="EZGxL">
          <ref role="pQlar" node="3rXORfo7k26" resolve="mkCell" />
          <node concept="26K0MW" id="3rXORfo7Lsu" role="EZGxL" />
          <node concept="pQlao" id="3rXORfo7Nr9" role="EZGxL">
            <ref role="pQlar" node="3rXORfo7k7$" resolve="l" />
          </node>
          <node concept="pQlao" id="3rXORfo7OwN" role="EZGxL">
            <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
          </node>
          <node concept="pQlao" id="3rXORfo7NY1" role="EZGxL">
            <ref role="pQlar" node="3rXORfo7k7$" resolve="l" />
          </node>
          <node concept="pQlao" id="3rXORfo7P3M" role="EZGxL">
            <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
          </node>
        </node>
      </node>
      <node concept="pQlao" id="3rXORfo7LgX" role="2a5y9N">
        <ref role="pQlar" node="3rXORfo7eH_" resolve="shapeStraight" />
      </node>
    </node>
    <node concept="2a5yee" id="3rXORfo7Pry" role="pRMhZ">
      <node concept="pQlao" id="3rXORfo7PrP" role="2a5y9Q">
        <ref role="pQlar" node="3rXORfo7eHi" resolve="getNodeShape" />
        <node concept="pQlao" id="3rXORfo7PC9" role="EZGxL">
          <ref role="pQlar" node="3rXORfo7k26" resolve="mkCell" />
          <node concept="26K0MW" id="3rXORfo7PNY" role="EZGxL" />
          <node concept="pQlao" id="3rXORfo7QbJ" role="EZGxL">
            <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
          </node>
          <node concept="pQlao" id="3rXORfo7Qzw" role="EZGxL">
            <ref role="pQlar" node="3rXORfo7k7$" resolve="l" />
          </node>
          <node concept="pQlao" id="3rXORfo7QVo" role="EZGxL">
            <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
          </node>
          <node concept="pQlao" id="3rXORfo7Rjt" role="EZGxL">
            <ref role="pQlar" node="3rXORfo7k7$" resolve="l" />
          </node>
        </node>
      </node>
      <node concept="pQlao" id="3rXORfo7Psb" role="2a5y9N">
        <ref role="pQlar" node="3rXORfo7eH_" resolve="shapeStraight" />
      </node>
    </node>
    <node concept="2a5yee" id="3rXORfo7RvC" role="pRMhZ">
      <node concept="pQlao" id="3rXORfo7RvS" role="2a5y9Q">
        <ref role="pQlar" node="3rXORfo7eHi" resolve="getNodeShape" />
        <node concept="pQlao" id="3rXORfo7Sj2" role="EZGxL">
          <ref role="pQlar" node="3rXORfo7k26" resolve="mkCell" />
          <node concept="26K0MW" id="3rXORfo7Svm" role="EZGxL" />
          <node concept="pQlao" id="3rXORfo7SS2" role="EZGxL">
            <ref role="pQlar" node="3rXORfo7k7$" resolve="l" />
          </node>
          <node concept="pQlao" id="3rXORfo7TgO" role="EZGxL">
            <ref role="pQlar" node="3rXORfo7k7$" resolve="l" />
          </node>
          <node concept="pQlao" id="3rXORfo7TDB" role="EZGxL">
            <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
          </node>
          <node concept="pQlao" id="3rXORfo7U2E" role="EZGxL">
            <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
          </node>
        </node>
      </node>
      <node concept="pQlao" id="3rXORfo7RwO" role="2a5y9N">
        <ref role="pQlar" node="3rXORfo7eHE" resolve="shapeTurn" />
      </node>
    </node>
    <node concept="2a5yee" id="3rXORfo7Ufk" role="pRMhZ">
      <node concept="pQlao" id="3rXORfo7Uf$" role="2a5y9Q">
        <ref role="pQlar" node="3rXORfo7eHi" resolve="getNodeShape" />
        <node concept="pQlao" id="3rXORfo7UfK" role="EZGxL">
          <ref role="pQlar" node="3rXORfo7k26" resolve="mkCell" />
          <node concept="26K0MW" id="3rXORfo7Usx" role="EZGxL" />
          <node concept="pQlao" id="3rXORfo7UQg" role="EZGxL">
            <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
          </node>
          <node concept="pQlao" id="3rXORfo7VfT" role="EZGxL">
            <ref role="pQlar" node="3rXORfo7k7$" resolve="l" />
          </node>
          <node concept="pQlao" id="3rXORfo7VDD" role="EZGxL">
            <ref role="pQlar" node="3rXORfo7k7$" resolve="l" />
          </node>
          <node concept="pQlao" id="3rXORfo7W3A" role="EZGxL">
            <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
          </node>
        </node>
      </node>
      <node concept="pQlao" id="3rXORfo7WgK" role="2a5y9N">
        <ref role="pQlar" node="3rXORfo7eHE" resolve="shapeTurn" />
      </node>
    </node>
    <node concept="2a5yee" id="3rXORfo7WtT" role="pRMhZ">
      <node concept="pQlao" id="3rXORfo7Wuc" role="2a5y9Q">
        <ref role="pQlar" node="3rXORfo7eHi" resolve="getNodeShape" />
        <node concept="pQlao" id="3rXORfo7Wuo" role="EZGxL">
          <ref role="pQlar" node="3rXORfo7k26" resolve="mkCell" />
          <node concept="26K0MW" id="3rXORfo7WFC" role="EZGxL" />
          <node concept="pQlao" id="3rXORfo7XwH" role="EZGxL">
            <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
          </node>
          <node concept="pQlao" id="3rXORfo7XVk" role="EZGxL">
            <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
          </node>
          <node concept="pQlao" id="3rXORfo7YlZ" role="EZGxL">
            <ref role="pQlar" node="3rXORfo7k7$" resolve="l" />
          </node>
          <node concept="pQlao" id="3rXORfo7YKU" role="EZGxL">
            <ref role="pQlar" node="3rXORfo7k7$" resolve="l" />
          </node>
        </node>
      </node>
      <node concept="pQlao" id="3rXORfo7YYA" role="2a5y9N">
        <ref role="pQlar" node="3rXORfo7eHE" resolve="shapeTurn" />
      </node>
    </node>
    <node concept="2a5yee" id="3rXORfo7Zce" role="pRMhZ">
      <node concept="pQlao" id="3rXORfo7Zcu" role="2a5y9Q">
        <ref role="pQlar" node="3rXORfo7eHi" resolve="getNodeShape" />
        <node concept="pQlao" id="3rXORfo7ZcE" role="EZGxL">
          <ref role="pQlar" node="3rXORfo7k26" resolve="mkCell" />
          <node concept="26K0MW" id="3rXORfo7Zqp" role="EZGxL" />
          <node concept="pQlao" id="3rXORfo7ZPY" role="EZGxL">
            <ref role="pQlar" node="3rXORfo7k7$" resolve="l" />
          </node>
          <node concept="pQlao" id="3rXORfo80hD" role="EZGxL">
            <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
          </node>
          <node concept="pQlao" id="3rXORfo80Hi" role="EZGxL">
            <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
          </node>
          <node concept="pQlao" id="3rXORfo819b" role="EZGxL">
            <ref role="pQlar" node="3rXORfo7k7$" resolve="l" />
          </node>
        </node>
      </node>
      <node concept="pQlao" id="3rXORfo81nj" role="2a5y9N">
        <ref role="pQlar" node="3rXORfo7eHE" resolve="shapeTurn" />
      </node>
    </node>
    <node concept="2a5yee" id="3rXORfo86K0" role="pRMhZ">
      <node concept="pQlao" id="3rXORfo86K1" role="2a5y9Q">
        <ref role="pQlar" node="3rXORfo7eHi" resolve="getNodeShape" />
        <node concept="pQlao" id="3rXORfo86K2" role="EZGxL">
          <ref role="pQlar" node="3rXORfo7k26" resolve="mkCell" />
          <node concept="26K0MW" id="3rXORfo86K3" role="EZGxL" />
          <node concept="pQlao" id="3rXORfo86K4" role="EZGxL">
            <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
          </node>
          <node concept="pQlao" id="3rXORfo86K5" role="EZGxL">
            <ref role="pQlar" node="3rXORfo7k7$" resolve="l" />
          </node>
          <node concept="pQlao" id="3rXORfo86K6" role="EZGxL">
            <ref role="pQlar" node="3rXORfo7k7$" resolve="l" />
          </node>
          <node concept="pQlao" id="3rXORfo86K7" role="EZGxL">
            <ref role="pQlar" node="3rXORfo7k7$" resolve="l" />
          </node>
        </node>
      </node>
      <node concept="pQlao" id="3rXORfo86K8" role="2a5y9N">
        <ref role="pQlar" node="3rXORfo7eHJ" resolve="shapeT" />
      </node>
    </node>
    <node concept="2a5yee" id="3rXORfo8830" role="pRMhZ">
      <node concept="pQlao" id="3rXORfo8831" role="2a5y9Q">
        <ref role="pQlar" node="3rXORfo7eHi" resolve="getNodeShape" />
        <node concept="pQlao" id="3rXORfo8832" role="EZGxL">
          <ref role="pQlar" node="3rXORfo7k26" resolve="mkCell" />
          <node concept="26K0MW" id="3rXORfo8833" role="EZGxL" />
          <node concept="pQlao" id="3rXORfo8834" role="EZGxL">
            <ref role="pQlar" node="3rXORfo7k7$" resolve="l" />
          </node>
          <node concept="pQlao" id="3rXORfo8835" role="EZGxL">
            <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
          </node>
          <node concept="pQlao" id="3rXORfo8836" role="EZGxL">
            <ref role="pQlar" node="3rXORfo7k7$" resolve="l" />
          </node>
          <node concept="pQlao" id="3rXORfo8837" role="EZGxL">
            <ref role="pQlar" node="3rXORfo7k7$" resolve="l" />
          </node>
        </node>
      </node>
      <node concept="pQlao" id="3rXORfo8838" role="2a5y9N">
        <ref role="pQlar" node="3rXORfo7eHJ" resolve="shapeT" />
      </node>
    </node>
    <node concept="2a5yee" id="3rXORfo883F" role="pRMhZ">
      <node concept="pQlao" id="3rXORfo883G" role="2a5y9Q">
        <ref role="pQlar" node="3rXORfo7eHi" resolve="getNodeShape" />
        <node concept="pQlao" id="3rXORfo883H" role="EZGxL">
          <ref role="pQlar" node="3rXORfo7k26" resolve="mkCell" />
          <node concept="26K0MW" id="3rXORfo883I" role="EZGxL" />
          <node concept="pQlao" id="3rXORfo883J" role="EZGxL">
            <ref role="pQlar" node="3rXORfo7k7$" resolve="l" />
          </node>
          <node concept="pQlao" id="3rXORfo883K" role="EZGxL">
            <ref role="pQlar" node="3rXORfo7k7$" resolve="l" />
          </node>
          <node concept="pQlao" id="3rXORfo883L" role="EZGxL">
            <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
          </node>
          <node concept="pQlao" id="3rXORfo883M" role="EZGxL">
            <ref role="pQlar" node="3rXORfo7k7$" resolve="l" />
          </node>
        </node>
      </node>
      <node concept="pQlao" id="3rXORfo883N" role="2a5y9N">
        <ref role="pQlar" node="3rXORfo7eHJ" resolve="shapeT" />
      </node>
    </node>
    <node concept="2a5yee" id="3rXORfo884j" role="pRMhZ">
      <node concept="pQlao" id="3rXORfo884k" role="2a5y9Q">
        <ref role="pQlar" node="3rXORfo7eHi" resolve="getNodeShape" />
        <node concept="pQlao" id="3rXORfo884l" role="EZGxL">
          <ref role="pQlar" node="3rXORfo7k26" resolve="mkCell" />
          <node concept="26K0MW" id="3rXORfo884m" role="EZGxL" />
          <node concept="pQlao" id="3rXORfo884n" role="EZGxL">
            <ref role="pQlar" node="3rXORfo7k7$" resolve="l" />
          </node>
          <node concept="pQlao" id="3rXORfo884o" role="EZGxL">
            <ref role="pQlar" node="3rXORfo7k7$" resolve="l" />
          </node>
          <node concept="pQlao" id="3rXORfo884p" role="EZGxL">
            <ref role="pQlar" node="3rXORfo7k7$" resolve="l" />
          </node>
          <node concept="pQlao" id="3rXORfo884q" role="EZGxL">
            <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
          </node>
        </node>
      </node>
      <node concept="pQlao" id="3rXORfo884r" role="2a5y9N">
        <ref role="pQlar" node="3rXORfo7eHJ" resolve="shapeT" />
      </node>
    </node>
    <node concept="2a5yee" id="3rXORfo8aTD" role="pRMhZ">
      <node concept="pQlao" id="3rXORfo8aTE" role="2a5y9Q">
        <ref role="pQlar" node="3rXORfo7eHi" resolve="getNodeShape" />
        <node concept="pQlao" id="3rXORfo8aTF" role="EZGxL">
          <ref role="pQlar" node="3rXORfo7k26" resolve="mkCell" />
          <node concept="26K0MW" id="3rXORfo8aTG" role="EZGxL" />
          <node concept="pQlao" id="3rXORfo8aTH" role="EZGxL">
            <ref role="pQlar" node="3rXORfo7k7$" resolve="l" />
          </node>
          <node concept="pQlao" id="3rXORfo8aTI" role="EZGxL">
            <ref role="pQlar" node="3rXORfo7k7$" resolve="l" />
          </node>
          <node concept="pQlao" id="3rXORfo8aTJ" role="EZGxL">
            <ref role="pQlar" node="3rXORfo7k7$" resolve="l" />
          </node>
          <node concept="pQlao" id="3rXORfo8aTK" role="EZGxL">
            <ref role="pQlar" node="3rXORfo7k7$" resolve="l" />
          </node>
        </node>
      </node>
      <node concept="pQlao" id="3rXORfo8aTL" role="2a5y9N">
        <ref role="pQlar" node="3rXORfo7eHO" resolve="shapeCross" />
      </node>
    </node>
    <node concept="3DQ70j" id="3rXORfo8UPn" role="lGtFl">
      <property role="3V$3am" value="axioms" />
      <property role="3V$3ak" value="b4fcd96f-fa06-46a4-9520-beaeb32aa9a1/8445081754001417286/6300386900480908542" />
    </node>
    <node concept="2a5yee" id="3rXORfo9iex" role="pRMhZ">
      <node concept="pQlao" id="3rXORfo9ieI" role="2a5y9Q">
        <ref role="pQlar" node="3rXORfo7eIk" resolve="correctCell" />
        <node concept="3O66mJ" id="3rXORfo9wZM" role="EZGxL">
          <ref role="3O66mG" node="3rXORfo9uYJ" resolve="cell1" />
        </node>
      </node>
      <node concept="pQlao" id="3rXORfo9xEE" role="2a5y9N">
        <ref role="pQlar" to="zaie:1jOgEPzVaaN" resolve="EQ_GR" />
        <node concept="pQlao" id="3rXORfo9y0a" role="EZGxL">
          <ref role="pQlar" node="3rXORfo8zkS" resolve="getLineCount" />
          <node concept="pQlao" id="7kjZvFxAA37" role="EZGxL">
            <ref role="pQlar" node="3rXORfo7k26" resolve="mkCell" />
            <node concept="26K0MW" id="7kjZvFxAApH" role="EZGxL" />
            <node concept="pQlao" id="7kjZvFxAB6X" role="EZGxL">
              <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
            </node>
            <node concept="pQlao" id="7kjZvFxABOj" role="EZGxL">
              <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
            </node>
            <node concept="pQlao" id="7kjZvFxACxE" role="EZGxL">
              <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
            </node>
            <node concept="pQlao" id="7kjZvFxADfh" role="EZGxL">
              <ref role="pQlar" node="3rXORfo7k7$" resolve="l" />
            </node>
          </node>
        </node>
        <node concept="2GQ0ll" id="3rXORfo9z0L" role="EZGxL">
          <property role="p6XkA" value="2" />
        </node>
      </node>
    </node>
    <node concept="3DQ70j" id="3rXORfo9mfV" role="lGtFl">
      <property role="3V$3am" value="axioms" />
      <property role="3V$3ak" value="b4fcd96f-fa06-46a4-9520-beaeb32aa9a1/8445081754001417286/6300386900480908542" />
    </node>
    <node concept="1mjQuN" id="5wEF59lkhfh" role="YRu88">
      <property role="TrG5h" value="puzzle1" />
      <node concept="pQlao" id="3rXORfo7jBQ" role="1mjQuF">
        <property role="3IYp45" value="true" />
        <ref role="pQlar" node="3rXORfo7c5_" resolve="mkPearl" />
        <node concept="pQlao" id="3rXORfo7kah" role="EZGxL">
          <property role="3IYp45" value="true" />
          <ref role="pQlar" node="5wEF59lkheH" resolve="mkLine" />
          <node concept="pQlao" id="3rXORfo7kb4" role="EZGxL">
            <ref role="pQlar" node="3rXORfo7k26" resolve="mkCell" />
            <node concept="pQlao" id="3rXORfo7sJl" role="EZGxL">
              <ref role="pQlar" node="3rXORfo7bKF" resolve="empty" />
            </node>
            <node concept="pQlao" id="3rXORfo7rhM" role="EZGxL">
              <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
            </node>
            <node concept="pQlao" id="3rXORfo7rnn" role="EZGxL">
              <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
            </node>
            <node concept="pQlao" id="3rXORfo7th1" role="EZGxL">
              <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
            </node>
            <node concept="pQlao" id="3rXORfo7t5T" role="EZGxL">
              <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
            </node>
          </node>
          <node concept="pQlao" id="3rXORfo7kcI" role="EZGxL">
            <ref role="pQlar" node="3rXORfo7k26" resolve="mkCell" />
            <node concept="pQlao" id="3rXORfo7rQ5" role="EZGxL">
              <ref role="pQlar" node="3rXORfo7bKF" resolve="empty" />
            </node>
            <node concept="pQlao" id="3rXORfo7s7s" role="EZGxL">
              <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
            </node>
            <node concept="pQlao" id="3rXORfo7ses" role="EZGxL">
              <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
            </node>
            <node concept="pQlao" id="3rXORfo7sls" role="EZGxL">
              <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
            </node>
            <node concept="pQlao" id="3rXORfo7szS" role="EZGxL">
              <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
            </node>
          </node>
          <node concept="pQlao" id="3rXORfo7kep" role="EZGxL">
            <ref role="pQlar" node="3rXORfo7k26" resolve="mkCell" />
            <node concept="pQlao" id="3rXORfo7rTx" role="EZGxL">
              <ref role="pQlar" node="3rXORfo7bKF" resolve="empty" />
            </node>
            <node concept="pQlao" id="3rXORfo7toT" role="EZGxL">
              <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
            </node>
            <node concept="pQlao" id="3rXORfo7tww" role="EZGxL">
              <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
            </node>
            <node concept="pQlao" id="3rXORfo7tCb" role="EZGxL">
              <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
            </node>
            <node concept="pQlao" id="3rXORfo7tK8" role="EZGxL">
              <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
            </node>
          </node>
          <node concept="pQlao" id="3rXORfo7kLw" role="EZGxL">
            <ref role="pQlar" node="3rXORfo7k26" resolve="mkCell" />
            <node concept="pQlao" id="3rXORfo7rWT" role="EZGxL">
              <ref role="pQlar" node="3rXORfo7bKF" resolve="empty" />
            </node>
            <node concept="pQlao" id="3rXORfo7tSi" role="EZGxL">
              <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
            </node>
            <node concept="pQlao" id="3rXORfo7u0t" role="EZGxL">
              <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
            </node>
            <node concept="pQlao" id="3rXORfo7u8G" role="EZGxL">
              <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
            </node>
            <node concept="pQlao" id="3rXORfo7uha" role="EZGxL">
              <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
            </node>
          </node>
          <node concept="pQlao" id="3rXORfo7kOG" role="EZGxL">
            <ref role="pQlar" node="3rXORfo7k26" resolve="mkCell" />
            <node concept="pQlao" id="3rXORfo7s0m" role="EZGxL">
              <ref role="pQlar" node="3rXORfo7bKF" resolve="empty" />
            </node>
            <node concept="pQlao" id="3rXORfo7upS" role="EZGxL">
              <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
            </node>
            <node concept="pQlao" id="3rXORfo7uyB" role="EZGxL">
              <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
            </node>
            <node concept="pQlao" id="3rXORfo7uFn" role="EZGxL">
              <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
            </node>
            <node concept="pQlao" id="3rXORfo7uOp" role="EZGxL">
              <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
            </node>
          </node>
        </node>
        <node concept="pQlao" id="3rXORfo7k$u" role="EZGxL">
          <property role="3IYp45" value="true" />
          <ref role="pQlar" node="5wEF59lkheH" resolve="mkLine" />
          <node concept="pQlao" id="3rXORfo7k_E" role="EZGxL">
            <ref role="pQlar" node="3rXORfo7k26" resolve="mkCell" />
            <node concept="pQlao" id="3rXORfo7uT6" role="EZGxL">
              <ref role="pQlar" node="3rXORfo7bKF" resolve="empty" />
            </node>
            <node concept="pQlao" id="3rXORfo7v2x" role="EZGxL">
              <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
            </node>
            <node concept="pQlao" id="3rXORfo7vbS" role="EZGxL">
              <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
            </node>
            <node concept="pQlao" id="3rXORfo7vlj" role="EZGxL">
              <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
            </node>
            <node concept="pQlao" id="3rXORfo7vuX" role="EZGxL">
              <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
            </node>
          </node>
          <node concept="pQlao" id="3rXORfo7kC6" role="EZGxL">
            <ref role="pQlar" node="3rXORfo7k26" resolve="mkCell" />
            <node concept="pQlao" id="3rXORfo7vzY" role="EZGxL">
              <ref role="pQlar" node="3rXORfo7bKF" resolve="empty" />
            </node>
            <node concept="pQlao" id="3rXORfo7vHV" role="EZGxL">
              <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
            </node>
            <node concept="pQlao" id="3rXORfo7vRU" role="EZGxL">
              <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
            </node>
            <node concept="pQlao" id="3rXORfo7w1U" role="EZGxL">
              <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
            </node>
            <node concept="pQlao" id="3rXORfo7wcc" role="EZGxL">
              <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
            </node>
          </node>
          <node concept="pQlao" id="3rXORfo7kEB" role="EZGxL">
            <ref role="pQlar" node="3rXORfo7k26" resolve="mkCell" />
            <node concept="pQlao" id="3rXORfo7whu" role="EZGxL">
              <ref role="pQlar" node="3rXORfo7bKF" resolve="empty" />
            </node>
            <node concept="pQlao" id="3rXORfo7ws0" role="EZGxL">
              <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
            </node>
            <node concept="pQlao" id="3rXORfo7wAB" role="EZGxL">
              <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
            </node>
            <node concept="pQlao" id="3rXORfo7wLf" role="EZGxL">
              <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
            </node>
            <node concept="pQlao" id="3rXORfo7wW9" role="EZGxL">
              <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
            </node>
          </node>
          <node concept="pQlao" id="3rXORfo7kHc" role="EZGxL">
            <ref role="pQlar" node="3rXORfo7k26" resolve="mkCell" />
            <node concept="pQlao" id="3rXORfo7x1J" role="EZGxL">
              <ref role="pQlar" node="3rXORfo7bKF" resolve="empty" />
            </node>
            <node concept="pQlao" id="3rXORfo7xcQ" role="EZGxL">
              <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
            </node>
            <node concept="pQlao" id="3rXORfo7xo5" role="EZGxL">
              <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
            </node>
            <node concept="pQlao" id="3rXORfo7xzl" role="EZGxL">
              <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
            </node>
            <node concept="pQlao" id="3rXORfo7xIO" role="EZGxL">
              <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
            </node>
          </node>
          <node concept="pQlao" id="3rXORfo7kK0" role="EZGxL">
            <ref role="pQlar" node="3rXORfo7k26" resolve="mkCell" />
            <node concept="pQlao" id="3rXORfo7xOI" role="EZGxL">
              <ref role="pQlar" node="3rXORfo7bKF" resolve="empty" />
            </node>
            <node concept="pQlao" id="3rXORfo7y0w" role="EZGxL">
              <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
            </node>
            <node concept="pQlao" id="3rXORfo7ycn" role="EZGxL">
              <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
            </node>
            <node concept="pQlao" id="3rXORfo7yof" role="EZGxL">
              <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
            </node>
            <node concept="pQlao" id="3rXORfo7y$p" role="EZGxL">
              <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
            </node>
          </node>
        </node>
        <node concept="pQlao" id="3rXORfo7zKO" role="EZGxL">
          <property role="3IYp45" value="true" />
          <ref role="pQlar" node="5wEF59lkheH" resolve="mkLine" />
          <node concept="pQlao" id="3rXORfo7zKP" role="EZGxL">
            <ref role="pQlar" node="3rXORfo7k26" resolve="mkCell" />
            <node concept="pQlao" id="3rXORfo7zKQ" role="EZGxL">
              <ref role="pQlar" node="3rXORfo7bKF" resolve="empty" />
            </node>
            <node concept="pQlao" id="3rXORfo7zKR" role="EZGxL">
              <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
            </node>
            <node concept="pQlao" id="3rXORfo7zKS" role="EZGxL">
              <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
            </node>
            <node concept="pQlao" id="3rXORfo7zKT" role="EZGxL">
              <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
            </node>
            <node concept="pQlao" id="3rXORfo7zKU" role="EZGxL">
              <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
            </node>
          </node>
          <node concept="pQlao" id="3rXORfo7zKV" role="EZGxL">
            <ref role="pQlar" node="3rXORfo7k26" resolve="mkCell" />
            <node concept="pQlao" id="3rXORfo7zKW" role="EZGxL">
              <ref role="pQlar" node="3rXORfo7bKF" resolve="empty" />
            </node>
            <node concept="pQlao" id="3rXORfo7zKX" role="EZGxL">
              <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
            </node>
            <node concept="pQlao" id="3rXORfo7zKY" role="EZGxL">
              <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
            </node>
            <node concept="pQlao" id="3rXORfo7zKZ" role="EZGxL">
              <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
            </node>
            <node concept="pQlao" id="3rXORfo7zL0" role="EZGxL">
              <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
            </node>
          </node>
          <node concept="pQlao" id="3rXORfo7zL1" role="EZGxL">
            <ref role="pQlar" node="3rXORfo7k26" resolve="mkCell" />
            <node concept="pQlao" id="3rXORfo7zL2" role="EZGxL">
              <ref role="pQlar" node="3rXORfo7bKF" resolve="empty" />
            </node>
            <node concept="pQlao" id="3rXORfo7zL3" role="EZGxL">
              <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
            </node>
            <node concept="pQlao" id="3rXORfo7zL4" role="EZGxL">
              <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
            </node>
            <node concept="pQlao" id="3rXORfo7zL5" role="EZGxL">
              <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
            </node>
            <node concept="pQlao" id="3rXORfo7zL6" role="EZGxL">
              <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
            </node>
          </node>
          <node concept="pQlao" id="3rXORfo7zL7" role="EZGxL">
            <ref role="pQlar" node="3rXORfo7k26" resolve="mkCell" />
            <node concept="pQlao" id="3rXORfo7zL8" role="EZGxL">
              <ref role="pQlar" node="3rXORfo7bKF" resolve="empty" />
            </node>
            <node concept="pQlao" id="3rXORfo7zL9" role="EZGxL">
              <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
            </node>
            <node concept="pQlao" id="3rXORfo7zLa" role="EZGxL">
              <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
            </node>
            <node concept="pQlao" id="3rXORfo7zLb" role="EZGxL">
              <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
            </node>
            <node concept="pQlao" id="3rXORfo7zLc" role="EZGxL">
              <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
            </node>
          </node>
          <node concept="pQlao" id="3rXORfo7zLd" role="EZGxL">
            <ref role="pQlar" node="3rXORfo7k26" resolve="mkCell" />
            <node concept="pQlao" id="3rXORfo7zLe" role="EZGxL">
              <ref role="pQlar" node="3rXORfo7bKF" resolve="empty" />
            </node>
            <node concept="pQlao" id="3rXORfo7zLf" role="EZGxL">
              <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
            </node>
            <node concept="pQlao" id="3rXORfo7zLg" role="EZGxL">
              <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
            </node>
            <node concept="pQlao" id="3rXORfo7zLh" role="EZGxL">
              <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
            </node>
            <node concept="pQlao" id="3rXORfo7zLi" role="EZGxL">
              <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
            </node>
          </node>
        </node>
        <node concept="pQlao" id="3rXORfo7zT3" role="EZGxL">
          <property role="3IYp45" value="true" />
          <ref role="pQlar" node="5wEF59lkheH" resolve="mkLine" />
          <node concept="pQlao" id="3rXORfo7zT4" role="EZGxL">
            <ref role="pQlar" node="3rXORfo7k26" resolve="mkCell" />
            <node concept="pQlao" id="3rXORfo7zT5" role="EZGxL">
              <ref role="pQlar" node="3rXORfo7bKF" resolve="empty" />
            </node>
            <node concept="pQlao" id="3rXORfo7zT6" role="EZGxL">
              <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
            </node>
            <node concept="pQlao" id="3rXORfo7zT7" role="EZGxL">
              <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
            </node>
            <node concept="pQlao" id="3rXORfo7zT8" role="EZGxL">
              <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
            </node>
            <node concept="pQlao" id="3rXORfo7zT9" role="EZGxL">
              <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
            </node>
          </node>
          <node concept="pQlao" id="3rXORfo7zTa" role="EZGxL">
            <ref role="pQlar" node="3rXORfo7k26" resolve="mkCell" />
            <node concept="pQlao" id="3rXORfo7zTb" role="EZGxL">
              <ref role="pQlar" node="3rXORfo7bKF" resolve="empty" />
            </node>
            <node concept="pQlao" id="3rXORfo7zTc" role="EZGxL">
              <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
            </node>
            <node concept="pQlao" id="3rXORfo7zTd" role="EZGxL">
              <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
            </node>
            <node concept="pQlao" id="3rXORfo7zTe" role="EZGxL">
              <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
            </node>
            <node concept="pQlao" id="3rXORfo7zTf" role="EZGxL">
              <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
            </node>
          </node>
          <node concept="pQlao" id="3rXORfo7zTg" role="EZGxL">
            <ref role="pQlar" node="3rXORfo7k26" resolve="mkCell" />
            <node concept="pQlao" id="3rXORfo7zTh" role="EZGxL">
              <ref role="pQlar" node="3rXORfo7bKF" resolve="empty" />
            </node>
            <node concept="pQlao" id="3rXORfo7zTi" role="EZGxL">
              <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
            </node>
            <node concept="pQlao" id="3rXORfo7zTj" role="EZGxL">
              <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
            </node>
            <node concept="pQlao" id="3rXORfo7zTk" role="EZGxL">
              <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
            </node>
            <node concept="pQlao" id="3rXORfo7zTl" role="EZGxL">
              <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
            </node>
          </node>
          <node concept="pQlao" id="3rXORfo7zTm" role="EZGxL">
            <ref role="pQlar" node="3rXORfo7k26" resolve="mkCell" />
            <node concept="pQlao" id="3rXORfo7zTn" role="EZGxL">
              <ref role="pQlar" node="3rXORfo7bKF" resolve="empty" />
            </node>
            <node concept="pQlao" id="3rXORfo7zTo" role="EZGxL">
              <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
            </node>
            <node concept="pQlao" id="3rXORfo7zTp" role="EZGxL">
              <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
            </node>
            <node concept="pQlao" id="3rXORfo7zTq" role="EZGxL">
              <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
            </node>
            <node concept="pQlao" id="3rXORfo7zTr" role="EZGxL">
              <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
            </node>
          </node>
          <node concept="pQlao" id="3rXORfo7zTs" role="EZGxL">
            <ref role="pQlar" node="3rXORfo7k26" resolve="mkCell" />
            <node concept="pQlao" id="3rXORfo7zTt" role="EZGxL">
              <ref role="pQlar" node="3rXORfo7bKF" resolve="empty" />
            </node>
            <node concept="pQlao" id="3rXORfo7zTu" role="EZGxL">
              <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
            </node>
            <node concept="pQlao" id="3rXORfo7zTv" role="EZGxL">
              <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
            </node>
            <node concept="pQlao" id="3rXORfo7zTw" role="EZGxL">
              <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
            </node>
            <node concept="pQlao" id="3rXORfo7zTx" role="EZGxL">
              <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
            </node>
          </node>
        </node>
        <node concept="pQlao" id="3rXORfo7$2Q" role="EZGxL">
          <property role="3IYp45" value="true" />
          <ref role="pQlar" node="5wEF59lkheH" resolve="mkLine" />
          <node concept="pQlao" id="3rXORfo7$2R" role="EZGxL">
            <ref role="pQlar" node="3rXORfo7k26" resolve="mkCell" />
            <node concept="pQlao" id="3rXORfo7$2S" role="EZGxL">
              <ref role="pQlar" node="3rXORfo7bKF" resolve="empty" />
            </node>
            <node concept="pQlao" id="3rXORfo7$2T" role="EZGxL">
              <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
            </node>
            <node concept="pQlao" id="3rXORfo7$2U" role="EZGxL">
              <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
            </node>
            <node concept="pQlao" id="3rXORfo7$2V" role="EZGxL">
              <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
            </node>
            <node concept="pQlao" id="3rXORfo7$2W" role="EZGxL">
              <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
            </node>
          </node>
          <node concept="pQlao" id="3rXORfo7$2X" role="EZGxL">
            <ref role="pQlar" node="3rXORfo7k26" resolve="mkCell" />
            <node concept="pQlao" id="3rXORfo7$2Y" role="EZGxL">
              <ref role="pQlar" node="3rXORfo7bKF" resolve="empty" />
            </node>
            <node concept="pQlao" id="3rXORfo7$2Z" role="EZGxL">
              <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
            </node>
            <node concept="pQlao" id="3rXORfo7$30" role="EZGxL">
              <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
            </node>
            <node concept="pQlao" id="3rXORfo7$31" role="EZGxL">
              <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
            </node>
            <node concept="pQlao" id="3rXORfo7$32" role="EZGxL">
              <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
            </node>
          </node>
          <node concept="pQlao" id="3rXORfo7$33" role="EZGxL">
            <ref role="pQlar" node="3rXORfo7k26" resolve="mkCell" />
            <node concept="pQlao" id="3rXORfo7$34" role="EZGxL">
              <ref role="pQlar" node="3rXORfo7bKF" resolve="empty" />
            </node>
            <node concept="pQlao" id="3rXORfo7$35" role="EZGxL">
              <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
            </node>
            <node concept="pQlao" id="3rXORfo7$36" role="EZGxL">
              <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
            </node>
            <node concept="pQlao" id="3rXORfo7$37" role="EZGxL">
              <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
            </node>
            <node concept="pQlao" id="3rXORfo7$38" role="EZGxL">
              <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
            </node>
          </node>
          <node concept="pQlao" id="3rXORfo7$39" role="EZGxL">
            <ref role="pQlar" node="3rXORfo7k26" resolve="mkCell" />
            <node concept="pQlao" id="3rXORfo7$3a" role="EZGxL">
              <ref role="pQlar" node="3rXORfo7bKF" resolve="empty" />
            </node>
            <node concept="pQlao" id="3rXORfo7$3b" role="EZGxL">
              <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
            </node>
            <node concept="pQlao" id="3rXORfo7$3c" role="EZGxL">
              <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
            </node>
            <node concept="pQlao" id="3rXORfo7$3d" role="EZGxL">
              <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
            </node>
            <node concept="pQlao" id="3rXORfo7$3e" role="EZGxL">
              <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
            </node>
          </node>
          <node concept="pQlao" id="3rXORfo7$3f" role="EZGxL">
            <ref role="pQlar" node="3rXORfo7k26" resolve="mkCell" />
            <node concept="pQlao" id="3rXORfo7$3g" role="EZGxL">
              <ref role="pQlar" node="3rXORfo7bKF" resolve="empty" />
            </node>
            <node concept="pQlao" id="3rXORfo7$3h" role="EZGxL">
              <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
            </node>
            <node concept="pQlao" id="3rXORfo7$3i" role="EZGxL">
              <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
            </node>
            <node concept="pQlao" id="3rXORfo7$3j" role="EZGxL">
              <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
            </node>
            <node concept="pQlao" id="3rXORfo7$3k" role="EZGxL">
              <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
            </node>
          </node>
          <node concept="3DQ70j" id="7kjZvFxAome" role="lGtFl">
            <property role="3V$3am" value="parameters" />
            <property role="3V$3ak" value="b4fcd96f-fa06-46a4-9520-beaeb32aa9a1/6300386900481288729/7054597004572770024" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1mjQuN" id="7kjZvFxAkeG" role="YRu88">
      <property role="TrG5h" value="testCell1" />
      <node concept="pQlao" id="7kjZvFxAkf0" role="1mjQuF">
        <ref role="pQlar" node="3rXORfo7k26" resolve="mkCell" />
        <node concept="pQlao" id="7kjZvFxAkfa" role="EZGxL">
          <ref role="pQlar" node="3rXORfo7bKF" resolve="empty" />
        </node>
        <node concept="pQlao" id="7kjZvFxAkUA" role="EZGxL">
          <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
        </node>
        <node concept="pQlao" id="7kjZvFxAmhA" role="EZGxL">
          <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
        </node>
        <node concept="pQlao" id="7kjZvFxAmXe" role="EZGxL">
          <ref role="pQlar" node="3rXORfo7k7D" resolve="x" />
        </node>
        <node concept="pQlao" id="7kjZvFxAnD2" role="EZGxL">
          <ref role="pQlar" node="3rXORfo7k7$" resolve="l" />
        </node>
      </node>
    </node>
    <node concept="rdghn" id="7kjZvFxAke5" role="YRu88" />
    <node concept="YRuf3" id="5wEF59lkhhy" role="YRu88">
      <property role="1lq2J7" value="100" />
      <property role="1lgsvm" value="true" />
      <property role="1KuzG$" value="true" />
      <node concept="pQlao" id="5wEF59lkhhV" role="YRufA">
        <ref role="pQlar" node="5wEF59lkheZ" resolve="correctPearl" />
        <node concept="1mjQuQ" id="5wEF59lkhi2" role="EZGxL">
          <ref role="1mjQuR" node="5wEF59lkhfh" resolve="puzzle1" />
        </node>
      </node>
    </node>
    <node concept="YRuf3" id="7kjZvFxAnZ_" role="YRu88">
      <property role="1lq2J7" value="0" />
      <property role="1lgsvm" value="true" />
      <node concept="pQlao" id="7kjZvFxAnZP" role="YRufA">
        <ref role="pQlar" node="3rXORfo7eIk" resolve="correctCell" />
        <node concept="1mjQuQ" id="7kjZvFxAo04" role="EZGxL">
          <ref role="1mjQuR" node="7kjZvFxAkeG" resolve="testCell1" />
        </node>
      </node>
    </node>
    <node concept="pRJ9f" id="3rXORfo7c5_" role="pRMtA">
      <property role="TrG5h" value="mkPearl" />
      <property role="pRJ9j" value="true" />
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
      <property role="pRJ9j" value="true" />
      <property role="TrG5h" value="mkRow" />
      <node concept="bl5qV" id="3rXORfo7jy8" role="pRJ9k">
        <ref role="bl5qO" node="3rXORfo7bKn" resolve="Node" />
      </node>
      <node concept="bl5qV" id="3rXORfo7jz4" role="pRJ9k">
        <ref role="bl5qO" node="3rXORfo7bKn" resolve="Node" />
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
        <ref role="bl5qO" node="3rXORfo7b_6" resolve="Line" />
      </node>
    </node>
    <node concept="pRJ9f" id="3rXORfo7k26" role="pRMtA">
      <property role="TrG5h" value="mkCell" />
      <node concept="bl5qV" id="3rXORfo7k2k" role="pRJ9k">
        <ref role="bl5qO" node="3rXORfo7k2d" resolve="CellType" />
      </node>
      <node concept="bl5qV" id="3rXORfo7k2o" role="pRJ9k">
        <ref role="bl5qO" node="3rXORfo7k2g" resolve="HalfConnection" />
      </node>
      <node concept="bl5qV" id="3rXORfo7k2s" role="pRJ9k">
        <ref role="bl5qO" node="3rXORfo7k2g" resolve="HalfConnection" />
      </node>
      <node concept="bl5qV" id="3rXORfo7k2w" role="pRJ9k">
        <ref role="bl5qO" node="3rXORfo7k2g" resolve="HalfConnection" />
      </node>
      <node concept="bl5qV" id="3rXORfo7k2$" role="pRJ9k">
        <ref role="bl5qO" node="3rXORfo7k2g" resolve="HalfConnection" />
      </node>
      <node concept="bl5qV" id="3rXORfo7k27" role="pRJ9p">
        <ref role="bl5qO" node="3rXORfo7bKn" resolve="Cell" />
      </node>
    </node>
    <node concept="3DQ70j" id="3rXORfo7j$Y" role="lGtFl">
      <property role="3V$3am" value="operators" />
      <property role="3V$3ak" value="b4fcd96f-fa06-46a4-9520-beaeb32aa9a1/8445081754001417286/6300386900480909287" />
    </node>
    <node concept="pRJ9f" id="3rXORfo7bKx" role="pRMtA">
      <property role="TrG5h" value="white" />
      <property role="pRJ9j" value="true" />
      <node concept="bl5qV" id="3rXORfo7bKy" role="pRJ9p">
        <ref role="bl5qO" node="3rXORfo7k2d" resolve="CellType" />
      </node>
    </node>
    <node concept="pRJ9f" id="3rXORfo7bKL" role="pRMtA">
      <property role="TrG5h" value="black" />
      <property role="pRJ9j" value="true" />
      <node concept="bl5qV" id="3rXORfo7bKM" role="pRJ9p">
        <ref role="bl5qO" node="3rXORfo7k2d" resolve="CellType" />
      </node>
    </node>
    <node concept="pRJ9f" id="3rXORfo7bKF" role="pRMtA">
      <property role="TrG5h" value="empty" />
      <property role="pRJ9j" value="true" />
      <node concept="bl5qV" id="3rXORfo7bKG" role="pRJ9p">
        <ref role="bl5qO" node="3rXORfo7k2d" resolve="CellType" />
      </node>
    </node>
    <node concept="3DQ70j" id="3rXORfo7k7N" role="lGtFl">
      <property role="3V$3am" value="operators" />
      <property role="3V$3ak" value="b4fcd96f-fa06-46a4-9520-beaeb32aa9a1/8445081754001417286/6300386900480909287" />
    </node>
    <node concept="pRJ9f" id="3rXORfo7k7$" role="pRMtA">
      <property role="TrG5h" value="l" />
      <property role="pRJ9j" value="true" />
      <node concept="bl5qV" id="3rXORfo7k7_" role="pRJ9p">
        <ref role="bl5qO" node="3rXORfo7k2g" resolve="Connection" />
      </node>
    </node>
    <node concept="pRJ9f" id="3rXORfo7k7D" role="pRMtA">
      <property role="TrG5h" value="x" />
      <property role="pRJ9j" value="true" />
      <node concept="bl5qV" id="3rXORfo7k7E" role="pRJ9p">
        <ref role="bl5qO" node="3rXORfo7k2g" resolve="Connection" />
      </node>
    </node>
    <node concept="3DQ70j" id="3rXORfo7j_0" role="lGtFl">
      <property role="3V$3am" value="operators" />
      <property role="3V$3ak" value="b4fcd96f-fa06-46a4-9520-beaeb32aa9a1/8445081754001417286/6300386900480909287" />
    </node>
    <node concept="pRJ9f" id="3rXORfo7eHr" role="pRMtA">
      <property role="TrG5h" value="shapeNone" />
      <property role="pRJ9j" value="true" />
      <node concept="bl5qV" id="3rXORfo7eHs" role="pRJ9p">
        <ref role="bl5qO" node="3rXORfo7eHg" resolve="Shape" />
      </node>
    </node>
    <node concept="pRJ9f" id="3rXORfo7eHw" role="pRMtA">
      <property role="TrG5h" value="shapeEnd" />
      <property role="pRJ9j" value="true" />
      <node concept="bl5qV" id="3rXORfo7eHx" role="pRJ9p">
        <ref role="bl5qO" node="3rXORfo7eHg" resolve="Shape" />
      </node>
    </node>
    <node concept="pRJ9f" id="3rXORfo7eH_" role="pRMtA">
      <property role="TrG5h" value="shapeStraight" />
      <property role="pRJ9j" value="true" />
      <node concept="bl5qV" id="3rXORfo7eHA" role="pRJ9p">
        <ref role="bl5qO" node="3rXORfo7eHg" resolve="Shape" />
      </node>
    </node>
    <node concept="pRJ9f" id="3rXORfo7eHE" role="pRMtA">
      <property role="TrG5h" value="shapeTurn" />
      <property role="pRJ9j" value="true" />
      <node concept="bl5qV" id="3rXORfo7eHF" role="pRJ9p">
        <ref role="bl5qO" node="3rXORfo7eHg" resolve="Shape" />
      </node>
    </node>
    <node concept="pRJ9f" id="3rXORfo7eHJ" role="pRMtA">
      <property role="TrG5h" value="shapeT" />
      <property role="pRJ9j" value="true" />
      <node concept="bl5qV" id="3rXORfo7eHK" role="pRJ9p">
        <ref role="bl5qO" node="3rXORfo7eHg" resolve="Shape" />
      </node>
    </node>
    <node concept="pRJ9f" id="3rXORfo7eHO" role="pRMtA">
      <property role="TrG5h" value="shapeCross" />
      <property role="pRJ9j" value="true" />
      <node concept="bl5qV" id="3rXORfo7eHP" role="pRJ9p">
        <ref role="bl5qO" node="3rXORfo7eHg" resolve="Shape" />
      </node>
    </node>
    <node concept="3DQ70j" id="3rXORfo7j_1" role="lGtFl">
      <property role="3V$3am" value="operators" />
      <property role="3V$3ak" value="b4fcd96f-fa06-46a4-9520-beaeb32aa9a1/8445081754001417286/6300386900480909287" />
    </node>
    <node concept="pRJ9f" id="5wEF59lkheZ" role="pRMtA">
      <property role="TrG5h" value="correctPearl" />
      <node concept="bl5qV" id="5wEF59lkhf8" role="pRJ9k">
        <ref role="bl5qO" node="5wEF59lkheF" resolve="Pearl" />
      </node>
      <node concept="bl5qV" id="5wEF59lkhf0" role="pRJ9p">
        <ref role="bl5qO" to="zaie:7zB5IrGSITC" resolve="Bool" />
      </node>
    </node>
    <node concept="pRJ9f" id="3rXORfo7Jxh" role="pRMtA">
      <property role="TrG5h" value="correctRow" />
      <node concept="bl5qV" id="3rXORfo7JxI" role="pRJ9k">
        <ref role="bl5qO" node="3rXORfo7b_6" resolve="Row" />
      </node>
      <node concept="bl5qV" id="3rXORfo7Jxi" role="pRJ9p">
        <ref role="bl5qO" to="zaie:7zB5IrGSITC" resolve="Bool" />
      </node>
    </node>
    <node concept="pRJ9f" id="3rXORfo7eIk" role="pRMtA">
      <property role="TrG5h" value="correctCell" />
      <node concept="bl5qV" id="3rXORfo7eIp" role="pRJ9k">
        <ref role="bl5qO" node="3rXORfo7bKn" resolve="Node" />
      </node>
      <node concept="bl5qV" id="3rXORfo7eIl" role="pRJ9p">
        <ref role="bl5qO" to="zaie:7zB5IrGSITC" resolve="Bool" />
      </node>
    </node>
    <node concept="3DQ70j" id="3rXORfo7Jx1" role="lGtFl">
      <property role="3V$3am" value="operators" />
      <property role="3V$3ak" value="b4fcd96f-fa06-46a4-9520-beaeb32aa9a1/8445081754001417286/6300386900480909287" />
    </node>
    <node concept="pRJ9f" id="3rXORfo7eDJ" role="pRMtA">
      <property role="TrG5h" value="adjacent" />
      <node concept="bl5qV" id="3rXORfo7eDO" role="pRJ9k">
        <ref role="bl5qO" node="3rXORfo7bKn" resolve="Node" />
      </node>
      <node concept="bl5qV" id="3rXORfo7eDQ" role="pRJ9k">
        <ref role="bl5qO" node="3rXORfo7bKn" resolve="Node" />
      </node>
      <node concept="bl5qV" id="3rXORfo7eDK" role="pRJ9p">
        <ref role="bl5qO" to="zaie:7zB5IrGSITC" resolve="Bool" />
      </node>
    </node>
    <node concept="pRJ9f" id="3rXORfo7eHi" role="pRMtA">
      <property role="TrG5h" value="getNodeShape" />
      <node concept="bl5qV" id="3rXORfo7eHl" role="pRJ9k">
        <ref role="bl5qO" node="3rXORfo7bKn" resolve="Node" />
      </node>
      <node concept="bl5qV" id="3rXORfo7eHj" role="pRJ9p">
        <ref role="bl5qO" node="3rXORfo7eHg" resolve="Shape" />
      </node>
    </node>
    <node concept="pRJ9f" id="3rXORfo8zkS" role="pRMtA">
      <property role="TrG5h" value="getLineCount" />
      <node concept="bl5qV" id="3rXORfo8zlv" role="pRJ9k">
        <ref role="bl5qO" node="3rXORfo7bKn" resolve="Cell" />
      </node>
      <node concept="bl5qV" id="3rXORfo8zkT" role="pRJ9p">
        <ref role="bl5qO" to="zaie:49jlVpri7XP" resolve="Int" />
      </node>
    </node>
    <node concept="3DQ70j" id="3rXORfo7jaQ" role="lGtFl">
      <property role="3V$3am" value="operators" />
      <property role="3V$3ak" value="b4fcd96f-fa06-46a4-9520-beaeb32aa9a1/8445081754001417286/6300386900480909287" />
    </node>
    <node concept="bklvD" id="5wEF59lkheF" role="blzGn">
      <property role="TrG5h" value="Pearl" />
    </node>
    <node concept="bklvD" id="3rXORfo7bKn" role="blzGn">
      <property role="TrG5h" value="Cell" />
    </node>
    <node concept="bklvD" id="3rXORfo7b_6" role="blzGn">
      <property role="TrG5h" value="Row" />
    </node>
    <node concept="bklvD" id="3rXORfo7k2d" role="blzGn">
      <property role="TrG5h" value="CellType" />
    </node>
    <node concept="bklvD" id="3rXORfo7k2g" role="blzGn">
      <property role="TrG5h" value="Connection" />
    </node>
    <node concept="3DQ70j" id="3rXORfo7k2c" role="lGtFl">
      <property role="3V$3am" value="sorts" />
      <property role="3V$3ak" value="b4fcd96f-fa06-46a4-9520-beaeb32aa9a1/8445081754001417286/8445081754001526283" />
    </node>
    <node concept="bklvD" id="3rXORfo7eHg" role="blzGn">
      <property role="TrG5h" value="Shape" />
    </node>
    <node concept="3QKWG5" id="5wEF59lkheD" role="3QKWGc">
      <ref role="3QKWG4" to="zaie:7zB5IrGSITB" resolve="BOOLEAN" />
    </node>
    <node concept="3QKWG5" id="3rXORfo8zkC" role="3QKWGc">
      <ref role="3QKWG4" to="zaie:49jlVpri7XO" resolve="INTEGER" />
    </node>
  </node>
</model>

