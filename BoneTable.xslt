<?xml version="1.0" encoding="UTF-8" ?>

<transform xmlns="http://www.w3.org/1999/XSL/Transform"
           xmlns:b="urn:com.io7m.visual.openpose_rig:bones:1"
           version="2.0">

  <output name="main" encoding="utf-8" method="text"/>

  <template match="b:Bone">
    <value-of select="concat('|',@Index,'|',@Name,'|`',@ColorRGB,'`|')"/>
    <text>&#0010;</text>
  </template>

  <template match="b:Bones">
    <text>|Index|Name|Color (RGB)|</text>
    <text>&#0010;</text>
    <text>|-|-|-|</text>
    <text>&#0010;</text>
    <apply-templates select="b:Bone"/>
  </template>

</transform>