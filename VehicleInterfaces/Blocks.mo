within VehicleInterfaces;
package Blocks "Collection of input/output fixed causality blocks"
  extends Modelica.Icons.Package;
  model RealPassThrough "Pass a Real signal through without modification"

    extends Modelica.Blocks.Interfaces.BlockIcon;

    Modelica.Blocks.Interfaces.RealInput u "Input signal"
      annotation (Placement(transformation(extent={{-140,-20},{-100,20}})));
    Modelica.Blocks.Interfaces.RealOutput y "Output signal"
      annotation (Placement(transformation(extent={{100,-10},{120,10}})));
  equation
    y = u;

    annotation (                      Documentation(info="<html>
<p>Passes a Real signal through without modification.  Enables signals to be read out of one bus, have their name changed and be sent back to a bus.</p>
</html>"));
  end RealPassThrough;

  model IntegerPassThrough "Pass a Integer signal through without modification"
    extends Modelica.Blocks.Interfaces.IntegerBlockIcon;

    Modelica.Blocks.Interfaces.IntegerInput u "Input signal"
      annotation (Placement(transformation(extent={{-140,-20},{-100,20}})));
    Modelica.Blocks.Interfaces.IntegerOutput y "Output signal"
      annotation (Placement(transformation(extent={{100,-10},{120,10}})));
  equation
    y = u;

    annotation (                      Documentation(info="<html>
<p>Passes a Integer signal through without modification.  Enables signals to be read out of one bus, have their name changed and be sent back to a bus.</p>
</html>"));
  end IntegerPassThrough;

  model BooleanPassThrough "Pass a Boolean signal through without modification"
    extends Modelica.Blocks.Interfaces.BooleanBlockIcon;

    Modelica.Blocks.Interfaces.BooleanInput u "Input signal"
      annotation (Placement(transformation(extent={{-140,-20},{-100,20}})));
    Modelica.Blocks.Interfaces.BooleanOutput y "Output signal"
      annotation (Placement(transformation(extent={{100,-10},{120,10}})));
  equation
    y = u;

    annotation (                         Documentation(info="<html>
<p>Passes a Boolean signal through without modification.  Enables signals to be read out of one bus, have their name changed and be sent back to a bus.</p>
</html>"));
  end BooleanPassThrough;

  block InvertNormalizedInput
    "Output the normalized input signal u [0..1] in inverted form y [1..0]."
    extends Modelica.Blocks.Interfaces.SISO;
  equation
    y = 1 - u;

    annotation (
      Icon(coordinateSystem(
          preserveAspectRatio=false,
          extent={{-100,-100},{100,100}},
          grid={2,2}), graphics={
          Polygon(
            points={{88,-78},{66,-70},{66,-86},{88,-78}},
            lineColor={192,192,192},
            fillColor={192,192,192},
            fillPattern=FillPattern.Solid),
          Line(points={{-80,-90},{-80,68}}, color={192,192,192}),
          Polygon(
            points={{-80,90},{-88,68},{-72,68},{-80,90}},
            lineColor={192,192,192},
            fillColor={192,192,192},
            fillPattern=FillPattern.Solid),
          Text(
            extent={{-74,54},{-4,30}},
            lineColor={95,95,95},
            textString="0..1"),
          Line(points={{-90,-78},{76,-78}}, color={192,192,192}),
          Line(
            points={{-80,22},{32,-78}}),
          Text(
            extent={{28,54},{98,30}},
            lineColor={95,95,95},
            textString="1..0"),
          Polygon(
            points={{-8,42},{28,42},{16,46},{16,38},{28,42},{-8,42}},
            lineColor={0,0,0},
            fillColor={0,0,0},
            fillPattern=FillPattern.Solid)}),
      Diagram(coordinateSystem(
          preserveAspectRatio=false,
          extent={{-100,-100},{100,100}},
          grid={2,2}), graphics={
          Line(points={{-86,0},{76,0}}, color={135,135,135}),
          Polygon(
            points={{92,0},{76,6},{76,-6},{92,0}},
            lineColor={192,192,192},
            fillColor={95,95,95},
            fillPattern=FillPattern.Solid),
          Line(points={{-58,-24},{-58,78}}, color={135,135,135}),
          Polygon(
            points={{-58,92},{-66,70},{-50,70},{-58,92}},
            lineColor={192,192,192},
            fillColor={95,95,95},
            fillPattern=FillPattern.Solid),
          Text(
            extent={{-53,98},{-26,78}},
            lineColor={160,160,164},
            fillColor={95,95,95},
            fillPattern=FillPattern.Solid,
            textString="u"),
          Text(
            extent={{74,-8},{96,-28}},
            lineColor={95,95,95},
            textString="y"),
          Text(extent={{18,-7},{38,-27}}, textString="1"),
          Text(extent={{-92,77},{-72,57}}, textString="1"),
          Line(
            points={{-58,64},{26,0}})}),
      Documentation(info="<html>
<p>
This block is used to invert a normalized input signal u from [0..1] to [1..0].
Formally, the output <b>y</b> is computed as:
</p>
<pre>
    y = 1 - u;
</pre>

</html>"));
  end InvertNormalizedInput;

  annotation (Documentation(info="<html>
<p>
A collection of additional input and output fixed causality blocks.</p>
</html>"));
end Blocks;
