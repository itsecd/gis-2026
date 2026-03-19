<?xml version="1.0" encoding="UTF-8"?>
<StyledLayerDescriptor 
    version="1.0.0"
    xmlns="http://www.opengis.net/sld"
    xmlns:ogc="http://www.opengis.net/ogc"
    xmlns:xlink="http://www.w3.org/1999/xlink"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xsi:schemaLocation="
        http://www.opengis.net/sld 
        http://schemas.opengis.net/sld/1.0.0/StyledLayerDescriptor.xsd">

  <NamedLayer>
    <Name>buildings</Name>
    <UserStyle>
      <Title>Buildings style</Title>

      <FeatureTypeStyle>

        <Rule>
          <Title>My buildings</Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>is_my</ogc:PropertyName>
              <ogc:Literal>true</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>

          <PolygonSymbolizer>
            <Fill>
              <CssParameter name="fill">#ff0000</CssParameter>
            </Fill>
          </PolygonSymbolizer>
        </Rule>

        <Rule>
          <ElseFilter/>
          <PolygonSymbolizer>
            <Fill>
              <CssParameter name="fill">#aaaaaa</CssParameter>
            </Fill>
          </PolygonSymbolizer>
        </Rule>

      </FeatureTypeStyle>
    </UserStyle>
  </NamedLayer>
</StyledLayerDescriptor>